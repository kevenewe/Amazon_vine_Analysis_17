CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products_table (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers_table (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

drop table filt_vine_table;

Create Table filt_vine_table As
  Select * from vine_table
  where total_votes >20
  
select * from filt_vine_table
  
drop table hvpct;
	select * 
	into hvpct
	FROM filt_vine_table
	WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5

select * from hvpct

ALTER TABLE	hvpct
add column perchv Float;
update hvpct
set perchv =
	CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT);


Select * from hvpct

Select * 
	into con_vine_rev_Y
	from filt_vine_table
	where vine = 'Y'

select * from con_vine_rev_Y

Select * 
	into con_vine_rev_N
	from filt_vine_table
	where vine = 'N'

select * from con_vine_rev_N

DROP Table star_rev_5;
CREATE TABLE star_rev_5 (
	Vine_5_Star_reviews INTEGER,
	per_vine_5_star Float,
 	noVine_5_star_reviews INTEGER,
	per_non_5_star_reviews Float);

drop table V_5_star_reviews;
select count(*) into V_5_Star_reviews
	from con_vine_rev_Y
where star_rating=5;

Select * from V_5_Star_reviews

Select count(*) into V_total_reviews
	from con_vine_rev_Y
	where vine = 'Y'
Select * from V_total_reviews

drop table nV_5_star_reviews;
select count(*) into NV_5_Star_reviews
	from con_vine_rev_N
where star_rating=5;

Select * from NV_5_Star_reviews

Select count(*) into NV_total_reviews
	from con_vine_rev_N
	where vine = 'N'
Select * from NV_total_reviews

INSERT INTO 
star_rev_5(Vine_5_Star_reviews, per_vine_5_star, noVine_5_star_reviews, per_non_5_star_reviews )
VALUES
  (247, .42078364565, 24825,.44827461673)
  RETURNING *;

