UPDATE customer
SET full_name = 'Fitri Updated', phone = '081234567890', city = 'Bandung Updated', full_address = 'Jl. Soekarno Hatta Updated', email = 'fitriupdated@email.com'
WHERE customer_id = 1;

UPDATE product
SET price = 1200000, stock = 8000
WHERE product_id = 3;

UPDATE cart
SET total_price = 600000
WHERE cart_id = 2;

UPDATE cart_item
SET quantity = 4
WHERE cart_item_id = 5;