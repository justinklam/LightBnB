SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;

-- FROM reservations since it's the one we're basing this on
-- Join properties with reservations.property_id so that it's linked to properties.id and we can access all columns that way
-- Same with property_reviews
-- Group by so that we get all the aggregated properties.id/res.id, otherwise it'll show all for each one