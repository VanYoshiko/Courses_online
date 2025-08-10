-- Case statement for querying tiger shop bill!
SELECT category, amount,
CASE
WHEN amount <=0 THEN "debt"
END AS bills
FROM logs;

