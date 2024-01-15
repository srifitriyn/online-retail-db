--top 3 best seller products

SELECT
    product_id,
    SUM(quantity) AS total_quantity_sold
FROM
    order_item
GROUP BY
    product_id
ORDER BY
    total_quantity_sold DESC
LIMIT 3;