SELECT *
FROM CM_loyalty
WHERE 'cancellation year' IS NOT NULL and clv > (select avg(clv) FROM CM_loyalty);

SELECT *
FROM CM_loyalty
WHERE 'cancellation year' IS NULL and clv > (select avg(clv) FROM CM_loyalty);