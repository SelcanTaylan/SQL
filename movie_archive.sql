INSERT INTO filmler
VALUES (NULL,'Ruhların kaçışı','Hayao Miyazaki',2001,'Fantastik Macera',125,NULL,9.5,1);

SELECT film_id
FROM filmler
WHERE film_ad = 'Ruhların Kaçışı';

UPDATE filmler
SET sure = 108, film_odul = false
WHERE film_id = 233;

DELETE FROM filmler WHERE film_id = 233;

SELECT elestiri_metin, elestiri_id,elestirmen
FROM elestiriler;

SELECT film_id, puan, elestirmen
FROM elestiriler
WHERE puan >= 8.5;

SELECT * 
FROM filmler
ORDER BY imdb_puan ASC
LIMIT 10;

SELECT * 
FROM elestiriler
WHERE elestiri_metin IS NULL;

SELECT * 
FROM filmler
WHERE poster IS NOT NULL;


SELECT *
FROM filmler
WHERE yil < 1990 AND imdb_puan >= 8 AND sure <= 100;

-- SURSİ 100 DK ALTINDA KAÇ FİLM VAR

SELECT *
FROM filmler
WHERE sure < 100;

-- 1990, 2001, 2010,2015 YILLARINDA ÇEKİLEN FİLMLER
SELECT *
FROM filmler 
WHERE yil IN (1990,2001,2010,2015);

-- dram turundeki filmler 
SELECT *
FROM filmler
WHERE tur LIKE '%dram%';
-- yonetmeni chris olan filmler
 SELECT *
 FROM filmler
 WHERE yonetmen LIKE '%Chris%';
 -- 1990 ile 2000 arasındaki filmler
SELECT *
FROM filmler
WHERE yil BETWEEN 1990 AND 2000;


-- 1990 ile 2000 yılları arasında en uzun sureye sahip filmlerin suresını getir
SELECT sure
FROM filmler
WHERE yil BETWEEN 1990 AND 2000 
ORDER BY  sure DESC;

-- 2000 sonrası en kısa sureye sahip film
SELECT *
FROM filmler
WHERE yil>=2000
LIMIT 1;

-- 2000 sonrası cekilen filmleri ortalama suresı
SELECT AVG(sure) AS ortalama_sure
FROM filmler;

-- 1990 ile 2000 yılları arasında en kısa dram turundeki filmin adını, turunu, ve suresını getir
SELECT film_ad, tur,sure
FROM filmler
WHERE yil BETWEEN 1990 AND 2000
ORDER BY tur LIKE '%dram%'
LIMIT 1;


-- 7 numaralı filmin ortalama elestiri puanı 
SELECT AVG(puan) AS ortalama_puan 
FROM elestiriler 
WHERE film_id = 7;
 

-- 2024 mart ayında kac farklı filme elestiri yapıldıgını listele
 SELECT COUNT(DISTINCT film_id) AS toplam_yorum FROM elestiriler 
 WHERE elestiri_tarihi BETWEEN '2024-03-01' AND '2024-03-31';
 

 
 
