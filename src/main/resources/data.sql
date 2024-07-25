-- Insert Addresses
INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('1600 Pennsylvania Ave NW', '', 'Hotel', 'Washington', 'DC', '20500', 'USA', 38.8977, -77.0365);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('1600 Broadway', '', 'Hotel', 'New York', 'NY', '10019', 'USA', 40.7580, -73.9855);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('233 S Wacker Dr', 'Willis Tower', 'Hotel', 'Chicago', 'IL', '60606', 'USA', 41.8789, -87.6359);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('875 N Michigan Ave', '', 'Hotel', 'Chicago', 'IL', '60611', 'USA', 41.8948, -87.6229);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('1111 S Figueroa St', '', 'Hotel', 'Los Angeles', 'CA', '90015', 'USA', 34.0430, -118.2673);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('301 Park Ave', '', 'Hotel', 'New York', 'NY', '10022', 'USA', 40.7565, -73.9742);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('333 W Harbor Dr', '', 'Hotel', 'San Diego', 'CA', '92101', 'USA', 32.7077, -117.1627);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('1401 Pennsylvania Ave NW', '', 'Hotel', 'Washington', 'DC', '20004', 'USA', 38.8963, -77.0316);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('50 Central Park S', '', 'Hotel', 'New York', 'NY', '10019', 'USA', 40.7650, -73.9753);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('1800 Epcot Resorts Blvd', '', 'Hotel', 'Lake Buena Vista', 'FL', '32830', 'USA', 28.3747, -81.5530);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('2300 Paseo Verde Pkwy', '', 'Hotel', 'Henderson', 'NV', '89052', 'USA', 36.0209, -115.0807);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('3600 Las Vegas Blvd S', '', 'Hotel', 'Las Vegas', 'NV', '89109', 'USA', 36.1126, -115.1767);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('1 Market Pl', '', 'Hotel', 'San Diego', 'CA', '92101', 'USA', 32.7080, -117.1671);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('1 Ocean Dr', '', 'Hotel', 'Miami Beach', 'FL', '33139', 'USA', 25.7680, -80.1358);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('100 E Cesar Chavez St', '', 'Hotel', 'Austin', 'TX', '78701', 'USA', 30.2638, -97.7421);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('900 W Georgia St', '', 'Hotel', 'Vancouver', 'BC', 'V6C 2W6', 'Canada', 49.2827, -123.1207);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('123 Queen St W', '', 'Hotel', 'Toronto', 'ON', 'M5H 2M9', 'Canada', 43.6511, -79.3833);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('700 14th St', '', 'Hotel', 'Denver', 'CO', '80202', 'USA', 39.7410, -104.9956);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('10 Avery St', '', 'Hotel', 'Boston', 'MA', '02111', 'USA', 42.3520, -71.0644);

INSERT INTO address (address_line1, address_line2, address_type, city, state, postal_code, country, latitude, longitude)
VALUES ('4 Avenue Rd', '', 'Hotel', 'Toronto', 'ON', 'M5R 2E8', 'Canada', 43.6697, -79.3948);


