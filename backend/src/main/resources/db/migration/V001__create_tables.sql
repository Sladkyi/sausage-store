CREATE TABLE IF NOT EXISTS product (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    picture_url VARCHAR(255),
    price NUMERIC(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
    id BIGSERIAL PRIMARY KEY,
    status VARCHAR(50) NOT NULL,
    date_created DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS order_product (
    order_id BIGINT NOT NULL REFERENCES orders(id),
    product_id BIGINT NOT NULL REFERENCES product(id),
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_id)
);
