

INSERT ALL
 INTO Foods(food_id, food_name, food_price) values (1, 'Popcorn', 30)
 INTO Foods(food_id, food_name, food_price) values (2, 'Nachos', 28)
 INTO Foods(food_id, food_name, food_price) values (3, 'Chips', 7)
 INTO Foods(food_id, food_name, food_price) values (4, 'Coca Cola', 12)
 INTO Foods(food_id, food_name, food_price) values (5, 'Fuze Tea', 12)
 INTO Foods(food_id, food_name, food_price) values (6, 'Bamba', 9)
 INTO Foods(food_id, food_name, food_price) values (7, 'Doritos', 9)
 INTO Foods(food_id, food_name, food_price) values (8, 'Chocolate', 12)
 INTO Foods(food_id, food_name, food_price) values (9, 'Water', 9)
 INTO Foods(food_id, food_name, food_price) values (10, 'Ice Cream', 13)
SELECT * FROM dual;




INSERT ALL
 INTO Branches(branch_id, street, street_number, city) values (1, 'Aba Hillel Silver', 301, 'Ramat Gan')
 INTO Branches(branch_id, street, street_number, city) values (2, 'Hameah Vesrim', 24, 'Rishon Lezion')
 INTO Branches(branch_id, street, street_number, city) values (3, 'Medinat Hayehudim', 91, 'Herzliya')
 INTO Branches(branch_id, street, street_number, city) values (4, 'Yaldei Teheran', 5, 'Rishon Lezion')
 INTO Branches(branch_id, street, street_number, city) values (5, 'Hatayasim', 4, 'Raanana')
 INTO Branches(branch_id, street, street_number, city) values (6, 'Ahuza', 267, 'Raanana')
 INTO Branches(branch_id, street, street_number, city) values (7, 'Sprinzak', 2, 'Tel Aviv-Yafo')
 INTO Branches(branch_id, street, street_number, city) values (8, 'Derech Hevron', 11, 'Jerusalem')
 INTO Branches(branch_id, street, street_number, city) values (9, 'Sderot Hanassi', 142, 'Haifa')
 INTO Branches(branch_id, street, street_number, city) values (10, 'Emek Ayalon', 30, 'Shoham')
SELECT * FROM dual;





INSERT ALL
INTO FoodSales(branch_id, food_id, sale_date, amount) values (1, 1, TO_DATE('15/03/2021', 'DD/MM/YYYY'), 20)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (1, 1, TO_DATE('16/03/2021', 'DD/MM/YYYY'), 13)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (3, 1, TO_DATE('15/03/2021', 'DD/MM/YYYY'), 7)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (1, 2, TO_DATE('15/03/2021', 'DD/MM/YYYY'), 10)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (2, 1, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 3)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (3, 10, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 1)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (2, 9, TO_DATE('13/10/2021', 'DD/MM/YYYY'), 10)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (1, 5, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 2)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (2, 5, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 2)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (3, 1, TO_DATE('13/10/2021', 'DD/MM/YYYY'), 5)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (1, 1, TO_DATE('13/10/2021', 'DD/MM/YYYY'), 10)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (4, 1, TO_DATE('15/03/2021', 'DD/MM/YYYY'), 20)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (4, 1, TO_DATE('16/03/2021', 'DD/MM/YYYY'), 13)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (4, 3, TO_DATE('13/10/2021', 'DD/MM/YYYY'), 10)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (5, 4, TO_DATE('15/03/2021', 'DD/MM/YYYY'), 10)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (5, 7, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 2)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (5, 6, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 3)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (6, 5, TO_DATE('13/10/2021', 'DD/MM/YYYY'), 10)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (6, 5, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 2)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (3, 2, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 1)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (7, 8, TO_DATE('13/10/2021', 'DD/MM/YYYY'), 5)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (7, 10, TO_DATE('15/03/2021', 'DD/MM/YYYY'), 7)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (8, 1, TO_DATE('15/03/2021', 'DD/MM/YYYY'), 20)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (8, 1, TO_DATE('16/03/2021', 'DD/MM/YYYY'), 13)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (8, 1, TO_DATE('13/10/2021', 'DD/MM/YYYY'), 10)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (9, 5, TO_DATE('15/03/2021', 'DD/MM/YYYY'), 10)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (9, 3, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 2)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (9, 4, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 3)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (10, 3, TO_DATE('13/10/2021', 'DD/MM/YYYY'), 10)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (10, 4, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 2)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (10, 3, TO_DATE('07/07/2021', 'DD/MM/YYYY'), 1)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (10, 2, TO_DATE('13/10/2021', 'DD/MM/YYYY'), 5)
INTO FoodSales(branch_id, food_id, sale_date, amount) values (10, 2, TO_DATE('15/03/2021', 'DD/MM/YYYY'), 7)
SELECT * FROM dual;



INSERT ALL
 INTO HallTypes(hall_type, ticket_price) values ('Normal', 40)
 INTO HallTypes(hall_type, ticket_price) values ('VIP', 80)
