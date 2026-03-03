# 🎬 Cinema Management System (Oracle SQL)

## 📌 Project Overview

This project provides a comprehensive database solution for managing a cinema chain's daily operations. It handles everything from branch logistics and movie scheduling to club member loyalty programs and food concessions sales.

The system is designed to provide actionable business insights while maintaining high data integrity through advanced relational constraints.
📊 Database Architecture
Entity-Relationship Diagram (ERD)

The schema consists of 8 interconnected tables, optimized for relational consistency and efficient querying.

<img width="1385" height="619" alt="תמונה" src="https://github.com/user-attachments/assets/56b5f384-6401-4c65-a0a6-273ef2b9d77e" />


## 🛠️ Key Technical Features

1. Complex Business Logic
Implemented automated revenue calculation using Views and CASE statements. The system dynamically calculates ticket prices by applying:

    Membership Discounts: 50% off for registered club members.
    Birthday Special Offers: 75% off (paying only 25%) if the screening falls on the member's birthday.

2. Advanced Data Analytics

Developed analytical queries to assist management in decision-making:

    Performance Tracking: Identifying "Underperforming Movies" (those filling less than 50% of hall capacity).
    Consumer Behavior: Analyzing genre popularity based on customer demographics and birth months.
    Branch Comparison: Evaluating sales performance between different branches within the same city.

3. Modular & Scalable Design

Used PL/SQL Functions to create reusable logic, such as:

    get_hall_max_seats_amount: A helper function to fetch capacity for occupancy calculations.
    get_sum_of_food_sales: A centralized way to track inventory movement.

## 📂 Repository Structure

    schema.sql: Table definitions, primary keys, and foreign key relationships.
    data.sql: Comprehensive DML script with sample records for testing.
    logic.sql: The "brain" of the project—containing all Functions, Views, and Analytical Queries.
