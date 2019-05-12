-- Insert data.
--------------------------------------- Addresses.
INSERT INTO car_repair_shop.address (
                                     address_type_nm,
                                     address_country_nm,
                                     address_city_nm,
                                     address_street_nm,
                                     address_building_no)
VALUES ('store', 'Russia', 'Tambov', 'Soviet st.', 3);

INSERT INTO car_repair_shop.address (
                                     address_type_nm,
                                     address_country_nm,
                                     address_city_nm,
                                     address_street_nm,
                                     address_building_no)
VALUES ('store', 'Great Britain', 'London', 'Duke Street st.', 11);

INSERT INTO car_repair_shop.address (
                                     address_type_nm,
                                     address_country_nm,
                                     address_city_nm,
                                     address_street_nm,
                                     address_building_no)
VALUES ('store', 'France', 'Paris', 'Boulevard Saint-Germain', 115);

INSERT INTO car_repair_shop.address (
                                     address_type_nm,
                                     address_country_nm,
                                     address_city_nm,
                                     address_street_nm,
                                     address_building_no)
VALUES ('store', 'Russia', 'Moscow', 'Pervomaiskaya st.', 45);

INSERT INTO car_repair_shop.address (
                                     address_type_nm,
                                     address_country_nm,
                                     address_city_nm,
                                     address_street_nm,
                                     address_building_no)
VALUES ('store', 'USA', 'New York', 'Chambers st.', 89);

INSERT INTO car_repair_shop.address (
                                     address_type_nm,
                                     address_country_nm,
                                     address_city_nm,
                                     address_street_nm,
                                     address_building_no)
VALUES ('provider', 'Russia', 'Balashikha', 'Prospekt Lenina', 34);

INSERT INTO car_repair_shop.address (
                                     address_type_nm,
                                     address_country_nm,
                                     address_city_nm,
                                     address_street_nm,
                                     address_building_no)
VALUES ('provider', 'Germany', 'Berlin', 'Mohriner Allee', 72);

INSERT INTO car_repair_shop.address (
                                     address_type_nm,
                                     address_country_nm,
                                     address_city_nm,
                                     address_street_nm,
                                     address_building_no)
VALUES ('provider', 'USA', 'New York', 'Archer st.', 1839);

INSERT INTO car_repair_shop.address (
                                     address_type_nm,
                                     address_country_nm,
                                     address_city_nm,
                                     address_street_nm,
                                     address_building_no)
VALUES ('provider', 'China', 'Hong Kong', 'Fung Mo St', 6);

--------------------------------------- Stores.
INSERT INTO car_repair_shop.store_branch (
                                     store_address_id,
                                     store_phone_no,
                                     store_branch_nm)
VALUES (2, 451711234567, 'Perfect details');

INSERT INTO car_repair_shop.store_branch (
                                     store_address_id,
                                     store_phone_no,
                                     store_branch_nm)
VALUES (1, 89283254567, 'Совершенные детали');

INSERT INTO car_repair_shop.store_branch (
                                     store_address_id,
                                     store_phone_no,
                                     store_branch_nm)
VALUES (4, 89283254568, 'Совершенные детали 2');

INSERT INTO car_repair_shop.store_branch (
                                     store_address_id,
                                     store_phone_no,
                                     store_branch_nm)
VALUES (3, 340014452386, 'Détails parfaits');

INSERT INTO car_repair_shop.store_branch (
                                     store_address_id,
                                     store_phone_no,
                                     store_branch_nm)
VALUES (5, 263133869699, 'Perfect details');

--------------------------------------- Providers.
INSERT INTO car_repair_shop.provider (
                                     provider_address_id,
                                     provider_phone_no,
                                     provider_nm)
VALUES (6, 89283254578, 'Великолепный автозавод (ВАЗ)');

INSERT INTO car_repair_shop.provider (
                                     provider_address_id,
                                     provider_phone_no,
                                     provider_nm)
VALUES (7, 500303222416, 'Pinkovoz');

INSERT INTO car_repair_shop.provider (
                                     provider_address_id,
                                     provider_phone_no,
                                     provider_nm)
VALUES (8, 820033222512, 'Nintendozzz');

INSERT INTO car_repair_shop.provider (
                                     provider_address_id,
                                     provider_phone_no,
                                     provider_nm)
VALUES (9, 878524123512, '全随机');

---------------------------------------Customers.
INSERT INTO car_repair_shop.customer (
                                     customer_phone_no,
                                     customer_nm)
VALUES (451711324567, 'James');

INSERT INTO car_repair_shop.customer (
                                     customer_phone_no,
                                     customer_nm)
