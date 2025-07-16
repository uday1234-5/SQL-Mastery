SELECT * FROM items;
SELECT * FROM variants;


SELECT * FROM items
CROSS JOIN variants;


SELECT *, CONCAT(name, " - ",variant_name) AS full_name FROM items
CROSS JOIN variants;



SELECT *, CONCAT(name, " - ",variant_name) AS full_name, (price+ variant_price) AS totalPrice FROM items
CROSS JOIN variants;


 