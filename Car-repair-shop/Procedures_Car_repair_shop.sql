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