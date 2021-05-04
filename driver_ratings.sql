drop view if exists driver_ratings;
create view driver_ratings as
SELECT d.driver_id, d.date_hired, AVG(d.rating) AS avg_rating, o.order_id,
	CASE WHEN d.rating > AVG(d.rating) THEN 'Excellent'
	WHEN d.rating = AVG(d.rating) THEN 'Good'
	ELSE 'Poor' END AS Performance
FROM
	(SELECT driver_id, date_hired, rating
	FROM driver) AS d
INNER JOIN Orders AS o
ON d.driver_id = o.driver_id
GROUP BY o.order_id;
