-- All My Reservations
-- When a user is logged in, they will have an option to view all of their reservations. This page will show details about a reservation and details about the property associated with the reservation.

-- Although users will need to see a lot of data from the reservations table on the website, for now, we're going to build this query by selecting just a few columns. That way it's easy to see in the terminal. Later we'll use this query in our app and alter it slightly to select more columns.

-- Show all reservations for a user.

-- Select the reservation id, property title, reservation start_date, property cost_per_night and the average rating of the property. You'll need data from both the reservations and properties tables.
-- The reservations will be for a single user, so just use 1 for the user_id.
-- Order the results from the earliest start_date to the most recent start_date.
-- Limit the results to 10.

SELECT reservations.id, title, cost_per_night, start_date, avg(pr.rating) average_rating
FROM properties
INNER JOIN reservations ON properties.id = reservations.property_id
INNER JOIN property_reviews pr ON pr.property_id = reservations.property_id 
WHERE reservations.guest_id = 4
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;