-- Insert Hotels
INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Hotel Washington', 'info@hotelwashington.com', 5, '14:00:00', '23:00:00', '11:00:00', 50.00, 1);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Broadway Hotel', 'contact@broadwayhotel.com', 4, '15:00:00', '23:59:00', '12:00:00', 30.00, 2);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Willis Tower Hotel', 'stay@willistowerhotel.com', 5, '14:00:00', '22:00:00', '11:00:00', 45.00, 3);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Michigan Avenue Hotel', 'reservations@michiganavenuehotel.com', 4, '15:00:00', '23:00:00', '12:00:00', 40.00, 4);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Figueroa Street Hotel', 'book@figueroahotel.com', 5, '14:00:00', '23:59:00', '11:00:00', 50.00, 5);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Park Avenue Hotel', 'contact@parkavenuehotel.com', 4, '15:00:00', '22:00:00', '12:00:00', 35.00, 6);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Harbor Drive Hotel', 'info@harbordrivehotel.com', 4, '14:00:00', '23:00:00', '11:00:00', 30.00, 7);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Pennsylvania Avenue Hotel', 'stay@pennavenuehotel.com', 5, '15:00:00', '23:59:00', '12:00:00', 50.00, 8);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Central Park Hotel', 'contact@centralparkhotel.com', 5, '14:00:00', '22:00:00', '11:00:00', 45.00, 9);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Epcot Resorts Hotel', 'info@epcotresortshotel.com', 4, '15:00:00', '23:59:00', '12:00:00', 40.00, 10);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Paseo Verde Hotel', 'stay@paseoverdehotel.com', 4, '14:00:00', '23:00:00', '11:00:00', 30.00, 11);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Las Vegas Boulevard Hotel', 'reservations@vegasblvdhotel.com', 5, '15:00:00', '23:59:00', '12:00:00', 50.00, 12);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Market Place Hotel', 'contact@marketplacehotel.com', 4, '14:00:00', '22:00:00', '11:00:00', 30.00, 13);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Ocean Drive Hotel', 'stay@oceandrivehotel.com', 5, '15:00:00', '23:59:00', '12:00:00', 50.00, 14);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Cesar Chavez Hotel', 'info@cesarchavezhotel.com', 4, '14:00:00', '23:00:00', '11:00:00', 35.00, 15);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Georgia Street Hotel', 'contact@georgiastreethotel.com', 4, '15:00:00', '22:00:00', '12:00:00', 40.00, 16);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Queen Street Hotel', 'stay@queenstreethotel.com', 5, '14:00:00', '23:59:00', '11:00:00', 50.00, 17);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('14th Street Hotel', 'info@14thstreethotel.com', 4, '15:00:00', '22:00:00', '12:00:00', 35.00, 18);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Avery Street Hotel', 'contact@averystreethotel.com', 5, '14:00:00', '23:00:00', '11:00:00', 45.00, 19);

INSERT INTO hotel (name, corporate_email, stars, earliest_check_in_time, latest_check_in_time, check_out_time, late_checkout_fee, address_id)
VALUES ('Avenue Road Hotel', 'stay@avenuehotel.com', 4, '15:00:00', '23:59:00', '12:00:00', 30.00, 20);

-- Rooms for Hotel Washington
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('101', 200.00, 1);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('102', 220.00, 1);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('103', 210.00, 1);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('104', 230.00, 1);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('105', 240.00, 1);

-- Rooms for Broadway Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('201', 180.00, 2);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('202', 190.00, 2);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('203', 200.00, 2);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('204', 210.00, 2);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('205', 220.00, 2);

-- Rooms for Willis Tower Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('301', 250.00, 3);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('302', 260.00, 3);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('303', 270.00, 3);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('304', 280.00, 3);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('305', 290.00, 3);

-- Rooms for Michigan Avenue Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('401', 210.00, 4);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('402', 220.00, 4);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('403', 230.00, 4);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('404', 240.00, 4);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('405', 250.00, 4);

-- Rooms for Figueroa Street Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('501', 230.00, 5);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('502', 240.00, 5);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('503', 250.00, 5);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('504', 260.00, 5);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('505', 270.00, 5);

-- Rooms for Park Avenue Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('601', 200.00, 6);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('602', 210.00, 6);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('603', 220.00, 6);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('604', 230.00, 6);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('605', 240.00, 6);

-- Rooms for Harbor Drive Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('701', 220.00, 7);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('702', 230.00, 7);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('703', 240.00, 7);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('704', 250.00, 7);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('705', 260.00, 7);

-- Rooms for Pennsylvania Avenue Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('801', 250.00, 8);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('802', 260.00, 8);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('803', 270.00, 8);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('804', 280.00, 8);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('805', 290.00, 8);

-- Rooms for Central Park Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('901', 260.00, 9);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('902', 270.00, 9);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('903', 280.00, 9);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('904', 290.00, 9);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('905', 300.00, 9);

-- Rooms for Epcot Resorts Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1001', 230.00, 10);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1002', 240.00, 10);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1003', 250.00, 10);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1004', 260.00, 10);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1005', 270.00, 10);

-- Rooms for Paseo Verde Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1101', 200.00, 11);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1102', 210.00, 11);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1103', 220.00, 11);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1104', 230.00, 11);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1105', 240.00, 11);

-- Rooms for Las Vegas Boulevard Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1201', 250.00, 12);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1202', 260.00, 12);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1203', 270.00, 12);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1204', 280.00, 12);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1205', 290.00, 12);

-- Rooms for Market Place Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1301', 210.00, 13);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1302', 220.00, 13);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1303', 230.00, 13);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1304', 240.00, 13);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1305', 250.00, 13);

