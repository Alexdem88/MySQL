USE food_market;

#ВЫВОДИМ ПРОСРОЧКУ

SELECT * FROM product p 

#WHERE expiration_date < "2022-12-26" ;

#ВЫВОДИМ ПРОДУКТЫ С ПРОСРОЧКОЙ В ЭТОМ ГОДУ
#WHERE YEAR(CURRENT_TIMESTAMP) - YEAR(expiration_date) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(expiration_date, 5)) <1;


