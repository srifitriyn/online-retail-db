INSERT INTO customer
    (full_name, phone, city, full_address, email)
VALUES
    ("Fitri", "089999878889", "Bandung", "Jl. Soekarno Hatta No. 101 Bandung", "fitri@gmail.com"),
    ("Garsi", "089954378889", "Jakarta", "Jl. Soekarno Hatta No. 102 Jakarta", "garsi@gmail.com"),
    ("Firni", "081249878889", "Surabaya", "Jl. Soekarno Hatta No. 103 Surabaya", "firni@gmail.com"),
    ("Husna", "08999325636", "Palembang", "Jl. Soekarno Hatta No. 104 Palembang", "husna@gmail.com"),
    ("Adisti", "082353487869", "Makasar", "Jl. Soekarno Hatta No. 105 Makasar", "adisti@gmail.com"),
    ("Pia", "083599325329", "Pontianak", "Jl. Soekarno Hatta No. 106 Pontianak", "pia@gmail.com"),
    ("Piar", "083221378389", "Bali", "Jl. Soekarno Hatta No. 107 Bali", "piar@gmail.com"),
    ("Pani", "089923218319", "Bandung", "Jl. Soekarno Hatta No. 108 Bandung", "pani@gmail.com"),
    ("Diana", "0821318788314", "Jakarta", "Jl. Soekarno Hatta No. 109 Jakarta", "diana@gmail.com"),
    ("Syifa", "0894148741389", "Bali", "Jl. Soekarno Hatta No. 110 Bali", "syifa@gmail.com");

INSERT INTO product_category
    (category_name)
VALUES
    ("Shoes"),
    ("Sandals"),
    ("Clothing"),
    ("Skincare"),
    ("Bodycare"),
    ("Books"),
    ("Baby Stuff"),
    ("Accessory"),
    ("Bags"),
    ("Hijab");

INSERT INTO product
    (category_id, product_name, description_product, price, stock)
VALUES
    ("1", "Women Sport Shoes", null, 1000000, 10000),
    ("2", "Casual Sandals", null, 250000, 5000),
    ("3", "Hoodie Unisex", null, 400000, 8900),
    ("4", "Toner Face", null, 60000, 4000),
    ("5", "Body Scrub", null, 50000, 12000),
    ("6", "Law School", null, 100000, 6327),
    ("7", "Baby Lotion", null, 50000, 44783),
    ("8", "Earrings", null, 50000, 5462),
    ("9", "Shoulder Bag", null, 300000, 7732),
    ("10", "Hijab", null, 50000, 1356);

INSERT INTO cart
    (customer_id, total_price)
VALUES
    (1, 2400000),
    (2, 400000),
    (3, 320000),
    (4, 150000),
    (5, 50000),
    (6, 600000),
    (7, 200000),
    (8, 400000),
    (9, 1500000),
    (10, 100000);

INSERT INTO cart_item
    (cart_id, product_id, quantity, subtotal)
VALUES
    (1, 1, 2, 2000000),
    (1, 3, 1, 400000),
    (2, 2, 1, 250000),
    (2, 5, 3, 150000),
    (3, 4, 2, 120000),
    (3, 6, 1, 100000),
    (4, 7, 3, 150000),
    (5, 8, 1, 50000),
    (6, 9, 2, 600000),
    (7, 5, 4, 200000),
    (8, 2, 1, 400000),
    (9, 9, 5, 1500000),
    (10, 10, 2, 100000);

INSERT INTO `order`
    (customer_id, order_date, total_amount)
VALUES
    (1, '2024-01-01 10:30:00', 1500000),
    (2, '2024-01-02 11:45:00', 750000),
    (3, '2024-01-03 12:15:00', 1200000),
    (4, '2024-01-04 09:00:00', 180000),
    (5, '2024-01-05 15:20:00', 600000),
    (6, '2024-01-06 14:00:00', 90000),
    (7, '2024-01-07 08:45:00', 200000),
    (8, '2024-01-08 16:30:00', 2000000),
    (9, '2024-01-09 13:10:00', 1500000),
    (10, '2024-01-10 09:45:00', 500000);

INSERT INTO order_item
    (order_id, product_id, quantity, subtotal)
VALUES
    (1, 1, 2, 200000),
    (1, 3, 1, 300000),
    (2, 2, 1, 150000),
    (2, 5, 3, 450000),
    (3, 4, 2, 120000),
    (3, 6, 1, 900000),
    (4, 7, 3, 150000),
    (5, 8, 1, 2000000),
    (6, 9, 2, 1200000),
    (7, 10, 1, 500000);