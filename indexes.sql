CREATE INDEX flight_departure_airport ON postgres_air.flight  (departure_airport);
CREATE INDEX flight_arrival_airport ON postgres_air.flight  (arrival_airport);
CREATE INDEX flight_actual_departure ON postgres_air.flight  (actual_departure);
CREATE INDEX flight_update_ts ON postgres_air.flight  (update_ts);
CREATE INDEX flight_canceled ON postgres_air.flight  (flight_id) WHERE (status = 'Canceled'::text);
CREATE INDEX flight_actual_departure_not_null ON postgres_air.flight  (actual_departure) WHERE (actual_departure IS NOT NULL);
CREATE INDEX flight_depart_arr_sched_dep ON postgres_air.flight  (departure_airport, arrival_airport, scheduled_departure);
CREATE INDEX airport_city ON postgres_air.airport  (city);
CREATE INDEX booking_leg_booking_id ON postgres_air.booking_leg  (booking_id);
CREATE INDEX booking_leg_update_ts ON postgres_air.booking_leg  (update_ts);
CREATE INDEX booking_leg_flight_id ON postgres_air.booking_leg  (flight_id);
CREATE INDEX booking_account_id ON postgres_air.booking  (account_id);
CREATE INDEX booking_update_ts ON postgres_air.booking  (update_ts);
CREATE INDEX booking_email_lower_pattern ON postgres_air.booking  (lower(email) text_pattern_ops);
CREATE INDEX frequent_fl_last_name_lower_pattern ON postgres_air.frequent_flyer  (lower(last_name) text_pattern_ops);
CREATE INDEX frequent_fl_last_name_lower ON postgres_air.frequent_flyer  (lower(last_name));
CREATE INDEX phone_account_id ON postgres_air.phone  (account_id);
CREATE INDEX phone_update_ts ON postgres_air.phone  (update_ts);
CREATE INDEX account_last_name ON postgres_air.account  (last_name);
CREATE INDEX account_last_name_lower ON postgres_air.account  (lower(last_name));
CREATE INDEX account_last_name_lower_pattern ON postgres_air.account  (lower(last_name) text_pattern_ops);
CREATE INDEX account_login ON postgres_air.account  (login);
CREATE INDEX account_domain_lower_pattern ON postgres_air.account  (lower(reverse(login)) text_pattern_ops);
CREATE INDEX account_to_text_id_pattern ON postgres_air.account  (((account_id)::text) text_pattern_ops);
CREATE INDEX account_login_lower_pattern ON postgres_air.account  (lower(login) text_pattern_ops);
CREATE INDEX account_frequent_flyer_id ON postgres_air.account  (frequent_flyer_id);
CREATE UNIQUE INDEX flight_departure_flight_id ON postgres_air.flight_departure_mv  (flight_id);
CREATE INDEX flight_departure_dep_date ON postgres_air.flight_departure_mv  (departure_date);
CREATE INDEX flight_departure_dep_airport ON postgres_air.flight_departure_mv  (departure_airport);
CREATE INDEX boarding_pass_update_ts ON postgres_air.boarding_pass  (update_ts);
CREATE INDEX boarding_pass_passenger_id ON postgres_air.boarding_pass  (passenger_id);
CREATE INDEX boarding_pass_booking_leg_id ON postgres_air.boarding_pass  (booking_leg_id);
CREATE INDEX passenger_account_id ON postgres_air.passenger  (account_id);
CREATE INDEX passenger_last_name ON postgres_air.passenger  (last_name);
CREATE INDEX passenger_last_name_lower_pattern ON postgres_air.passenger  (lower(last_name) text_pattern_ops);
CREATE INDEX passenger_booking_id ON postgres_air.passenger  (booking_id);
CREATE UNIQUE INDEX bn_booking_id ON postgres_air.booking_name  (booking_id);