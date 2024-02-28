-- Active: 1709059944563@@brh36myvd46dgpcdfeic-mysql.services.clever-cloud.com@3306@brh36myvd46dgpcdfeic
CREATE TABLE parking(
    id INT PRIMARY KEY AUTO_INCREMENT,
    exit_entrance VARCHAR(45),
    arrival_entrace VARCHAR(45) NOT NULL,
    status_id INT,
    car_id INT,
    square_id INT 
);


--strong TABLE
CREATE TABLE option_status(
    id INT PRIMARY KEY AUTO_INCREMENT,
    type_status VARCHAR(45)
);

--strong table squere
CREATE TABLE option_squere(
    id INT PRIMARY KEY AUTO_INCREMENT,
    squere VARCHAR(45)
);

DROP TABLE time_parking()

--intert in tables

--inset date in table strong squere
INSERT INTO option_squere(squere)VALUES("A1"),("A2"),("B1"),("B2"),("C1"),("C2"),("D1"),("D2")

--inser date in table strong STATUS
INSERT INTO option_status(type_status)VALUES("Activo"),("Inactivo")

--inser date in table parking
INSERT INTO parking(arrival_entrace,status_id,car_id,square_id)VALUES("10:00",1,4,3),("12:00",1,3,2)


--conection with tables
ALTER TABLE parking ADD FOREIGN KEY (status_id) REFERENCES option_status(id);

ALTER TABLE parking ADD FOREIGN KEY (square_id) REFERENCES option_squere(id);


ALTER TABLE parking ADD FOREIGN KEY (car_id) REFERENCES cars(id);


DROP TABLE list_cars


SELECT users.name,users.last_name,parking.exit_entrance,parking.arrival_entrace,option_status.type_status,option_squere.squere 
FROM parking 
INNER JOIN users 
INNER JOIN option_status 
INNER JOIN option_squere
INNER JOIN cars
 WHERE parking.car_id = cars.id AND
 parking.status_id = option_status.id AND
 parking.square_id = option_squere.id AND
 parking.car_id = cars.id AND
 cars.usuario_id = users.id
 
TRUNCATE parking

UPDATE parking
set exit_entrance = "18:00",status_id = 1
WHERE id = 2



