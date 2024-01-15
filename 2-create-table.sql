CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR
(50),
    phone VARCHAR
(50),
    city VARCHAR
(50),
    full_address VARCHAR
(255),
    email VARCHAR
(50)
);

CREATE TABLE product_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR
(50)
);

CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    product_name VARCHAR
(50),
    description_product TEXT,
    price DECIMAL,
    stock INT,
    FOREIGN KEY
(category_id) REFERENCES product_category
(category_id)
);

CREATE TABLE cart (
    cart_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    total_price DECIMAL,
    FOREIGN KEY
(customer_id) REFERENCES customer
(customer_id)
);

CREATE TABLE cart_item (
    cart_item_id INT PRIMARY KEY AUTO_INCREMENT,
    cart_id INT,
    product_id INT,
    quantity INT,
    subtotal DECIMAL,
    FOREIGN KEY
(cart_id) REFERENCES cart
(cart_id),
    FOREIGN KEY
(product_id) REFERENCES product
(product_id)
);

CREATE TABLE `order`
(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL,
    FOREIGN KEY
(customer_id) REFERENCES customer
(customer_id)
);

CREATE TABLE order_item (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    subtotal DECIMAL,
    FOREIGN KEY
(order_id) REFERENCES `order`
(order_id),
    FOREIGN KEY
(product_id) REFERENCES product
(product_id)
);