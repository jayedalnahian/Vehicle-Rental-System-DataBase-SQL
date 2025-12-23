select
  v.v_name,
  count(b.booking_id) as total_bookings
from
  bookings b
  join vehicles v on v.vehicle_id = b.vehicle_id
group by
  v.v_name
having
  count(b.booking_id) > 2;