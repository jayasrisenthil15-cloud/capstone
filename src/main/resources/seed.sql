USE jayasrimart;

-- Admin Account Only (Initial Seed Data)
INSERT INTO users (name, email, password, role) VALUES 
('System Admin', 'admin@jayasrimart.com', 'admin123', 'ADMIN')
ON DUPLICATE KEY UPDATE name=VALUES(name);

-- Sample Category Products
INSERT INTO products (name, price, category, image_url) VALUES 
('Laptop (15-inch, 8GB)', 28999.00, 'Electronics', 'laptop.jpg'),
('Wireless Headphones', 1299.00, 'Electronics', 'headphones.jpg'),
('Campus Backpack', 799.00, 'Fashion', 'bag.jpg'),
('12GMS Stylish Kurti', 205.00, 'Fashion', 'kurti.jpg'),
('Notebook (Set of 5)', 249.00, 'Books', 'books.jpg'),
('Sports Running Shoes', 1499.00, 'Sports', 'shoes.jpg')
ON DUPLICATE KEY UPDATE name=VALUES(name);
