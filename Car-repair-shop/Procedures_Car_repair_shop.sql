CREATE OR REPLACE FUNCTION car_repair_shop.analise_stores()
RETURNS TABLE (
               store_branch_nm    VARCHAR(40),
               address_country_nm VARCHAR(30),
               detail_brand_nm    VARCHAR(30),
               detail_price_amt   NUMERIC(7, 3),
               detail_desc        TEXT
              ) AS $$
  SELECT st_x_pr_x_det.store_branch_nm, adr.address_country_nm, st_x_pr_x_det.detail_brand_nm, st_x_pr_x_det.detail_price_amt, st_x_pr_x_det.detail_desc
  FROM car_repair_shop.store_x_provider_x_detail st_x_pr_x_det
  INNER JOIN car_repair_shop.address adr
  ON adr.address_id = st_x_pr_x_det.provider_address_id;
$$ LANGUAGE SQL;

SELECT *
FROM car_repair_shop.analise_stores();


-- Shows how many orders were made in each month.
CREATE OR REPLACE FUNCTION car_repair_shop.show_orders_per_month()
RETURNS TABLE (
               store_branch_nm    VARCHAR(40),
               order_year         SMALLINT,
               order_month        SMALLINT,
               number_of_orders   BIGINT
              ) AS $$
  SELECT store.store_branch_nm, order_analyse.order_year, order_analyse.order_month, order_analyse.cnt
  FROM (
         SELECT store_address_id, order_year, order_month, count(order_month) AS cnt
         FROM (
                SELECT o.store_address_id,
                       cast(DATE_PART('year', cast(o.order_application_dttm AS DATE)) AS  SMALLINT)  AS order_year,
                       cast(DATE_PART('month', cast(o.order_application_dttm AS DATE)) AS  SMALLINT) AS order_month
                FROM car_repair_shop.order o
              ) order_dates
         GROUP BY store_address_id, order_year, order_month
         ORDER BY store_address_id, order_year, order_month
       ) order_analyse
  INNER JOIN car_repair_shop.store_branch store
  ON store.store_address_id = order_analyse.store_address_id
$$ LANGUAGE SQL;

SELECT *
FROM car_repair_shop.show_orders_per_month();