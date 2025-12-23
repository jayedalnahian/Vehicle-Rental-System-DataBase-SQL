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









