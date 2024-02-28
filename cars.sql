-- Active: 1709059944563@@brh36myvd46dgpcdfeic-mysql.services.clever-cloud.com@3306@brh36myvd46dgpcdfeic
CREATE TABLE cars(
    id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(45),
    plate VARCHAR(45),
    usuario_id INT,
    type_cars_id INT,
    color_id INT,
    brand_id INT,
    squere_id INT
);

--DELETE CARS 
DROP TABLE cars


--strong squere
CREATE TABLE squere(
    id INT PRIMARY KEY AUTO_INCREMENT,
    number_squere VARCHAR(45)
);

INSERT INTO squere(number_squere)VALUES("A1"),("B2"),("C3"),("D4")

--strong table type_cars
CREATE TABLE option_cars(
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_cars VARCHAR(20)
);

--strong table color
CREATE TABLE option_color(
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_color VARCHAR(20)
);

--strong table brand
CREATE TABLE option_brand(
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_brand VARCHAR(20)
);

--show cars
INSERT INTO cars(model,plate,usuario_id,type_cars_id,color_id,brand_id,squere_id)
VALUES("2020","ASD-292",1,2,3,2,4),
("2018","DTF-850",2,1,2,1,2)

--show type_cars
INSERT INTO option_cars(type_cars)VALUES("car"),("motorcycle")


--show option color
INSERT INTO option_color(type_color)VALUES("blue"),("red"),("black")

--show option brand 
INSERT INTO option_brand(type_brand)VALUES("duke"),("mercedes"),("chevrolet")

--join cars with option_cars
ALTER TABLE cars ADD FOREIGN KEY (type_cars_id) REFERENCES option_cars(id);

--join cars with option_color
ALTER TABLE cars ADD FOREIGN KEY (color_id) REFERENCES option_color(id);

--join cars with option_brand
ALTER TABLE cars ADD FOREIGN KEY(brand_id) REFERENCES option_brand(id);


--join cars with users
ALTER TABLE cars ADD FOREIGN KEY(usuario_id) REFERENCES users(id)

--delete table 
DROP TABLE cars

--
SELECT users.name,users.last_name,cars.plate,users.gender,users.email,option_cars.type_cars 
FROM cars 
INNER JOIN users 
INNER JOIN option_brand 
INNER JOIN option_cars
INNER JOIN option_color
INNER JOIN option_document
 WHERE cars.usuario_id= users.id and 
 cars.brand_id=option_brand.id AND
 cars.color_id = option_color.id AND
 users.document_type_id = option_document.id AND
 cars.type_cars_id = option_cars.id

CREATE VIEW list_cars as SELECT * FROM cars

-- delete vist or funncion what save in VIEW
DROP VIEW list_cars
