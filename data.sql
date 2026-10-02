-- ==============================================================
-- SMART CANTEEN ORDERING SYSTEM - INITIAL SEED DATA
-- Target Database: MySQL 8.0+
-- ==============================================================

USE smart_canteen_db;

-- 1. Insert Categories
INSERT INTO categories (id, name, description, icon, display_order) VALUES
(1, 'Breakfast', 'Hot & fresh morning delicacies', 'fa-mug-hot', 1),
(2, 'Meals', 'Wholesome South & North Indian lunch platters', 'fa-bowl-rice', 2),
(3, 'Rice & Biryani', 'Fragrant biryanis and authentic fried rice', 'fa-utensils', 3),
(4, 'Snacks', 'Crispy afternoon snacks & tea-time favorites', 'fa-cookie-bite', 4),
(5, 'Fast Food', 'Noodles, burgers, rolls, and fries', 'fa-burger', 5),
(6, 'Beverages', 'Refreshing cold beverages, juices & hot brews', 'fa-glass-water', 6),
(7, 'Desserts', 'Traditional Indian sweets & sweet treats', 'fa-ice-cream', 7)
ON DUPLICATE KEY UPDATE name=name;

-- 2. Insert Default Users (Admin and Demo Student)
-- Admin Password: Admin@123 (BCrypt: $2a$10$7Z8qMlhKkWFqQvD7Ld123.placeholder... or dynamic)
-- Note: Spring Boot DataInitializer dynamically encodes these with BCrypt on startup if missing.

-- 3. Insert Sample Indian Food Items
INSERT INTO food_items (id, name, description, price, image_url, category_id, is_vegetarian, stock_quantity, is_available) VALUES
(1, 'Idli (2 pcs)', 'Steamed fluffy rice cakes served with sambar and coconut chutney', 35.00, 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=500&auto=format&fit=crop&q=80', 1, TRUE, 50, TRUE),
(2, 'Medu Vada (2 pcs)', 'Crispy golden lentil donuts served with tangy sambar and podi chutney', 40.00, 'https://images.unsplash.com/photo-1626777552726-4a6b54c97e46?w=500&auto=format&fit=crop&q=80', 1, TRUE, 40, TRUE),
(3, 'Masala Dosa', 'Crispy golden crepe filled with spiced mashed potato filling served with 3 chutneys', 60.00, 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=500&auto=format&fit=crop&q=80', 1, TRUE, 45, TRUE),
(4, 'Ghee Pongal', 'Tempered rice and moong dal cooked in pure desi ghee with cashews and peppercorns', 45.00, 'https://images.unsplash.com/photo-1626777552726-4a6b54c97e46?w=500&auto=format&fit=crop&q=80', 1, TRUE, 35, TRUE),
(5, 'Poori Masala (3 pcs)', 'Puffed whole wheat pooris served with savory potato onion masala', 50.00, 'https://images.unsplash.com/photo-1626777552726-4a6b54c97e46?w=500&auto=format&fit=crop&q=80', 1, TRUE, 30, TRUE),
(6, 'South Indian Veg Meals', 'Unlimited rice, sambar, rasam, kootu, poriyal, appalam, curd, and sweet', 90.00, 'https://images.unsplash.com/photo-1610057099443-fde8c4d50f91?w=500&auto=format&fit=crop&q=80', 2, TRUE, 60, TRUE),
(7, 'Special Mini Thali', 'Rice, paneer butter masala, dal tadka, 2 chapatis, salad, raita, and gulab jamun', 120.00, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format&fit=crop&q=80', 2, TRUE, 40, TRUE),
(8, 'Chicken Dum Biryani', 'Aromatic long-grain basmati rice slow-cooked with tender chicken and authentic spices', 160.00, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format&fit=crop&q=80', 3, FALSE, 50, TRUE),
(9, 'Paneer Fried Rice', 'Wok-tossed basmati rice with crunchy veggies and succulent spiced paneer cubes', 110.00, 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=500&auto=format&fit=crop&q=80', 3, TRUE, 40, TRUE),
(10, 'Veg Samosa (2 pcs)', 'Crispy flaky pastry stuffed with spiced potato and green peas, served with mint chutney', 30.00, 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format&fit=crop&q=80', 4, TRUE, 60, TRUE),
(11, 'Crispy French Fries', 'Golden salted potato fries served with creamy mayonnaise and tomato ketchup', 70.00, 'https://images.unsplash.com/photo-1576107232684-1279f3908594?w=500&auto=format&fit=crop&q=80', 5, TRUE, 50, TRUE),
(12, 'South Indian Filter Coffee', 'Aromatic chicory-blended dark roast filter coffee with frothy hot whole milk', 20.00, 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=500&auto=format&fit=crop&q=80', 6, TRUE, 100, TRUE),
(13, 'Cold Coffee with Ice Cream', 'Rich creamy blended iced coffee topped with a generous scoop of vanilla ice cream', 60.00, 'https://images.unsplash.com/photo-1517701550927-30cf4ba1dba5?w=500&auto=format&fit=crop&q=80', 6, TRUE, 45, TRUE),
(14, 'Gulab Jamun (2 pcs)', 'Soft melt-in-mouth milk solids dumplings soaked in warm fragrant cardamom saffron syrup', 45.00, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format&fit=crop&q=80', 7, TRUE, 40, TRUE)
ON DUPLICATE KEY UPDATE name=name;