VALUES (89283255476, 'Владимир');

INSERT INTO car_repair_shop.customer (
                                     customer_phone_no,
                                     customer_nm)
VALUES (89283233256, 'Дмитрий');

INSERT INTO car_repair_shop.customer (
                                     customer_phone_no,
                                     customer_nm)
VALUES (340014432248, 'Adélard');

INSERT INTO car_repair_shop.customer (
                                     customer_phone_no,
                                     customer_nm)
VALUES (89283112897, 'Кирилл');

INSERT INTO car_repair_shop.customer (
                                     customer_phone_no,
                                     customer_nm)
VALUES (263133832335, 'John');

--------------------------------------- Employee.
INSERT INTO car_repair_shop.employee (
                                      store_address_id,
                                      employee_phone_no,
                                      employee_nm,
                                      employee_surname_nm,
                                      employee_position_nm,
                                      employee_start_dt)
VALUES (2, 451712211567, 'Clark', 'Kent', 'shop assistant', '2006-6-18');

--CHOOOOOOOOOOOOOOOOOOOOSE IT FRO TRIGGER UPDATE
INSERT INTO car_repair_shop.employee (
                                      store_address_id,
                                      employee_phone_no,
                                      employee_nm,
                                      employee_surname_nm,
                                      employee_position_nm,
                                      employee_start_dt)
VALUES (2, 451712211328, 'Ethan', 'Hall', 'shop assistant', '2006-6-21');

INSERT INTO car_repair_shop.employee (
                                      store_address_id,
                                      employee_phone_no,
                                      employee_nm,
                                      employee_surname_nm,
                                      employee_position_nm,
                                      employee_start_dt)
VALUES (1, 89283246789, 'Иван', 'Иванов', 'shop assistant', '2007-3-28');

INSERT INTO car_repair_shop.employee (
                                      store_address_id,
                                      employee_phone_no,
                                      employee_nm,
                                      employee_surname_nm,
                                      employee_position_nm,
                                      employee_start_dt)
VALUES (1, 89283249872, 'Дмитрий', 'Челноков', 'branch manager', '2007-1-15');

INSERT INTO car_repair_shop.employee (
                                      store_address_id,
                                      employee_phone_no,
                                      employee_nm,
                                      employee_surname_nm,
                                      employee_position_nm,
                                      employee_start_dt)
VALUES (4, 89285548978, 'Кирилл', 'Рукавишников', 'shop assistant', '2007-4-11');

INSERT INTO car_repair_shop.employee (
                                      store_address_id,
                                      employee_phone_no,
                                      employee_nm,
                                      employee_surname_nm,
                                      employee_position_nm,
                                      employee_start_dt)
VALUES (4, 89285545548, 'Артём', 'Деркач', 'shop assistant', '2007-5-12');

INSERT INTO car_repair_shop.employee (
                                      store_address_id,
                                      employee_phone_no,
                                      employee_nm,
                                      employee_surname_nm,
                                      employee_position_nm,
                                      employee_start_dt)
VALUES (4, 89285546687, 'Илья', 'Деркач', 'branch manager', '2007-2-17');

INSERT INTO car_repair_shop.employee (
                                      store_address_id,
                                      employee_phone_no,
                                      employee_nm,
                                      employee_surname_nm,
                                      employee_position_nm,
                                      employee_start_dt)
VALUES (3, 340014451529, 'Adrian', 'Morel', 'branch manager', '2008-9-9');

INSERT INTO car_repair_shop.employee (
                                      store_address_id,
                                      employee_phone_no,
                                      employee_nm,
                                      employee_surname_nm,
                                      employee_position_nm,
                                      employee_start_dt)
VALUES (5, 263134559691, 'Bernard', 'Brown', 'branch manager', '2009-12-24');

INSERT INTO car_repair_shop.employee (
                                      store_address_id,
                                      employee_phone_no,
                                      employee_nm,
                                      employee_surname_nm,
                                      employee_position_nm,
                                      employee_start_dt)
VALUES (5, 263134554999, 'William', 'Wilson', 'shop assistant', '2010-1-18');


--------------------------------------- Details.
ALTER TABLE car_repair_shop.detail RENAME brand_nm TO detail_brand_nm;

--------------------------------------------------- CRUD.
INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('KAKA', 0, 'ЫЫЫЫЫЫЫЫЫ');

SELECT *
FROM car_repair_shop.detail
WHERE detail_brand_nm = 'KAKA';

UPDATE car_repair_shop.detail
SET  detail_price_amt = 9999
WHERE detail_brand_nm = 'KAKA';

