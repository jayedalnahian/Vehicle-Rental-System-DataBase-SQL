select vehicle_id, v_name as name, v_type as type, model, registration_number, rental_price, status from vehicles v where not exists (
  select * from bookings b where b.vehicle_id = v.vehicle_id
)