SELECT * FROM dual;



INSERT ALL
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (1, 'Normal', 50, 1)
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (2, 'Normal', 60, 1)

 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (3, 'Normal', 30, 2)
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (4, 'Normal', 70, 2)

 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (5, 'Normal', 60, 3)
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (6, 'VIP', 40, 3)

 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (7, 'Normal', 50, 4)
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (8, 'Normal', 50, 4)

 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (9, 'Normal', 60, 5)
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (10, 'VIP', 40, 5)

 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (11, 'Normal', 20, 6)
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (12, 'Normal', 30, 6)

 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (13, 'VIP', 30, 7)
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (14, 'Normal', 70, 7)

 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (15, 'Normal', 60, 8)
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (16, 'VIP', 40, 8)

 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (17, 'Normal', 50, 9)
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (18, 'Normal', 50, 9)

 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (19, 'Normal', 60, 10)
 INTO Halls(hall_id, hall_type, seats_amount, branch_id) values (20, 'VIP', 40, 10)
SELECT * FROM dual;




INSERT ALL
 INTO Movies(movie_id, movie_name, genre, release_date) values (1, '(Spider-Man: No Way Home)', 'Action/Adventure', TO_DATE('15/03/2021', 'DD/MM/YYYY'))
 INTO Movies(movie_id, movie_name, genre, release_date) values (2, 'Eternals', 'Action/Adventure', TO_DATE('23/10/2021', 'DD/MM/YYYY'))
 INTO Movies(movie_id, movie_name, genre, release_date) values (3, 'Free Guy', 'Comedy/Action/Adventure', TO_DATE('24/6/2021', 'DD/MM/YYYY'))
 INTO Movies(movie_id, movie_name, genre, release_date) values (4, 'No Time To Die', 'Action', TO_DATE('1/1/2021', 'DD/MM/YYYY'))
 INTO Movies(movie_id, movie_name, genre, release_date) values (5, 'Nobody', 'Crime/Action/Thriller', TO_DATE('1/5/2021', 'DD/MM/YYYY'))
 INTO Movies(movie_id, movie_name, genre, release_date) values (6, 'Joker', 'Crime/Drama', TO_DATE('1/1/2021', 'DD/MM/YYYY'))
 INTO Movies(movie_id, movie_name, genre, release_date) values (7, 'Dune', 'Science Fiction/Adventure', TO_DATE('27/2/2021', 'DD/MM/YYYY'))
 INTO Movies(movie_id, movie_name, genre, release_date) values (8, 'Old', 'Horror/Thriller', TO_DATE('27/2/2021', 'DD/MM/YYYY'))
 INTO Movies(movie_id, movie_name, genre, release_date) values (9, 'The Tomorrow War', 'Action/Science Fiction', TO_DATE('27/2/2021', 'DD/MM/YYYY'))
 INTO Movies(movie_id, movie_name, genre, release_date) values (10, 'Deadpool', 'Comedy/Action', TO_DATE('1/1/2021', 'DD/MM/YYYY'))
SELECT * FROM dual;




INSERT ALL
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (1, 10, 16, TO_DATE('21/10/2021', 'DD/MM/YYYY'), 36)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (2, 4, 5, TO_DATE('18/09/2021', 'DD/MM/YYYY'), 58)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (3, 7, 6, TO_DATE('18/09/2021', 'DD/MM/YYYY'), 19)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (4, 3, 8, TO_DATE('25/06/2021', 'DD/MM/YYYY'), 20)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (5, 4, 5, TO_DATE('06/05/2021', 'DD/MM/YYYY'), 41)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (6, 6, 7, TO_DATE('15/07/2021', 'DD/MM/YYYY'), 47)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (7, 5, 17, TO_DATE('17/08/2021', 'DD/MM/YYYY'), 44)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (8, 6, 17, TO_DATE('03/04/2021', 'DD/MM/YYYY'), 25)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (9, 3, 19, TO_DATE('18/11/2021', 'DD/MM/YYYY'), 10)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (10, 7, 19, TO_DATE('01/11/2021', 'DD/MM/YYYY'), 25)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (11, 5, 1, TO_DATE('15/10/2021', 'DD/MM/YYYY'), 14)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (12, 5, 19, TO_DATE('16/05/2021', 'DD/MM/YYYY'), 40)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (13, 2, 11, TO_DATE('10/12/2021', 'DD/MM/YYYY'), 12)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (14, 5, 15, TO_DATE('03/11/2021', 'DD/MM/YYYY'), 9)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (15, 3, 8, TO_DATE('25/06/2021', 'DD/MM/YYYY'), 7)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (16, 8, 11, TO_DATE('24/12/2021', 'DD/MM/YYYY'), 9)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (17, 9, 10, TO_DATE('08/09/2021', 'DD/MM/YYYY'), 40)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (18, 8, 2, TO_DATE('14/07/2021', 'DD/MM/YYYY'), 26)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (19, 9, 7, TO_DATE('01/07/2021', 'DD/MM/YYYY'), 40)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (20, 7, 12, TO_DATE('03/08/2021', 'DD/MM/YYYY'), 14)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (21, 1, 16, TO_DATE('21/08/2021', 'DD/MM/YYYY'), 32)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (22, 1, 16, TO_DATE('25/08/2021', 'DD/MM/YYYY'), 29)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (23, 5, 3, TO_DATE('20/05/2021', 'DD/MM/YYYY'), 5)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (24, 8, 3, TO_DATE('28/02/2021', 'DD/MM/YYYY'), 24)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (25, 5, 4, TO_DATE('01/05/2021', 'DD/MM/YYYY'), 42)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (26, 1, 4, TO_DATE('06/07/2021', 'DD/MM/YYYY'), 36)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (27, 8, 4, TO_DATE('10/10/2021', 'DD/MM/YYYY'), 29)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (28, 1, 14, TO_DATE('09/10/2021', 'DD/MM/YYYY'), 60)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (29, 1, 14, TO_DATE('23/06/2021', 'DD/MM/YYYY'), 55)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (30, 6, 13, TO_DATE('09/09/2021', 'DD/MM/YYYY'), 30)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (31, 6, 13, TO_DATE('04/08/2021', 'DD/MM/YYYY'), 30)
INTO ShownMovies(shown_movie_id, movie_id, hall_id, shown_date, sold_tickets_amount) values (32, 7, 13, TO_DATE('20/05/2021', 'DD/MM/YYYY'), 14)
SELECT * FROM dual;




