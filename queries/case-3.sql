--top 3 products with the highest stock

SELECT
    product_id,
    stock
FROM
    product
ORDER BY
    stock DESC
LIMIT 3;