-- Rooms for Ocean Drive Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1401', 260.00, 14);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1402', 270.00, 14);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1403', 280.00, 14);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1404', 290.00, 14);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1405', 300.00, 14);

-- Rooms for Cesar Chavez Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1501', 210.00, 15);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1502', 220.00, 15);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1503', 230.00, 15);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1504', 240.00, 15);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1505', 250.00, 15);

-- Rooms for Georgia Street Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1601', 220.00, 16);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1602', 230.00, 16);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1603', 240.00, 16);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1604', 250.00, 16);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1605', 260.00, 16);

-- Rooms for Queen Street Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1701', 250.00, 17);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1702', 260.00, 17);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1703', 270.00, 17);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1704', 280.00, 17);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1705', 290.00, 17);

-- Rooms for 14th Street Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1801', 260.00, 18);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1802', 270.00, 18);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1803', 280.00, 18);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1804', 290.00, 18);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1805', 300.00, 18);

-- Rooms for Avery Street Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1901', 230.00, 19);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1902', 240.00, 19);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1903', 250.00, 19);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1904', 260.00, 19);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('1905', 270.00, 19);

-- Rooms for Avenue Road Hotel
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('2001', 210.00, 20);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('2002', 220.00, 20);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('2003', 230.00, 20);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('2004', 240.00, 20);
INSERT INTO room (number, cost_per_night, hotel_id) VALUES ('2005', 250.00, 20);

-- Insert Beds
INSERT INTO bed (type, sleep) VALUES ('King', 2);
INSERT INTO bed (type, sleep) VALUES ('Queen', 2);
INSERT INTO bed (type, sleep) VALUES ('Twin', 1);
INSERT INTO bed (type, sleep) VALUES ('Double', 2);
INSERT INTO bed (type, sleep) VALUES ('Single', 1);

