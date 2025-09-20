CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    hired_date DATE
);

CREATE TABLE Vehicles (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    make VARCHAR(20) NOT NULL,
    model VARCHAR(20),
    number_plate VARCHAR(10) NOT NULL,
    next_mot DATE
);

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE
);

CREATE TABLE Rentals (
    rental_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT,
    customer_id INT,
    vehicle_id INT,
    loan_date DATE,
    return_date DATE NOT NULL,
    price INT NOT NULL,
    returned BOOL NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
);
