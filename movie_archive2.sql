-- 1) yorumlarında harika olarak ifade edilen filmlerin id, yorum ve puanlarını getirin
SELECT film_id, elestiri_metin, puan
FROM elestiriler
WHERE elestiri_metin LIKE '%harika%';

-- 2) Ahmet beyin yaptığı elestirilerden puan 9.6 uzerinde olan elestirileri getirin
SELECT * 
FROM elestiriler
WHERE elestirmen LIKE '%AHmet Bey%' and puan >= 9.6;

-- 3) Yüzüklerin efendisi filmi kaç seri olarak çekildiğini getirin
SELECT * FROM filmler
WHERE film_ad LIKE '%Yüzüklerin Efendisi%';

-- 4) Gerilim türünde 100-300 dakika arasında olan filmleri getirin
SELECT * FROM filmler
WHERE tur = 'Gerilim' AND sure BETWEEN 100 AND 300;

-- 5) Gerilim veya Dram türündeki filmleri getirin 
SELECT * FROM filmler
WHERE tur LIKE  'Gerilim' OR tur LIKE  'dram%';

-- 6) Afişi olan film sayısını getirin
SELECT * FROM filmler
WHERE poster IS NOT  NULL;

-- 7) Afişi olan en kısa süreli filmi getirin
SELECT * FROM filmler
WHERE poster IS NOT  NULL
ORDER BY sure DESC
LIMIT 1;

-- 8) Tarantino nun en uzun süreye sahip  olan filminin imdb_puanını getirin 
SELECT  imdb_puan FROM filmler 
WHERE yonetmen LIKE  '%Tarantino%' 
ORDER BY sure ASC 
LIMIT 1;

-- 9) Dram türündeki filmlerin ortalama sürelerini getirin
SELECT AVG(sure) AS ortalama_puan
FROM filmler 
WHERE tur = 'dram';

-- 10) Ödüllü filmlerin sayısını getirin 
SELECT COUNT(*) FROM filmler 
WHERE film_odul  IS NOT NULL;

-- 11) En uzun süreli film en kısa süreli filmden kac dakika fazla oldugunu getirin
SELECT MAX(sure)- MIN(sure) AS fark FROM filmler;


-- Hayri Bey'in eleştiri yaptığı filmlerin adını getirin 
SELECT film_ad FROM elestiriler
JOIN filmler ON filmler.film_id = elestiriler.film_id
WHERE elestirmen LIKE 'Hayri%';