SELECT *
FROM car_repair_shop.detail
WHERE detail_brand_nm = 'KAKA';

DELETE
FROM car_repair_shop.detail
WHERE detail_brand_nm = 'KAKA';
-------------------------------------------------------

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Audi', 918.304, 'Automatic gearbox. Model: NGV DSG');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Audi', 65.110, 'Exhaust Gas Recirculation. Model: EVEU022');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Audi', 23.264, 'Fuel filter. Manufacturer: PURFLUX. Model: EVEU022');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Alfa Romeo', 35.319, 'Central locking control unit');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Peugeot', 583.538, 'Internal combustion engine. Engine codes KFX (TU3JP), KFW (TU3JP)');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Valeo', 583.538, 'Xenon ignition unit. Suitable for Audi, Cadillac, Chrysler, Volkswagen, Volvo and other brands.');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('High Perfomance Breaks', 2149.877, 'Front axle brake system kit');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Ford', 538.988, 'Steering rack');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Lada', 167.383, 'Protection thresholds (pipes under the thresholds)');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Lada', 138.206, 'Front bumper on Lada Vesta');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Lada', 153.562, 'Engine for Lada 2104');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Lada', 33.783, 'Left rear door with glass assembled for Lada 2104');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('Lada', 337.684, 'Assembled block head for Lada 2104');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('UAZ', 276.412, 'Transfer case for UAZ Patriot');

INSERT INTO car_repair_shop.detail (
                                      detail_brand_nm,
                                      detail_price_amt,
                                      detail_desc)
VALUES ('UAZ', 614.250, 'New transfer case for UAZ Patriot');


--------------------------------------- Vehicle.
INSERT INTO car_repair_shop.vehicle (
                                      customer_id,
                                      vehicle_brand_nm,
                                      vehicle_model_nm)
VALUES (1, 'Audi', 'A4 Allroad V');

INSERT INTO car_repair_shop.vehicle (
                                      customer_id,
                                      vehicle_brand_nm,
                                      vehicle_model_nm)
VALUES (1, 'Audi', 'R8 Spyder');

INSERT INTO car_repair_shop.vehicle (
                                      customer_id,
                                      vehicle_brand_nm,
                                      vehicle_model_nm)
VALUES (2, 'Lada', 'Vesta SW Cross');

INSERT INTO car_repair_shop.vehicle (
                                      customer_id,
                                      vehicle_brand_nm,
                                      vehicle_model_nm)
VALUES (2, 'VAZ', '2104');

INSERT INTO car_repair_shop.vehicle (
                                      customer_id,
                                      vehicle_brand_nm,
                                      vehicle_model_nm)
VALUES (3, 'UAZ', 'Patriot');

INSERT INTO car_repair_shop.vehicle (
                                      customer_id,
                                      vehicle_brand_nm,
                                      vehicle_model_nm)
VALUES (4, 'Alfa Romeo', 'Mito');

INSERT INTO car_repair_shop.vehicle (
                                      customer_id,
                                      vehicle_brand_nm,
                                      vehicle_model_nm)
VALUES (4, 'Peugeot', 'RCZ');

INSERT INTO car_repair_shop.vehicle (
                                      customer_id,
                                      vehicle_brand_nm,
                                      vehicle_model_nm)
VALUES (5, 'Ford', 'Mondeo V');

INSERT INTO car_repair_shop.vehicle (
                                      customer_id,
                                      vehicle_brand_nm,
                                      vehicle_model_nm)
VALUES (6, 'Cadillac', 'CTS II');

INSERT INTO car_repair_shop.vehicle (
                                      customer_id,
                                      vehicle_brand_nm,
                                      vehicle_model_nm)
VALUES (6, 'Infiniti', 'QX80');


--------------------------------------- Orders.
--------------------------------------------------- CRUD.
INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (1, 1, 1, '1971-12-31 12:59:59', '9999-12-31');

SELECT *
FROM car_repair_shop.order
WHERE order_application_dttm = '1971-12-31 12:59:59';

UPDATE car_repair_shop.order
SET  order_delivery_dt = '1000-2-12'
WHERE order_application_dttm = '1971-12-31 12:59:59';

SELECT *
FROM car_repair_shop.order
WHERE order_application_dttm = '1971-12-31 12:59:59';

