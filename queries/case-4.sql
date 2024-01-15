--monthly average transaction amount
SELECT
    customer_id,
    AVG(total_amount) AS average_transaction_amount
FROM
    `order`
WHERE
    order_date >= DATE_SUB(NOW(), INTERVAL 1 MONTH)
GROUP BY
    customer_id;