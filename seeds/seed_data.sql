INSERT INTO users (u_name, email, phone, u_role, u_password)
VALUES
('Aminul Islam', 'aminul.islam@example.com', '01710000006', 'customer', '$2b$10$aminulpass'),
('Sadia Rahman', 'sadia.rahman@example.com', '01710000007', 'customer', '$2b$10$sadiapass'),
('Hasan Mahmud', 'hasan.mahmud@example.com', '01710000008', 'customer', '$2b$10$hasanpass'),
('Nusrat Jahan', 'nusrat.jahan@example.com', '01710000009', 'customer', '$2b$10$nusratpass'),
('Tanvir Ahmed', 'tanvir.ahmed@example.com', '01710000010', 'customer', '$2b$10$tanvirpass'),

('Mehedi Hasan', 'mehedi.hasan@example.com', '01710000011', 'customer', '$2b$10$mehedipass'),
('Farzana Akter', 'farzana.akter@example.com', '01710000012', 'customer', '$2b$10$farzanapass'),
('Rafiul Islam', 'rafiul.islam@example.com', '01710000013', 'customer', '$2b$10$rafiulpass'),
('Shahin Alam', 'shahin.alam@example.com', '01710000014', 'customer', '$2b$10$shahinpass'),
('Mim Chowdhury', 'mim.chowdhury@example.com', '01710000015', 'customer', '$2b$10$mimpass'),

('Arif Hossain', 'arif.hossain@example.com', '01710000016', 'customer', '$2b$10$arifpass'),
('Nayeem Hasan', 'nayeem.hasan@example.com', '01710000017', 'customer', '$2b$10$nayeempass'),
('Jannatul Ferdous', 'jannatul.ferdous@example.com', '01710000018', 'customer', '$2b$10$jannatulpass'),
('Sabbir Rahman', 'sabbir.rahman@example.com', '01710000019', 'customer', '$2b$10$sabbirpass'),
('Tania Sultana', 'tania.sultana@example.com', '01710000020', 'customer', '$2b$10$taniapass'),

('Admin Two', 'admin2@example.com', '01710000021', 'admin', '$2b$10$admin2pass'),
('Admin Three', 'admin3@example.com', '01710000022', 'admin', '$2b$10$admin3pass'),
('Fahim Khan', 'fahim.khan@example.com', '01710000023', 'customer', '$2b$10$fahimpass'),
('Sumaiya Islam', 'sumaiya.islam@example.com', '01710000024', 'customer', '$2b$10$sumaiyapass'),
('Imran Hossain', 'imran.hossain@example.com', '01710000025', 'customer', '$2b$10$imranpass');








INSERT INTO vehicles (v_name, v_type, model, registration_number, rental_price, status)
VALUES
('Toyota Corolla', 'Sedan', '2020', 'BD-01-1001', 50.00, 'available'),
('Honda Civic', 'Sedan', '2019', 'BD-01-1002', 55.00, 'available'),
('Suzuki Swift', 'Hatchback', '2021', 'BD-01-1003', 40.00, 'rented'),
('Mitsubishi Pajero', 'SUV', '2018', 'BD-01-1004', 80.00, 'maintenance'),
('Nissan X-Trail', 'SUV', '2020', 'BD-01-1005', 75.00, 'available'),
('Ford Ranger', 'Pickup', '2019', 'BD-01-1006', 90.00, 'rented'),
('Toyota Hilux', 'Pickup', '2021', 'BD-01-1007', 95.00, 'available'),
('Hyundai Tucson', 'SUV', '2022', 'BD-01-1008', 85.00, 'available'),
('Kia Sportage', 'SUV', '2020', 'BD-01-1009', 80.00, 'available'),
('Honda HR-V', 'SUV', '2019', 'BD-01-1010', 70.00, 'maintenance'),
('Toyota Prius', 'Sedan', '2021', 'BD-01-1011', 60.00, 'available'),
('Suzuki Alto', 'Hatchback', '2018', 'BD-01-1012', 35.00, 'rented'),
('Mitsubishi Outlander', 'SUV', '2022', 'BD-01-1013', 85.00, 'available'),
('Ford Mustang', 'Coupe', '2020', 'BD-01-1014', 120.00, 'available'),
('BMW X5', 'SUV', '2021', 'BD-01-1015', 150.00, 'maintenance'),
('Audi A4', 'Sedan', '2019', 'BD-01-1016', 95.00, 'available'),
('Mercedes C-Class', 'Sedan', '2020', 'BD-01-1017', 100.00, 'rented'),
('Nissan Juke', 'Hatchback', '2021', 'BD-01-1018', 55.00, 'available'),
('Hyundai Elantra', 'Sedan', '2022', 'BD-01-1019', 65.00, 'available'),
('Kia Picanto', 'Hatchback', '2018', 'BD-01-1020', 30.00, 'available');





INSERT INTO bookings (user_id, vehicle_id, start_date, end_date, status, total_cost)
VALUES
-- Booking 1
('86d08296-abf2-4a19-945c-d505c1b32958', 'fc4d2c18-d666-465f-b9f8-fb69772e9558', '2025-12-01', '2025-12-05', 'completed', 250.00),
-- Booking 2
('46bc7fea-0ae9-4af7-9c24-781ccfe49b45', '6858d8fb-08b5-4c99-9cb8-648bbc354804', '2025-12-03', '2025-12-06', 'confirmed', 165.00),
-- Booking 3
('0b98b8c6-239d-49fd-84c8-dd37a630c4eb', '89031643-dbb7-4688-b91a-c7a3126c32ea', '2025-12-05', '2025-12-07', 'cancelled', 80.00),
-- Booking 4
('2e699aa8-114d-4b7f-8cd7-5dd6029b8049', '36599afb-9fe4-41e1-aba0-f0c112f81481', '2025-12-02', '2025-12-04', 'confirmed', 160.00),
-- Booking 5
('af1472d8-235d-42f7-bfce-a1f81e577415', 'ae67f043-7ffe-4203-8716-704376dfcd89', '2025-12-06', '2025-12-10', 'pending', 375.00),
-- Booking 6
('6372eae7-4133-4720-b190-4d72522cc41e', '212d0f10-3bf3-483f-afcc-fdd2e122866d', '2025-12-01', '2025-12-03', 'completed', 180.00),
-- Booking 7
('f19c9cf4-9216-4579-b31b-0665a0546330', '16966c76-9f64-4e2e-b1fb-943c635ff34b', '2025-12-08', '2025-12-12', 'confirmed', 380.00);