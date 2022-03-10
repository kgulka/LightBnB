INSERT into users (name, email, password) 
values ('John', 'john@here.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
('George', 'george@here.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
('Ringo', 'ringo@here.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT into properties (owner_id, title, description, thumbnail_photo_url,
  cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms,
  number_of_bedrooms, country , street, city, province, post_code, active) 
values (1, 'Big Property', 'Big Property description', 'thumbnail_photo_url', 'cover_photo_url', 300, 4, 5, 5, 'Canada', '123 Center Street', 'Calgary', 'Alberta','T2P 0A0', true),
(1, 'Medium Property', 'Medium Property description', 'thumbnail_photo_url', 'cover_photo_url', 250, 2, 3, 3, 'Canada', '312 Calgary Trail', 'Edmonton', 'Alberta','T2P 0A0', true),
(3, 'Small Property', 'Small Property description', 'thumbnail_photo_url', 'cover_photo_url', 150, 1, 1, 2, 'Canada', '312 Gaetz Avenue', 'Red Deer', 'Alberta','T2P 0A0', true);

INSERT INTO reservations 
  (start_date, end_date, property_id, guest_id) VALUES 
  ('2022-02-11', '2022-02-18', 1, 3), 
  ('2022-03-11', '2022-03-18', 2, 1),
  ('2022-04-11', '2022-04-18', 2, 3);


INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) VALUES 
(3, 1, 1, 4,'Blah Blah Blah good.'),
(1, 2, 2, 3,'Blah Blah Blah ok.'),
(3, 2, 3, 1,'Blah Blah Blah not so good.');
