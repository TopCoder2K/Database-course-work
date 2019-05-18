--------------------------------------------- Create views.
CREATE VIEW car_repair_shop.address_view AS (
  SELECT adr.address_type_nm, adr.address_country_nm, adr.address_city_nm, adr.address_street_nm, adr.address_building_no
  FROM car_repair_shop.address adr
);

CREATE VIEW car_repair_shop.customer_view AS (
  SELECT cust.customer_nm, (cust.customer_phone_no / 100000000)::VARCHAR(10) || '******' || cust.customer_phone_no % 100
  FROM car_repair_shop.customer cust
);

CREATE VIEW car_repair_shop.detail_view AS (
  SELECT det.detail_brand_nm, det.detail_price_amt, det.detail_desc
  FROM car_repair_shop.detail det
);

CREATE VIEW car_repair_shop.employee_view AS (
  SELECT (empl.employee_phone_no / 100000000)::VARCHAR(10) || '******' || empl.employee_phone_no % 100,
         empl.employee_nm, empl.employee_surname_nm, empl.employee_position_nm
  FROM car_repair_shop.employee empl
);

CREATE VIEW car_repair_shop.order_view AS (
  SELECT ord.order_application_dttm, ord.order_delivery_dt
  FROM car_repair_shop.order ord
);

CREATE VIEW car_repair_shop.provider_view AS (
  SELECT (prov.provider_phone_no / 100000000)::VARCHAR(10) || '******' || prov.provider_phone_no % 100, prov.provider_nm
  FROM car_repair_shop.provider prov
);

CREATE VIEW car_repair_shop.store_branch_view AS (
  SELECT (store.store_phone_no / 100000000)::VARCHAR(10) || '******' || store.store_phone_no % 100, store.store_branch_nm
  FROM car_repair_shop.store_branch store
);

CREATE VIEW car_repair_shop.vehicle_view AS (
  SELECT veh.vehicle_brand_nm, veh.vehicle_model_nm
  FROM car_repair_shop.vehicle veh
);