-- Room Beds
INSERT INTO room_bed (room_id, bed_id) VALUES (1, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (1, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (2, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (2, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (3, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (3, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (4, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (4, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (5, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (5, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (6, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (6, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (7, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (7, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (8, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (9, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (9, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (10, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (10, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (11, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (11, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (12, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (12, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (13, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (13, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (14, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (15, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (16, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (16, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (17, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (17, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (18, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (18, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (19, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (19, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (20, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (21, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (21, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (22, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (22, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (23, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (23, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (24, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (24, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (25, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (25, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (26, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (26, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (27, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (27, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (28, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (28, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (29, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (29, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (30, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (30, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (31, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (31, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (32, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (32, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (33, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (33, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (34, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (35, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (36, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (36, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (37, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (37, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (38, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (38, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (39, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (39, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (40, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (40, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (41, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (41, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (42, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (43, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (43, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (44, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (44, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (45, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (45, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (46, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (46, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (47, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (47, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (48, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (49, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (49, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (50, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (50, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (51, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (51, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (51, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (52, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (52, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (52, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (53, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (53, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (53, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (54, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (54, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (55, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (55, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (56, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (56, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (56, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (57, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (57, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (58, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (58, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (58, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (59, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (59, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (60, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (61, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (62, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (63, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (63, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (64, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (64, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (64, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (65, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (66, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (66, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (67, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (67, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (68, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (68, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (68, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (69, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (69, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (70, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (70, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (70, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (71, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (71, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (72, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (72, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (73, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (73, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (74, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (74, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (74, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (75, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (75, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (76, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (76, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (76, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (77, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (77, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (78, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (78, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (79, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (79, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (80, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (80, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (80, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (81, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (81, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (82, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (82, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (83, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (83, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (84, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (84, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (85, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (85, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (86, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (86, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (86, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (87, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (87, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (88, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (88, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (88, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (89, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (89, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (90, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (90, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (91, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (91, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (92, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (92, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (92, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (93, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (93, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (94, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (94, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (94, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (95, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (95, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (96, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (97, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (97, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (98, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (98, 4);
INSERT INTO room_bed (room_id, bed_id) VALUES (98, 5);
INSERT INTO room_bed (room_id, bed_id) VALUES (99, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (99, 3);
INSERT INTO room_bed (room_id, bed_id) VALUES (100, 1);
INSERT INTO room_bed (room_id, bed_id) VALUES (100, 2);
INSERT INTO room_bed (room_id, bed_id) VALUES (100, 5);


-- Room features
INSERT INTO quickstay.room_feature (room_id, name) VALUES (1, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (1, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (1, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (1, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (2, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (2, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (2, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (3, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (3, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (3, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (3, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (3, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (4, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (4, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (4, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (5, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (5, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (5, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (5, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (6, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (6, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (6, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (6, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (7, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (7, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (7, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (7, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (7, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (8, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (8, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (8, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (8, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (8, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (9, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (9, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (9, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (9, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (9, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (10, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (10, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (10, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (11, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (11, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (11, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (11, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (12, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (12, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (12, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (12, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (12, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (13, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (13, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (13, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (13, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (13, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (14, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (14, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (14, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (14, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (15, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (15, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (15, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (15, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (16, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (16, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (16, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (16, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (17, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (17, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (17, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (17, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (17, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (18, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (18, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (18, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (18, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (19, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (19, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (19, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (19, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (19, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (20, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (20, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (20, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (20, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (21, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (21, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (21, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (21, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (21, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (22, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (22, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (22, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (22, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (22, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (23, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (23, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (23, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (23, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (24, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (24, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (25, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (25, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (25, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (25, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (26, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (26, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (26, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (26, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (27, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (27, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (27, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (27, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (28, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (28, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (28, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (28, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (29, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (29, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (29, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (29, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (29, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (30, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (30, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (30, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (31, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (31, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (31, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (31, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (32, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (32, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (32, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (32, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (33, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (33, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (33, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (33, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (33, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (34, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (34, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (34, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (34, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (34, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (35, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (35, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (35, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (35, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (36, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (36, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (36, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (36, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (37, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (37, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (37, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (37, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (38, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (38, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (38, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (38, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (38, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (39, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (39, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (39, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (40, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (40, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (40, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (40, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (40, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (41, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (41, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (41, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (41, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (42, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (42, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (42, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (42, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (43, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (43, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (43, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (43, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (43, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (44, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (44, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (44, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (45, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (45, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (45, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (45, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (45, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (46, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (46, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (46, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (46, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (47, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (47, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (47, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (47, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (47, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (48, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (48, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (48, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (48, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (49, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (49, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (49, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (49, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (50, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (50, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (50, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (51, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (51, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (51, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (52, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (52, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (52, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (52, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (53, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (53, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (53, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (53, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (53, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (54, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (54, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (54, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (54, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (55, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (55, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (55, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (55, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (56, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (56, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (56, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (56, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (56, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (57, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (57, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (57, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (57, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (58, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (58, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (58, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (58, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (58, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (59, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (59, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (59, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (59, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (60, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (60, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (60, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (60, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (61, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (61, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (61, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (61, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (62, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (62, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (62, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (62, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (62, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (63, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (63, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (63, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (63, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (64, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (64, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (64, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (64, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (65, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (65, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (65, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (65, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (66, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (66, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (66, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (66, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (66, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (67, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (67, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (67, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (67, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (68, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (68, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (68, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (68, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (69, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (69, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (69, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (69, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (69, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (70, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (70, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (70, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (70, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (70, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (71, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (71, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (71, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (71, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (72, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (72, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (72, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (72, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (72, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (73, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (73, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (73, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (73, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (74, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (74, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (74, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (74, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (75, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (75, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (75, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (75, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (75, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (76, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (76, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (76, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (76, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (77, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (77, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (77, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (77, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (78, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (78, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (78, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (78, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (78, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (79, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (79, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (79, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (79, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (80, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (80, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (80, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (80, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (81, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (81, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (81, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (82, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (82, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (82, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (82, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (82, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (83, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (83, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (83, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (84, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (84, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (84, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (84, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (84, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (85, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (85, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (85, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (85, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (86, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (86, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (86, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (86, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (86, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (87, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (87, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (87, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (87, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (87, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (88, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (88, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (88, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (88, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (88, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (89, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (89, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (89, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (89, 'Heating');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (90, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (90, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (90, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (90, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (91, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (91, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (91, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (91, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (92, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (92, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (92, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (92, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (92, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (93, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (93, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (93, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (93, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (94, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (94, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (94, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (94, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (94, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (95, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (95, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (95, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (95, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (95, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (96, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (96, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (96, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (96, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (97, 'Ocean View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (97, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (97, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (97, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (98, 'Air Conditioning');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (98, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (98, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (99, 'Wi-Fi');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (99, 'Private Bathroom');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (99, 'Breakfast Included');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (99, 'Mini Bar');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (99, 'Balcony');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (100, 'TV');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (100, 'Non-Smoking');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (100, 'Lake View');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (100, 'Room Service');
INSERT INTO quickstay.room_feature (room_id, name) VALUES (100, 'Ocean View');

-- Users
INSERT INTO user (username, password, email, first_name, last_name, creation_date, enabled, account_non_locked, activation_token, activation_token_expiry, failed_attempt, lock_time) VALUES
('user1', 'password1', 'user1@example.com', 'John', 'Doe', '2024-07-23', 1, 1, 'token1', '2024-07-30', 0, NULL),
('user2', 'password2', 'user2@example.com', 'Jane', 'Doe', '2024-07-23', 1, 1, 'token2', '2024-07-30', 0, NULL),
('user3', 'password3', 'user3@example.com', 'Alice', 'Smith', '2024-07-23', 1, 1, 'token3', '2024-07-30', 0, NULL),
('user4', 'password4', 'user4@example.com', 'Bob', 'Smith', '2024-07-23', 1, 1, 'token4', '2024-07-30', 0, NULL),
('user5', 'password5', 'user5@example.com', 'Charlie', 'Brown', '2024-07-23', 1, 1, 'token5', '2024-07-30', 0, NULL),
('user6', 'password6', 'user6@example.com', 'David', 'Wilson', '2024-07-23', 1, 1, 'token6', '2024-07-30', 0, NULL),
('user7', 'password7', 'user7@example.com', 'Ella', 'Johnson', '2024-07-23', 1, 1, 'token7', '2024-07-30', 0, NULL),
('user8', 'password8', 'user8@example.com', 'Frank', 'Williams', '2024-07-23', 1, 1, 'token8', '2024-07-30', 0, NULL),
('user9', 'password9', 'user9@example.com', 'Grace', 'Jones', '2024-07-23', 1, 1, 'token9', '2024-07-30', 0, NULL),
('user10', 'password10', 'user10@example.com', 'Hannah', 'Garcia', '2024-07-23', 1, 1, 'token10', '2024-07-30', 0, NULL),
('user11', 'password11', 'user11@example.com', 'Ian', 'Martinez', '2024-07-23', 1, 1, 'token11', '2024-07-30', 0, NULL),
('user12', 'password12', 'user12@example.com', 'Jack', 'Lee', '2024-07-23', 1, 1, 'token12', '2024-07-30', 0, NULL),
('user13', 'password13', 'user13@example.com', 'Kara', 'Lopez', '2024-07-23', 1, 1, 'token13', '2024-07-30', 0, NULL),
('user14', 'password14', 'user14@example.com', 'Leo', 'Gonzalez', '2024-07-23', 1, 1, 'token14', '2024-07-30', 0, NULL),
('user15', 'password15', 'user15@example.com', 'Mia', 'Perez', '2024-07-23', 1, 1, 'token15', '2024-07-30', 0, NULL),
('user16', 'password16', 'user16@example.com', 'Nathan', 'Taylor', '2024-07-23', 1, 1, 'token16', '2024-07-30', 0, NULL),
('user17', 'password17', 'user17@example.com', 'Olivia', 'Anderson', '2024-07-23', 1, 1, 'token17', '2024-07-30', 0, NULL),
('user18', 'password18', 'user18@example.com', 'Paul', 'Thomas', '2024-07-23', 1, 1, 'token18', '2024-07-30', 0, NULL),
('user19', 'password19', 'user19@example.com', 'Quinn', 'Hernandez', '2024-07-23', 1, 1, 'token19', '2024-07-30', 0, NULL),
('user20', 'password20', 'user20@example.com', 'Rachel', 'Moore', '2024-07-23', 1, 1, 'token20', '2024-07-30', 0, NULL);


-- Reviews
INSERT INTO review (rating, hotel_id, user_id, comment) VALUES
(4.5, 1, 1, 'Amazing stay, very comfortable!'),
(3.8, 2, 2, 'Good service but the rooms could be cleaner.'),
(4.2, 3, 3, 'Loved the location and the amenities.'),
(5.0, 4, 4, 'Perfect stay, highly recommend!'),
(2.5, 5, 5, 'Average experience, not worth the price.'),
(3.7, 6, 6, 'Decent hotel, friendly staff.'),
(4.8, 7, 7, 'Fantastic hotel, will visit again!'),
(3.3, 8, 8, 'Okay stay, could be better.'),
(4.0, 9, 9, 'Nice place, good value for money.'),
(4.9, 10, 10, 'Excellent stay, great service!'),
(2.8, 11, 11, 'Not very clean, needs improvement.'),
(4.4, 12, 12, 'Very comfortable, good service.'),
(3.5, 13, 13, 'Average hotel, nothing special.'),
(4.6, 14, 14, 'Great stay, highly recommend.'),
(3.2, 15, 15, 'Decent place, but a bit noisy.'),
(4.7, 16, 16, 'Wonderful stay, excellent amenities.'),
(3.9, 17, 17, 'Good value for money.'),
(5.0, 18, 18, 'Perfect stay, very enjoyable.'),
(2.9, 19, 19, 'Could be cleaner, not very impressed.'),
(4.1, 20, 20, 'Nice hotel, friendly staff.'),
(4.5, 1, 2, 'Amazing service, very comfortable beds.'),
(3.6, 2, 3, 'Good location but noisy.'),
(4.3, 3, 4, 'Great amenities, very clean.'),
(4.9, 4, 5, 'Perfect stay, highly recommend!'),
(2.7, 5, 6, 'Average experience, not worth the price.'),
(3.8, 6, 7, 'Decent hotel, friendly staff.'),
(4.7, 7, 8, 'Fantastic hotel, will visit again!'),
(3.4, 8, 9, 'Okay stay, could be better.'),
(4.2, 9, 10, 'Nice place, good value for money.'),
(4.8, 10, 11, 'Excellent stay, great service!'),
(2.9, 11, 12, 'Not very clean, needs improvement.'),
(4.3, 12, 13, 'Very comfortable, good service.'),
(3.4, 13, 14, 'Average hotel, nothing special.'),
(4.7, 14, 15, 'Great stay, highly recommend.'),
(3.1, 15, 16, 'Decent place, but a bit noisy.'),
(4.6, 16, 17, 'Wonderful stay, excellent amenities.'),
(3.9, 17, 18, 'Good value for money.'),
(4.8, 18, 19, 'Perfect stay, very enjoyable.'),
(2.8, 19, 20, 'Could be cleaner, not very impressed.'),
(4.1, 20, 1, 'Nice hotel, friendly staff.'),
(4.5, 1, 1, 'Amazing stay, very comfortable!'),
(4.0, 1, 2, 'Good value for money.'),
(3.5, 1, 3, 'Could be cleaner.'),
(4.2, 1, 4, 'Great location and service.'),
(4.8, 1, 5, 'Highly recommend!'),

(3.8, 2, 2, 'Good service but the rooms could be cleaner.'),
(3.9, 2, 6, 'Nice stay, a bit noisy.'),
(4.1, 2, 7, 'Good experience overall.'),
(3.7, 2, 8, 'Decent hotel for the price.'),
(4.5, 2, 9, 'Very comfortable and clean.'),

(4.2, 3, 3, 'Loved the location and the amenities.'),
(4.3, 3, 4, 'Great place for a short stay.'),
(4.0, 3, 10, 'Nice hotel, friendly staff.'),
(3.8, 3, 11, 'Good value for money.'),
(4.6, 3, 12, 'Wonderful experience.'),

(5.0, 4, 4, 'Perfect stay, highly recommend!'),
(4.8, 4, 13, 'Amazing service and facilities.'),
(4.7, 4, 14, 'Would visit again.'),
(4.9, 4, 15, 'Excellent location and comfort.'),
(4.6, 4, 16, 'Great value for money.'),
(2.5, 5, 5, 'Average experience, not worth the price.'),
(3.0, 5, 17, 'Could be better.'),
(3.2, 5, 18, 'Okay for a short stay.'),
(2.8, 5, 19, 'Needs improvement.'),
(3.5, 5, 20, 'Decent but not great.'),
(3.7, 6, 6, 'Decent hotel, friendly staff.'),
(3.9, 6, 7, 'Nice place for a budget stay.'),
(4.1, 6, 8, 'Good experience overall.'),
(3.8, 6, 9, 'Comfortable and clean.'),
(4.2, 6, 10, 'Very nice and pleasant.'),
(4.8, 7, 7, 'Fantastic hotel, will visit again!'),
(4.5, 7, 11, 'Great stay, highly recommend.'),
(4.6, 7, 12, 'Loved it!'),
(4.7, 7, 13, 'Very comfortable and clean.'),
(4.4, 7, 14, 'Good value for money.'),
(3.3, 8, 8, 'Okay stay, could be better.'),
(3.5, 8, 15, 'Average hotel.'),
(3.6, 8, 16, 'Not bad for the price.'),
(3.8, 8, 17, 'Decent stay.'),
(4.0, 8, 18, 'Good service and facilities.'),
(4.0, 9, 9, 'Nice place, good value for money.'),
(4.1, 9, 10, 'Very comfortable and clean.'),
(4.2, 9, 19, 'Great stay.'),
(4.3, 9, 20, 'Good experience overall.'),
(4.4, 9, 1, 'Loved the location.'),
(4.9, 10, 10, 'Excellent stay, great service!'),
(4.7, 10, 11, 'Highly recommend.'),
(4.8, 10, 12, 'Wonderful experience.'),
(4.6, 10, 13, 'Very comfortable.'),
(4.5, 10, 14, 'Great value for money.'),
(2.8, 11, 11, 'Not very clean, needs improvement.'),
(3.0, 11, 15, 'Could be better.'),
(3.1, 11, 16, 'Average stay.'),
(3.3, 11, 17, 'Okay for a short stay.'),
(3.2, 11, 18, 'Decent but not great.'),
(4.4, 12, 12, 'Very comfortable, good service.'),
(4.3, 12, 19, 'Great stay.'),
(4.5, 12, 20, 'Loved the amenities.'),
(4.2, 12, 1, 'Nice and clean.'),
(4.1, 12, 2, 'Good value for money.'),
(3.5, 13, 13, 'Average hotel, nothing special.'),
(3.6, 13, 3, 'Decent stay.'),
(3.7, 13, 4, 'Okay for the price.'),
(3.8, 13, 5, 'Comfortable enough.'),
(4.0, 13, 6, 'Good service.'),
(4.6, 14, 14, 'Great stay, highly recommend.'),
(4.5, 14, 7, 'Very nice and comfortable.'),
(4.4, 14, 8, 'Loved it.'),
(4.3, 14, 9, 'Great value for money.'),
(4.2, 14, 10, 'Wonderful experience.'),
(3.2, 15, 15, 'Decent place, but a bit noisy.'),
(3.4, 15, 11, 'Okay for a short stay.'),
(3.5, 15, 12, 'Average stay.'),
(3.6, 15, 13, 'Not bad for the price.'),
(3.8, 15, 14, 'Comfortable enough.'),
(4.7, 16, 16, 'Wonderful stay, excellent amenities.'),
(4.6, 16, 15, 'Highly recommend.'),
(4.5, 16, 1, 'Loved the service.'),
(4.4, 16, 2, 'Very comfortable.'),
(4.3, 16, 3, 'Great value for money.'),
(3.9, 17, 17, 'Good value for money.'),
(3.8, 17, 4, 'Decent stay.'),
(3.7, 17, 5, 'Okay for the price.'),
(3.6, 17, 6, 'Comfortable enough.'),
(4.0, 17, 7, 'Good service.'),
(5.0, 18, 18, 'Perfect stay, very enjoyable.'),
(4.9, 18, 8, 'Amazing experience.'),
(4.8, 18, 9, 'Loved it!'),
(4.7, 18, 10, 'Very comfortable.'),
(4.6, 18, 11, 'Great value for money.'),
(2.9, 19, 19, 'Could be cleaner, not very impressed.'),
(3.0, 19, 12, 'Average stay.'),
(3.1, 19, 13, 'Not bad for the price.'),
(3.2, 19, 14, 'Okay for a short stay.'),
(3.3, 19, 15, 'Decent but not great.'),
(4.1, 20, 20, 'Nice hotel, friendly staff.'),
(4.0, 20, 16, 'Good value for money.'),
(3.9, 20, 17, 'Decent stay.'),
(3.8, 20, 18, 'Comfortable enough.'),
(4.2, 20, 19, 'Great service.');