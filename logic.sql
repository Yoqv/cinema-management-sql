/* Returns the total number of seats in a specific hall 
*/
CREATE OR REPLACE FUNCTION get_hall_max_seats_amount(in_hall_id IN NUMBER) 
RETURN NUMBER
IS max_seats_amount NUMBER(11, 2);
BEGIN
    SELECT seats_amount
    INTO max_seats_amount
    FROM Halls
    WHERE hall_id = in_hall_id;
    RETURN(max_seats_amount);
END;

/* Returns the total sales amount for a specific food item. 
   Returns NULL if no sales were recorded.
*/
CREATE OR REPLACE FUNCTION get_sum_of_food_sales(in_food_id IN NUMBER) 
RETURN NUMBER
IS sales_sum NUMBER(11, 2);
BEGIN
    SELECT sum(amount)
    INTO sales_sum
    FROM FoodSales
    GROUP BY food_id
    HAVING food_id = in_food_id;
    RETURN(sales_sum);
END;

/* Retrieve all data for movies that never filled more than 50% of the hall capacity 
*/
SELECT * FROM Movies WHERE movie_id IN 
(
    (SELECT movie_id FROM ShownMovies WHERE sold_tickets_amount < 0.5 * get_hall_max_seats_amount(hall_id) 
    AND 
    movie_id NOT IN (SELECT movie_id FROM ShownMovies WHERE sold_tickets_amount >= 0.5 * get_hall_max_seats_amount(hall_id)))
);

/* Identify which genres customers prefer to watch during their birth month 
*/
SELECT genre FROM Movies WHERE movie_id IN 
(
    SELECT movie_id FROM ShownMovies 
    JOIN MemberOrders ON ShownMovies.shown_movie_id = MemberOrders.shown_movie_id 
    WHERE to_char(shown_date, 'MM') = 
    (
        SELECT to_char(birth_date, 'MM') FROM ClubMembers 
        WHERE ClubMembers.member_id = MemberOrders.member_id
    )
);

/* Identify the best selling movie in each branch 
*/
SELECT Branches.branch_id, Movies.movie_name 
FROM ShownMovies 
JOIN Halls ON ShownMovies.hall_id = Halls.hall_id 
JOIN Branches ON Halls.branch_id = Branches.branch_id 
JOIN Movies ON Movies.movie_id = ShownMovies.movie_id 
WHERE (Branches.branch_id, ShownMovies.sold_tickets_amount) IN 
(
    SELECT Branches.branch_id, max(ShownMovies.sold_tickets_amount) 
    FROM ShownMovies 
    JOIN Halls ON ShownMovies.hall_id = Halls.hall_id 
    JOIN Branches ON Halls.branch_id = Branches.branch_id 
    GROUP BY Branches.branch_id
)
GROUP BY Branches.branch_id, Movies.movie_name;

/* Find pairs of branches located in the same city that have different total ticket sales 
*/
SELECT Branches.branch_id, Branches.city, sum(sold_tickets_amount) 
FROM ShownMovies 
JOIN Halls ON ShownMovies.hall_id = Halls.hall_id 
JOIN Branches ON Halls.branch_id = Branches.branch_id 
WHERE Branches.branch_id IN
(
    SELECT A.branch_id FROM Branches A 
    JOIN Branches B ON A.city = B.city AND A.branch_id != B.branch_id
)
GROUP BY Branches.branch_id, Branches.city;

/* Identify branches selling fewer tickets than the overall average 
*/
SELECT branch_id, sum(sold_tickets_amount) 
FROM ShownMovies 
JOIN Halls ON ShownMovies.hall_id = Halls.hall_id 
JOIN Branches ON Halls.branch_id = Branches.branch_id 
JOIN Movies ON Movies.movie_id = ShownMovies.movie_id
GROUP BY branch_id
HAVING sum(sold_tickets_amount) < (SELECT avg(sold_tickets_amount) FROM ShownMovies);

/* List food items with below average sales volume 
*/
SELECT food_name, get_sum_of_food_sales(food_id) 
FROM Foods 
GROUP BY food_id, food_name
HAVING get_sum_of_food_sales(food_id) IS NULL 
OR get_sum_of_food_sales(food_id) < (SELECT avg(amount) FROM FoodSales);

/* Identify halls that consistently maintain 90% or higher occupancy 
*/
SELECT hall_id FROM ShownMovies 
WHERE sold_tickets_amount >= 0.9 * get_hall_max_seats_amount(hall_id)  
AND hall_id NOT IN 
(
    SELECT hall_id FROM ShownMovies 
    WHERE sold_tickets_amount < 0.9 * get_hall_max_seats_amount(hall_id)
);

/* View: Calculate monthly revenue from food sales 
*/
CREATE OR REPLACE VIEW FoodsMoney(sale_date, money_amount) AS  
SELECT sale_date, amount * food_price AS money_amount 
FROM FoodSales JOIN Foods ON FoodSales.food_id = Foods.food_id;

SELECT TO_CHAR(sale_date, 'MM/YYYY'), sum(money_amount) 
FROM FoodsMoney
GROUP BY TO_CHAR(sale_date, 'MM/YYYY')
ORDER BY TO_CHAR(sale_date, 'MM/YYYY');

/* View: Calculate monthly revenue from ticket sales, 
   applying discounts for club members and special birthday offers 
*/
CREATE OR REPLACE VIEW TicketsMoney(shown_date, money_amount) AS  
SELECT shown_date, 
CASE
    WHEN TO_CHAR(shown_date, 'DD/MM') = TO_CHAR(birth_date, 'DD/MM') THEN
        ((sold_tickets_amount - MemberOrders.tickets_amount) * ticket_price) + (MemberOrders.tickets_amount * ticket_price * 0.25) 
    ELSE 
        ((sold_tickets_amount - MemberOrders.tickets_amount) * ticket_price) + (MemberOrders.tickets_amount * ticket_price * 0.5) 
END AS money_amount
FROM ShownMovies 
JOIN Halls ON ShownMovies.hall_id = Halls.hall_id 
JOIN HallTypes ON Halls.hall_type = HallTypes.hall_type
JOIN MemberOrders ON ShownMovies.shown_movie_id = MemberOrders.shown_movie_id 
JOIN ClubMembers ON MemberOrders.member_id = ClubMembers.member_id;

SELECT TO_CHAR(shown_date, 'MM/YYYY'), sum(money_amount) 
FROM TicketsMoney
GROUP BY TO_CHAR(shown_date, 'MM/YYYY')
ORDER BY TO_CHAR(shown_date, 'MM/YYYY');