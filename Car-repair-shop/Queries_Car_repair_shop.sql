-- Queries.
-- Print the most popular items in descending order of popularity.
SELECT det.*, count(ord.order_id)
FROM car_repair_shop.detail det
INNER JOIN car_repair_shop.order_x_detail ord
ON det.detail_id = ord.detail_id
GROUP BY det.detail_id
ORDER BY count(ord.order_id) DESC;

-- How much money has been spent in each branch?
WITH det_x_ord AS (
  SELECT detail.*, ord.vehicle_id, ord.employee_id, ord.store_address_id, ord.order_application_dttm, ord.order_delivery_dt
  FROM (
        SELECT det.*, o_x_d.order_id
        FROM car_repair_shop.detail det
        INNER JOIN car_repair_shop.order_x_detail o_x_d
        ON det.detail_id = o_x_d.detail_id
         ) detail
  INNER JOIN car_repair_shop.order ord
  ON ord.order_id = detail.order_id
)
SELECT DISTINCT store.store_branch_nm, sum(det_x_ord.detail_price_amt) OVER (PARTITION BY store.store_address_id) AS store_sum
FROM car_repair_shop.store_branch store
INNER JOIN det_x_ord
ON det_x_ord.store_address_id  = store.store_address_id;

-- CTE det_x_ord from the previous query will be needed in next queries, so let's create a view.
CREATE VIEW car_repair_shop.det_x_ord AS (
  SELECT p_x_d.*, ord.vehicle_id, ord.employee_id, ord.store_address_id, ord.order_application_dttm, ord.order_delivery_dt
  FROM (
        SELECT det.*, o_x_d.order_id
        FROM car_repair_shop.detail det
        INNER JOIN car_repair_shop.order_x_detail o_x_d
        ON det.detail_id = o_x_d.detail_id
         ) p_x_d
  INNER JOIN car_repair_shop.order ord
  ON ord.order_id = p_x_d.order_id
);

-- How much money has been earned by every employee?
SELECT employ.employee_nm, employ.employee_position_nm, sum(car_repair_shop.det_x_ord.detail_price_amt) AS employee_sum
FROM car_repair_shop.employee employ
INNER JOIN car_repair_shop.det_x_ord
ON employ.employee_id = car_repair_shop.det_x_ord.employee_id
GROUP BY employ.employee_id
ORDER BY employee_sum;

-- How much has every provider earned?
WITH prov_x_det AS (
  SELECT prov.*, p_x_d.detail_id
  FROM car_repair_shop.provider prov
  INNER JOIN car_repair_shop.provider_x_detail p_x_d
  ON prov.provider_address_id = p_x_d.provider_address_id
)
SELECT DISTINCT prov_x_det.provider_nm, sum(car_repair_shop.det_x_ord.detail_price_amt) OVER (PARTITION BY prov_x_det.provider_address_id) AS employee_sum
FROM prov_x_det
INNER JOIN car_repair_shop.det_x_ord
ON prov_x_det.detail_id = car_repair_shop.det_x_ord.detail_id;

-- How much has every customer spent on every of his car?
SELECT *, sum(veh_x_det_x_ord.detail_price_amt) OVER (PARTITION BY veh_x_det_x_ord.customer_id)
FROM  (SELECT veh.vehicle_brand_nm, veh.vehicle_model_nm, veh.customer_id, car_repair_shop.det_x_ord.*,
         sum(car_repair_shop.det_x_ord.detail_price_amt) OVER (PARTITION BY veh.vehicle_id) AS vehicle_sum
  FROM car_repair_shop.det_x_ord
  INNER JOIN car_repair_shop.vehicle veh
  ON veh.vehicle_id = det_x_ord.vehicle_id) veh_x_det_x_ord;

-- Create view to see what details are sold in each store and where are they from. (Use procedure to see.)
CREATE VIEW car_repair_shop.store_x_provider_x_detail AS (
  SELECT prov_x_det.*, store.store_branch_nm, store.store_phone_no
  FROM (
    SELECT prov_x_det.*, store_x_prov.store_address_id
    FROM (
      SELECT p_x_d.provider_address_id, p_x_d.provider_phone_no, p_x_d.provider_nm, det.*
      FROM (
            SELECT prov.*, p_x_d.detail_id
            FROM car_repair_shop.provider prov
            INNER JOIN car_repair_shop.provider_x_detail p_x_d
            ON prov.provider_address_id = p_x_d.provider_address_id
             ) p_x_d
      INNER JOIN car_repair_shop.detail det
      ON det.detail_id = p_x_d.detail_id) prov_x_det
    INNER JOIN car_repair_shop.store_branch_x_provider store_x_prov
    ON store_x_prov.provider_address_id = prov_x_det.provider_address_id) prov_x_det
  INNER JOIN car_repair_shop.store_branch store
  ON store.store_address_id = prov_x_det.store_address_id
);