CREATE TABLE Foods
(
    food_id integer,
    food_name varchar(50), 
    food_price number,
    PRIMARY KEY (food_id)
);

CREATE TABLE Branches
(
    branch_id integer,
    street varchar(50), 
    street_number integer,
    city varchar(50),
    PRIMARY KEY (branch_id)
);

CREATE TABLE FoodSales
(
    branch_id integer references Branches(branch_id),
    food_id integer references Foods(food_id),
    sale_date date,
    amount integer
);


CREATE TABLE HallTypes
(
    hall_type varchar(50),
    ticket_price number,
    PRIMARY KEY (hall_type)
);

CREATE TABLE Halls
(
    hall_id integer,
    hall_type varchar(50) references HallTypes(hall_type),
    seats_amount integer,
    branch_id integer references Branches(branch_id),
    PRIMARY KEY (hall_id)
);


CREATE TABLE Movies
(
    movie_id integer,
    movie_name varchar(50),
    genre varchar(50),
    release_date date,
    PRIMARY KEY (movie_id)
);



CREATE TABLE ClubMembers
(
    member_id integer,
    first_name varchar(50),
    last_name varchar(50),
    join_date date,
    birth_date date,
    PRIMARY KEY (member_id)
);

CREATE TABLE ShownMovies
(
    shown_movie_id integer,
    movie_id integer references Movies(movie_id),
    hall_id integer references Halls(hall_id),
    shown_date date,
    sold_tickets_amount integer,
    PRIMARY KEY (shown_movie_id)
);

CREATE TABLE MemberOrders
(
    shown_movie_id integer references ShownMovies(shown_movie_id),
    member_id integer references ClubMembers(member_id),
    tickets_amount integer
);





