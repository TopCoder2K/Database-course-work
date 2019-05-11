CREATE SCHEMA IF NOT EXISTS car_repair_shop;


-- Create all tables.
CREATE TABLE IF NOT EXISTS car_repair_shop.detail (
  detail_id         SERIAL PRIMARY KEY,
  brand_nm          VARCHAR(30),
  detail_price_amt  DECIMAL(2) NOT NULL CHECK ( detail_price_amt >= 0.00 ),
  detail_desc       TEXT
);

CREATE TABLE IF NOT EXISTS car_repair_shop.customer (
  customer_id         SERIAL PRIMARY KEY,
  customer_phone_no   BIGINT CHECK ( customer_phone_no > 0 ),
  customer_nm         VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS car_repair_shop.address (
  address_id          SERIAL PRIMARY KEY,
  address_type_nm     VARCHAR(10) NOT NULL,
  address_country_nm  VARCHAR(30) NOT NULL,
  address_city_nm     VARCHAR(30) NOT NULL,
  address_street_nm   VARCHAR(30) NOT NULL,
  address_building_no INT NOT NULL CHECK ( address_building_no > 0 )
);

CREATE TABLE IF NOT EXISTS car_repair_shop.employee (
  employee_id           SERIAL PRIMARY KEY,
  store_address_id      SERIAL REFERENCES car_repair_shop.address(address_id),
  employee_phone_no     BIGINT CHECK ( employee_phone_no > 0 ),
  employee_nm           VARCHAR(30) NOT NULL,
  employee_surname_nm   VARCHAR(30) NOT NULL,
  employee_position_nm  VARCHAR(40) NOT NULL,
  employee_start_dt     DATE  NOT NULL
);

CREATE TABLE IF NOT EXISTS car_repair_shop.provider (
  provider_address_id   SERIAL PRIMARY KEY REFERENCES car_repair_shop.address(address_id),
  provider_phone_no     BIGINT CHECK ( provider_phone_no > 0 ),
  provider_nm           VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS car_repair_shop.order (
  order_id                SERIAL PRIMARY KEY,
  vehicle_id              SERIAL REFERENCES car_repair_shop.vehicle(vehicle_id),
  employee_id             SERIAL REFERENCES car_repair_shop.employee(employee_id),
  store_address_id        SERIAL REFERENCES car_repair_shop.store_branch(store_address_id),
  employee_surname_nm     VARCHAR(30) NOT NULL,
  order_application_dttm  TIMESTAMP,
  order_delivery_dt       DATE  NOT NULL
);

CREATE TABLE IF NOT EXISTS car_repair_shop.store_branch (
  store_address_id   SERIAL PRIMARY KEY REFERENCES car_repair_shop.address(address_id),
  store_phone_no     BIGINT CHECK ( store_phone_no > 0 ),
  store_branch_nm    VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS car_repair_shop.store_branch_x_provider (
  store_address_id      SERIAL REFERENCES car_repair_shop.address(address_id),
  provider_address_id   SERIAL REFERENCES car_repair_shop.address(address_id),
  CONSTRAINT PK_store_branch_x_provider PRIMARY KEY (store_address_id, provider_address_id)
);

CREATE TABLE IF NOT EXISTS car_repair_shop.order_x_detail (
  detail_id      SERIAL REFERENCES car_repair_shop.detail(detail_id),
  order_id       SERIAL REFERENCES car_repair_shop.order(order_id),
  CONSTRAINT PK_order_x_detail PRIMARY KEY (detail_id, order_id)
);

CREATE TABLE IF NOT EXISTS car_repair_shop.vehicle (
  vehicle_id          SERIAL PRIMARY KEY,
  customer_id         SERIAL REFERENCES car_repair_shop.customer(customer_id),
  vehicle_brand_nm    VARCHAR(30) NOT NULL,
  vehicle_model_nm    VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS car_repair_shop.vehicle_x_detail (
  vehicle_id    SERIAL REFERENCES car_repair_shop.vehicle(vehicle_id),
  detail_id     SERIAL REFERENCES car_repair_shop.detail(detail_id),
  CONSTRAINT PK_vehicle_x_detail PRIMARY KEY (vehicle_id, detail_id)
);

CREATE TABLE IF NOT EXISTS car_repair_shop.provider_x_detail (
  provider_address_id     SERIAL REFERENCES car_repair_shop.provider(provider_address_id),
  detail_id               SERIAL REFERENCES car_repair_shop.detail(detail_id),
  CONSTRAINT PK_provider_x_detail PRIMARY KEY (provider_address_id, detail_id)
);


-- Insert data.
