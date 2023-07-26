-- Film tablosunda bulunan "replacement_cost" sütununda bulunan birbirinden farklı değerleri sıralayın ve sayın
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_count
FROM film;

-- Film tablosunda bulunan film isimlerinde ("title") "T" karakteri ile başlayan ve aynı zamanda "rating" değeri 'G' ye eşit olan filmlerin sayısını bulun
SELECT COUNT(*) AS film_count_with_t_and_g_rating
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- Country tablosunda bulunan ülke isimlerinden ("country") kaç tanesi 5 karakterden oluşmaktadır
SELECT COUNT(*) AS five_character_country_count
FROM country
WHERE LENGTH(country) = 5;

-- City tablosundaki şehir isimlerinin kaç tanesi 'R' veya 'r' karakteri ile biter
SELECT COUNT(*) AS city_count_ending_with_r
FROM city
WHERE city LIKE '%r' OR city LIKE '%R';
