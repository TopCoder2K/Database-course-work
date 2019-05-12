-- Create triggers.
-- A table to log all changes in the detail table or the detail view.
CREATE TABLE IF NOT EXISTS car_repair_shop.audit_detail (
    operation         CHAR(1) NOT NULL,
    stamp             TIMESTAMP NOT NULL,
    detail_brand_nm   VARCHAR(30) NOT NULL,
    detail_price_amt  DECIMAL(7, 3) NOT NULL CHECK ( detail_price_amt >= 0.00 ),
    detail_desc       TEXT
);

-- A trigger to audit changes in the table.
CREATE OR REPLACE FUNCTION car_repair_shop.process_detail_audit() RETURNS TRIGGER AS $$
    BEGIN
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO car_repair_shop.audit_detail
            SELECT 'D', now(), OLD.detail_brand_nm, OLD.detail_price_amt, OLD.detail_desc;
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO car_repair_shop.audit_detail
            SELECT 'U', now(), NEW.detail_brand_nm, NEW.detail_price_amt, NEW.detail_desc;
            RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO car_repair_shop.audit_detail
            SELECT 'I', now(), NEW.detail_brand_nm, NEW.detail_price_amt, NEW.detail_desc;
            RETURN NEW;
        END IF;
        RETURN NULL;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER detail_audit
BEFORE INSERT OR UPDATE OR DELETE ON car_repair_shop.detail
    FOR EACH ROW EXECUTE PROCEDURE car_repair_shop.process_detail_audit();

INSERT INTO car_repair_shop.detail (
                                    detail_brand_nm,
                                    detail_price_amt,
                                    detail_desc)
VALUES ('KAKA', 0, 'ЫЫЫЫЫЫЫЫЫ');

UPDATE car_repair_shop.detail
SET  detail_price_amt = 9999
WHERE detail_brand_nm = 'KAKA';

DELETE
FROM car_repair_shop.detail
WHERE detail_brand_nm = 'KAKA';

-- A trigger to audit changes in the detail table view.
CREATE OR REPLACE FUNCTION car_repair_shop.process_detail_view_audit() RETURNS TRIGGER AS $$
    BEGIN
        IF (TG_OP = 'DELETE') THEN
            DELETE FROM car_repair_shop.detail det
            WHERE det.detail_brand_nm = OLD.detail_brand_nm AND det.detail_price_amt = OLD.detail_price_amt
              AND det.detail_desc = OLD.detail_desc;
            IF NOT FOUND THEN RETURN NULL; END IF;

            INSERT INTO car_repair_shop.audit_detail
            VALUES ('D', now(), OLD.detail_brand_nm, OLD.detail_price_amt, OLD.detail_desc);
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            UPDATE car_repair_shop.detail det
            SET detail_price_amt = NEW.detail_price_amt
            WHERE det.detail_brand_nm = OLD.detail_brand_nm AND det.detail_price_amt = OLD.detail_price_amt
              AND det.detail_desc = OLD.detail_desc;
            IF NOT FOUND THEN RETURN NULL; END IF;

            INSERT INTO car_repair_shop.audit_detail
            VALUES ('U', now(), NEW.detail_brand_nm, NEW.detail_price_amt, NEW.detail_desc);
            RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO car_repair_shop.detail (
                                                detail_brand_nm,
                                                detail_price_amt,
                                                detail_desc)
            VALUES (NEW.detail_brand_nm, NEW.detail_price_amt, NEW.detail_desc);

            INSERT INTO car_repair_shop.audit_detail
            VALUES('I', now(), NEW.detail_brand_nm, NEW.detail_price_amt, NEW.detail_desc);
            RETURN NEW;
        END IF;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER detail_view_audit
INSTEAD OF INSERT OR UPDATE OR DELETE ON car_repair_shop.detail_view
    FOR EACH ROW EXECUTE PROCEDURE car_repair_shop.process_detail_view_audit();

INSERT INTO car_repair_shop.detail_view (
                                        detail_brand_nm,
                                        detail_price_amt,
                                        detail_desc)
VALUES ('KAKA', 0, 'ЫЫЫЫЫЫЫЫЫ');

UPDATE car_repair_shop.detail_view
SET  detail_price_amt = 9999
WHERE detail_brand_nm = 'KAKA';

DELETE
FROM car_repair_shop.detail_view
WHERE detail_brand_nm = 'KAKA';

------------- If it is needed to delete all logs, use this.
TRUNCATE car_repair_shop.audit_detail;