DELETE
FROM car_repair_shop.order
WHERE order_application_dttm = '1971-12-31 12:59:59';
-------------------------------------------------------

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (1, 1, 2, '2018-12-31 12:59:59', '2019-6-1');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (2, 1, 2, '2019-1-2 13:48:12', '2019-7-2');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (1, 4, 2, '2019-1-7 14:30:12', '2019-4-15');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (3, 2, 1, '2019-1-20 15:01:03', '2019-5-15');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (3, 2, 4, '2019-1-21 15:01:03', '2019-5-15');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (3, 2, 4, '2019-1-20 16:15:03', '2019-5-15');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (4, 3, 1, '2019-1-27 16:21:23', '2019-5-23');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (4, 5, 1, '2019-1-28 16:45:33', '2019-5-23');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (4, 5, 1, '2019-2-1 11:45:33', '2019-4-23');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (5, 7, 4, '2019-1-22 10:28:55', '2019-5-23');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (5, 7, 4, '2019-1-10 10:14:23', '2019-3-23');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (8, 7, 4, '2019-4-25 15:14:17', '2019-8-25');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (9, 9, 5, '2019-2-4 13:14:21', '2019-5-23');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (10, 10, 5, '2019-2-6 14:22:21', '2019-5-21');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (10, 10, 5, '2019-3-8 17:21:21', '2019-5-21');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (6, 8, 3, '2019-2-13 14:55:34', '2019-7-22');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (1, 1, 2, '2019-2-14 12:21:51', '2019-4-27');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (2, 1, 2, '2019-2-14 12:21:51', '2019-4-27');

INSERT INTO car_repair_shop.order (
                                      vehicle_id,
                                      employee_id,
                                      store_address_id,
                                      order_application_dttm,
                                      order_delivery_dt)
VALUES (7, 8, 3, '2019-5-1 14:07:22', '2019-6-1');

---------------------------------------------------- Link tables.
--------------------------------------- Store_branch_x_provider.
INSERT INTO car_repair_shop.store_branch_x_provider (

                                                    store_address_id,
                                                    provider_address_id)
VALUES (1, 6);

INSERT INTO car_repair_shop.store_branch_x_provider (
                                                     store_address_id,
                                                     provider_address_id)
VALUES (1, 8);

INSERT INTO car_repair_shop.store_branch_x_provider (
                                                     store_address_id,
                                                     provider_address_id)
VALUES (1, 9);

INSERT INTO car_repair_shop.store_branch_x_provider (
                                                     store_address_id,
                                                     provider_address_id)
VALUES (4, 6);

INSERT INTO car_repair_shop.store_branch_x_provider (
                                                     store_address_id,
                                                     provider_address_id)
VALUES (4, 8);

INSERT INTO car_repair_shop.store_branch_x_provider (
                                                     store_address_id,
                                                     provider_address_id)
VALUES (4, 9);

INSERT INTO car_repair_shop.store_branch_x_provider (
                                                     store_address_id,
                                                     provider_address_id)
VALUES (2, 7);

INSERT INTO car_repair_shop.store_branch_x_provider (
                                                     store_address_id,
                                                     provider_address_id)
VALUES (3, 9);

INSERT INTO car_repair_shop.store_branch_x_provider (
                                                     store_address_id,
                                                     provider_address_id)
VALUES (5, 8);

INSERT INTO car_repair_shop.store_branch_x_provider (
                                                     store_address_id,
                                                     provider_address_id)
VALUES (5, 9);

--Provider_x_detail
INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (2, 7);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (3, 7);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (4, 7);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (5, 9);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (6, 9);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (7, 9);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (8, 8);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (9, 8);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (10, 9);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (11, 9);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (12, 6);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (13, 6);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (14, 6);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (15, 6);

INSERT INTO car_repair_shop.provider_x_detail (
                                               detail_id,
                                               provider_address_id)
VALUES (16, 6);

--------------------------------------- Vehicle_x_detail.
INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (2, 1);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (3, 1);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (4, 1);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (2, 2);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (3, 2);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (4, 2);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (5, 6);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (6, 7);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (7, 9);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (8, 10);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (9, 8);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (10, 3);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (11, 3);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (12, 4);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (13, 4);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (14, 4);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (15, 5);

INSERT INTO car_repair_shop.vehicle_x_detail (
                                               detail_id,
                                               vehicle_id)
VALUES (16, 5);


--------------------------------------- Order_x_detail
INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (2, 2);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (2, 3);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (3, 4);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (4, 4);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (5, 10);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (6, 10);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (6, 11);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (7, 12);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (8, 12);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (9, 13);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (9, 14);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (10, 14);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (12, 16);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (13, 9);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (14, 7);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (15, 8);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (16, 7);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (17, 5);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (18, 4);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (19, 4);

INSERT INTO car_repair_shop.order_x_detail (
                                            order_id,
                                            detail_id)
VALUES (20, 6);