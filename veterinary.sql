CREATE DATABASE veterinary;

CREATE TABLE owners (

ownerid INT,
ofirstname VARCHAR(50),
olastname VARCHAR(50),
address VARCHAR(100),
phone VARCHAR(100),
email VARCHAR(100),
PRIMARY KEY (ownerid)
);

CREATE TABLE animals (

animalid INT PRIMARY KEY,
name VARCHAR(50),
species VARCHAR(50),
breed VARCHAR(50),
dateofbirth DATE,
gender VARCHAR(10),
color VARCHAR(50),
ownerid INT,
FOREIGN KEY ownerid REFERENCES owners(ownerid)

);

CREATE TABLE appointments (

appointid INT,
animalid INT,
appointdate DATE,
reason VARCHAR(255),
PRIMARY KEY (appointid),
FOREIGN KEY animalid REFERENCES animals(animalid)

);

CREATE TABLE doctors (

dortorid INT,
dfirstnames VARCHAR (50),
dlastname VARCHAR (50),
specialty VARCHAR (100),
phone VARCHAR (15),
email VARCHAR (100),
PRIMARY KEY (doctorid)

);

CREATE TABLE medicalrecords (

recordid INT PRIMARY KEY,
animalid INT,
recorddate TIMESTAMP,
doctorid INT,
diagnosis TEXT,
prescription TEXT,
notes TEXT,
FOREIGN KEY animalid REFERENCES animals(animalid),
FOREIGN KEY doctorid REFERENCES doctors(doctorid)

);

INSERT INTO animals(animalid, name, species, breed, dateofbirth, gender, color, ownerid),
VALUES  (1,'Fido','Dog', 'Golden Retriever', '2018-0-15', 'Male', 'Golden', 1),
(2,'Whiskers', 'Cat', 'Siamese', '2019-07-20', 'Female', 'Cream', 2),
(3,'Rocky', 'Dog', 'German Shepherd', '2017-25-10', 'Male', 'Black and Tan', 3),
(4,'Fluffy', 'Cat', 'Persian', '2020-01-30', 'Male', 'White', 4),
(5,'Luna', 'Dog', 'Labrador Retriever', '2019-11-25', 'Female', 'Yellow' 5),
(6,'Mochi', 'Cat', 'Maine Coon', '2018-09-12', 'Male', 'Browwn Tabby', 6),
(7,'Bella', 'Dog', 'Poodle', '2020-04-05', 'Female', 'White', 7),
(8,'Simba', 'Cat', 'Bengal', '2018-06-18', 'Male', 'Spotted Rosetted', 8,)
(9,'Max', 'Dog', 'Dachshund', '2020-07-14', 'Male', 'Black and Tan', 9),
(10,'Cleo', 'Cat', 'Ragdoll', '2019-12-22', 'Female', 'Seal Point', 10);

CREATE TABLE invoices (

invoicesid INT,
appointid INT,
totalamount NUMERIC(10,2),
paymentdate TIME,
PRIMARY KEY (invoiceid),
FOREIGN KEY appointid REFERENCES appointments(appointid)

);

INSERT INTO owners(ownerid,ofirstname,olastname,address,phone,email)
VALUES (1,'Juan','Dela Cruz','123 Main St,Manila','123-456-7890','juan@example.com'),
(2,'Maria','Santos','456 Elm St, Quezon City','987-654-3210','maria@example.com'),
(3,'Antonio','Gonzales','789 Oak St, Cebu','555-123-4567','antonio@example.com'),
(4,'Elena','Rodriguez','345 Pine St, Davao','777-888-9999','elena@example.com'),
(5,'Ricardo','Lim','987 Cedar St, Makati','222-333-4444','ricardo@example.com'),
(6,'Isabel','Reyes','111 Acacia St, Pasig','999-000-1111','isabel@example.com'),
(7,'Luis','Torres','555 Maple St, Mandaluyong','123-555-7777','luis@example.com'),
(8,'Carmen','Fernandez','222 Birch St, Taguig','333-222-1111','carmen@example.com'),
(9,'Pedro','Santillan','888 Spruce St, Bacolod','888-777-6666','pedro@example.com'),
(10,'Sofia','Villanueva','777 Walnut St, Iloilo','111-999-3333','sofia@example.com');

INSERT INTO appointments (appointid, animalid, appointdate, reason)
 VALUES (1, 1, '2023-01-05', 'Annual check-up'),
(2, 2, '2023-01-10', 'Vaccination'),
(3, 3, '2023-02-02', 'injury assessment'),
(4, 4, '2023-02-15', 'Dental cleaning'),
(5, 5, '2023-03-05', 'Skin condition'),
(6, 6, '2023-03-10', 'Check for fleas'),
(7, 7, '2023-04-12', 'Vaccination'),
(8, 8, '2023-04-18', 'Spraying/neutering'),
(9, 9, '2023-05-02', 'Allergy treatment'),
(10,10,'2023-05-20', 'Eye infection');