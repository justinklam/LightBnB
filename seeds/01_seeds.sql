-- SEED DATA FOR USERS
INSERT INTO users
VALUES (1, 'Ciri', 'ciri@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(2, 'Geralt', 'geralt@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(3, 'Yennefer', 'yennefer@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
(4, 'Triss', 'triss@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

-- SEED DATA FOR PROPERTIES
INSERT INTO properties
VALUES (1, 1, 'Kaer Morhen', 'description', 'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg', 500, 2, 3, 3, 'Kaedwen', 'Mountain', 'Forest', 'Hertch', 'W3R 2R8', TRUE),
(2, 2, 'Port Now', 'description', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg', 1000, 2, 3, 4, 'Canada', 'Woodsy', 'Forestpath', 'British Columbia', 'W5S 2R9', TRUE),
(3, 3, 'Habit Good', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350 ', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg ', 300, 1, 2, 2, 'Canada', 'Beachway', 'Oakpath', 'Ontario', 'W6T 3R1', TRUE);

-- SEED DATA FOR RESERVATIONS
INSERT INTO reservations
VALUES (1, '2018-07-11', '2018-07-13', 1, 1 ),
(2, '2019-01-04' , '2019-01-07', 2, 2 ),
(3, '2021-10-01' , '2021-10-06', 3, 4 );

-- SEED DATA FOR PROPERTY REVIEWS
INSERT INTO property_reviews
VALUES (1, 1, 1, 1, 10, 'messages'),
(2, 2, 2, 2, 8, 'messages'),
(3, 3, 3, 3, 6, 'messages');