INSERT ALL
 INTO ClubMembers(member_id , first_name, last_name, join_date, birth_date) values (1, 'Steven', 'King', TO_DATE('1/2/2021', 'DD/MM/YYYY'), TO_DATE('3/8/1984', 'DD/MM/YYYY'))
 INTO ClubMembers(member_id , first_name, last_name, join_date, birth_date) values (2, 'Neena', 'Kochhar', TO_DATE('2/2/2021', 'DD/MM/YYYY'), TO_DATE('9/8/1975', 'DD/MM/YYYY'))
 INTO ClubMembers(member_id , first_name, last_name, join_date, birth_date) values (3, 'Lex', 'De Haan', TO_DATE('3/5/2021', 'DD/MM/YYYY'), TO_DATE('1/1/1980', 'DD/MM/YYYY'))
 INTO ClubMembers(member_id , first_name, last_name, join_date, birth_date) values (4, 'Alexander', 'Hunold', TO_DATE('12/9/2021', 'DD/MM/YYYY'), TO_DATE('3/8/1991', 'DD/MM/YYYY'))
 INTO ClubMembers(member_id , first_name, last_name, join_date, birth_date) values (5, 'Bruce', 'Ernst', TO_DATE('13/5/2021', 'DD/MM/YYYY'), TO_DATE('13/7/1991', 'DD/MM/YYYY'))
 INTO ClubMembers(member_id , first_name, last_name, join_date, birth_date) values (6, 'David', 'Austin', TO_DATE('15/2/2021', 'DD/MM/YYYY'), TO_DATE('1/8/1991', 'DD/MM/YYYY'))
 INTO ClubMembers(member_id , first_name, last_name, join_date, birth_date) values (7, 'Valli', 'Pataballa', TO_DATE('1/2/2021', 'DD/MM/YYYY'), TO_DATE('7/8/1990', 'DD/MM/YYYY'))
 INTO ClubMembers(member_id , first_name, last_name, join_date, birth_date) values (8, 'Diana', 'Lorentz', TO_DATE('1/2/2021', 'DD/MM/YYYY'), TO_DATE('6/12/2000', 'DD/MM/YYYY'))
 INTO ClubMembers(member_id , first_name, last_name, join_date, birth_date) values (9, 'Nancy', 'Greenberg', TO_DATE('4/2/2021', 'DD/MM/YYYY'), TO_DATE('3/8/1970', 'DD/MM/YYYY'))
 INTO ClubMembers(member_id , first_name, last_name, join_date, birth_date) values (10, 'Daniel', 'Faviet', TO_DATE('4/5/2021', 'DD/MM/YYYY'), TO_DATE('1/4/2000', 'DD/MM/YYYY'))
SELECT * FROM dual;




INSERT ALL
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(2, 3, 4)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(15, 6, 5)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(17, 3, 1)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(4, 3, 3)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(18, 9, 5)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(10, 3, 3)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(8, 1, 2)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(11, 2, 6)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(8, 6, 2)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(12, 9, 4)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(15, 2, 7)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(21, 1, 3)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(21, 2, 2)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(22, 9, 5)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(16, 8, 3)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(14, 2, 5)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(31, 4, 2)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(5, 8, 4)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(30, 6, 2)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(7, 1, 4)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(21, 6, 6)
 INTO MemberOrders(shown_movie_id, member_id, tickets_amount) values(20, 4, 6)
SELECT * FROM dual;


