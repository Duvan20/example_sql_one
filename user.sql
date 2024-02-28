-- Active: 1709059944563@@brh36myvd46dgpcdfeic-mysql.services.clever-cloud.com@3306@brh36myvd46dgpcdfeic
CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45),
    last_name VARCHAR(45),
    email VARCHAR(45) UNIQUE NOT NULL,
    gender VARCHAR(45),
    document VARCHAR(45),
    document_type_id INT
);

--table strong
CREATE TABLE option_document(
    id INT PRIMARY KEY AUTO_INCREMENT,
    type_document VARCHAR(30)
);


--show option document
INSERT INTO option_document(type_document)VALUES("T.I"),("C.C")

--Join table
ALTER TABLE users ADD FOREIGN KEY(document_type_id) REFERENCES option_document(id);

--show USER
INSERT INTO users(name,last_name,email,gender,document,document_type_id)
VALUES("Duvan","Montoya","Duvan@test.com","M","102156445",1),("laura","tamarindo","laura@test.com","F","102145445",2)

--delete table USER
DROP TABLE document_type

