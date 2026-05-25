CREATE INDEX IF NOT EXISTS idx_orders_status ON orders(status);
CREATE INDEX IF NOT EXISTS idx_orders_date ON orders(date_created);
CREATE INDEX IF NOT EXISTS idx_order_product_product ON order_product(product_id);
