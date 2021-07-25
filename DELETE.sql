DELETE FROM
    Manufacturer a
        USING Manufacturer b
WHERE
    a.manf_id < b.manf_id
    AND a.manf = b.manf;


DELETE FROM
    Supplier a
        USING Supplier b
WHERE
    a.Supplier_id < b.Supplier_id
    AND a.Supplier = b.Supplier;


DELETE FROM
    Pharmacy a
        USING Pharmacy b
WHERE
    a.Pharmacy_id < b.Pharmacy_id
    AND a.Pharmacy = b.Pharmacy;


DELETE FROM
    Employee a
        USING Employee b
WHERE
    a.Emp_id < b.Emp_id
    AND a.Emp_Name = b.Emp_Name;


DELETE FROM
    Medicine a
        USING Medicine b
WHERE
    a.Medicine_id < b.Medicine_id
    AND a.Medicine  = b.Medicine ;

ALTER TABLE bill DROP COLUMN SSN;
