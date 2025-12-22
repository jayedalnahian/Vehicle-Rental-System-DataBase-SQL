create extension if not exists pgcrypto;


create table users(
  user_id uuid primary key default gen_random_uuid(),
  u_name varchar(100) not null,
  email varchar(150) unique not null,
  phone varchar(20) unique not null,
  u_role varchar(20) check (u_role in ('admin','customer')) not null,
  u_password varchar(255) not null
);



create table vehicles(
  vehicle_id uuid primary key default gen_random_uuid(),
  v_name varchar(100) not null,
  v_type varchar(50) not null,
  model varchar(150) not null,
  registration_number varchar(60) not null unique,
  rental_price decimal(10, 2) not null,
  status varchar(20) check (status in ('available', 'rented', 'maintenance')) not null
);

create table bookings(
  booking_id uuid primary key default gen_random_uuid(),
  user_id uuid references users(user_id) on delete cascade not null,
  vehicle_id uuid references vehicles(vehicle_id) on delete cascade not null,
  start_date date not null,
  end_date date not null,
  status varchar(30) check (status in ('pending', 'confirmed', 'completed', 'cancelled')) not null,
  total_cost decimal(10, 2) not null
);
