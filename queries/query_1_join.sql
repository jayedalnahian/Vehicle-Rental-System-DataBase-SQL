select
  b.booking_id,
  b.user_id,
  b.vehicle_id,
  b.start_date,
  b.end_date,
  b.status,
  b.total_cost,
  u.u_name as userName,
  v.v_name as vehicleName
from
  bookings as b
  inner join users as u on u.user_id = b.user_id
  inner join vehicles as v on v.vehicle_id = b.vehicle_id;