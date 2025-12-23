# 🚗 Vehicle Rental System – Database Design & SQL Queries

## 📌 Overview & Objectives

This project demonstrates the database design and SQL querying skills required to build a **Vehicle Rental System**.  
It focuses on understanding **ERD design**, **table relationships**, and **core SQL concepts** such as `JOIN`, `EXISTS`, `WHERE`, `GROUP BY`, and `HAVING`.

By completing this assignment, I demonstrate my ability to:

- Design an ERD with correct relationships
- Use primary keys and foreign keys properly
- Write SQL queries for real-world business scenarios
- Apply database constraints and business logic

---

## 🗂️ Database Design & Business Logic

The system manages three main entities:

- **Users**
- **Vehicles**
- **Bookings**


![Vehicle Rental System ERD](./ERD.png)


### 🔑 Business Rules Supported

#### Users Table
- Stores user role (`admin` or `customer`)
- Stores name, email, password, phone number
- Email must be **unique**

#### Vehicles Table
- Stores vehicle name, type (car/bike/truck), model
- Registration number must be **unique**
- Rental price per day
- Availability status (`available`, `rented`, `maintenance`)

#### Bookings Table
- Links users and vehicles
- Stores rental start and end date
- Booking status (`pending`, `confirmed`, `completed`, `cancelled`)
- Stores total rental cost

---

## 🧩 Part 1: ERD Design (Mandatory)

### 📐 Entity Relationship Diagram (ERD)

The ERD includes the following tables:

- **Users**
- **Vehicles**
- **Bookings**

### 🔗 Relationships

- **One-to-Many**: One user can have many bookings
- **Many-to-One**: Many bookings can belong to one vehicle
- **Logical One-to-One**: Each booking links one user and one vehicle

### 🏷️ ERD Includes

- Primary Keys (PK)
- Foreign Keys (FK)
- Relationship cardinality
- Status fields for vehicles and bookings

📎 **ERD Tool Used:** Lucidchart  
🔗 **Public ERD Link:** *(Attach your Lucidchart link here)*

---

## 🧪 Part 2: SQL Queries

### ✅ Query 1: JOIN  
**Retrieve booking details with customer name and vehicle name**

```sql
SELECT
  b.booking_id,
  u.u_name AS customer_name,
  v.v_name AS vehicle_name,
  b.start_date,
  b.end_date,
  b.status,
  b.total_cost
FROM bookings b
INNER JOIN users u ON u.user_id = b.user_id
INNER JOIN vehicles v ON v.vehicle_id = b.vehicle_id;
```

### ✅ Query 2: EXISTS

**Find vehicles that have never been booked**
```sql
SELECT *
FROM vehicles v
WHERE NOT EXISTS (
  SELECT 1
  FROM bookings b
  WHERE b.vehicle_id = v.vehicle_id
);
```




## ✅ Query 3: WHERE

**Retrieve all available vehicles of a specific type (e.g. car)**

``` sql
SELECT *
FROM vehicles
WHERE status = 'available'
AND v_type = 'car';
```

### ✅ Query 4: GROUP BY & HAVING

**Find vehicles with more than 2 bookings**

``` sql
SELECT
  v.v_name,
  COUNT(b.booking_id) AS total_bookings
FROM bookings b
JOIN vehicles v ON v.vehicle_id = b.vehicle_id
GROUP BY v.v_name
HAVING COUNT(b.booking_id) > 2;
```

## 🎤 Part 3: Theory Questions (Viva Practice)
### ❓ Question 1

**What is a foreign key and why is it important?**

A foreign key is a column that references the primary key of another table.
It ensures data integrity by maintaining correct relationships between tables and prevents invalid data insertion.

### ❓ Question 2

**Difference between WHERE and HAVING**

WHERE filters rows before grouping

HAVING filters grouped data after aggregation

### ❓ Question 3

**What is a primary key and its characteristics?**

A primary key uniquely identifies each row in a table.
Characteristics:

Must be unique

Cannot be NULL

Only one primary key per table

### ❓ Question 4

**Difference between INNER JOIN and LEFT JOIN**

INNER JOIN returns only matching rows from both tables

LEFT JOIN returns all rows from the left table, even if no match exists in the right table

## ✅ Conclusion

This project successfully demonstrates:

Proper database normalization

Clear ERD design

Real-world SQL queries

Understanding of relational database concepts

# 👤 Author

**Name:** Jayed Al Nahian  
**Project:** Vehicle Rental System Database  
**Database:** PostgreSQL  

🔗 **GitHub Repository:**  
https://github.com/jayedalnahian/Vehicle-Rental-System-DataBase-SQL 

📊 **ERD (Lucidchart Public Link):**  
https://drawsql.app/teams/jayed-al-nahian/diagrams/vehicle-rental-system








