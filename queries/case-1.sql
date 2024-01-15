INSERT INTO cart
    (customer_id, total_price)
VALUES
    (1, 0);

SET @cart_id = LAST_INSERT_ID();

INSERT INTO cart_item
    (cart_id, product_id, quantity, subtotal)
VALUES
    (@cart_id, 1, 1, (SELECT price
        FROM product
        WHERE product_id = 1)),
    (@cart_id, 2, 1, (SELECT price
        FROM product
        WHERE product_id = 2)),
    (@cart_id, 3, 1,
        (SELECT price
        FROM product
        WHERE product_id = 3));

UPDATE cart
SET total_price = (SELECT SUM(subtotal)
FROM cart_item
WHERE cart_id = @cart_id)
WHERE cart_id = @cart_id;

INSERT INTO `order`
    (customer_id, order_date, total_amount)
VALUES
    (1, NOW(), (SELECT total_price
        FROM cart
        WHERE cart_id = @cart_id));