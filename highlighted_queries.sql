-- Irrelevant tables (not needed for core functionality)
CREATE TABLE Area (
    area_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    county VARCHAR(20) NOT NULL,
    country VARCHAR(30) NOT NULL
);

CREATE TABLE Customer (
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_count INT NOT NULL,
    purchase_history TEXT
);

CREATE TABLE Answer (
    answer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    answer_text TEXT,
    customer_id INT NOT NULL,
    question_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (question_id) REFERENCES Question(question_id)
);

CREATE TABLE SubCategory (
    sub_category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sub_category_name VARCHAR(100) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE Question (
    question_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    uniq_id INT NOT NULL,
    question_text TEXT,
    customer_id INT NOT NULL,
    answer_id INT NOT NULL,
    FOREIGN KEY (uniq_id) REFERENCES Product(uniq_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (answer_id) REFERENCES Answer(answer_id)
);

CREATE TABLE CustomerOrder (
    order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    uniq_id INT NOT NULL,
    delivery_date DATE NOT NULL,
    delivery_status ENUM('Pending', 'Processed', 'Shipped', 'In Transit', 'Out for Delivery', 'Delivered', 'Cancelled', 'Returned') NOT NULL DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (uniq_id) REFERENCES Product(uniq_id)
);

CREATE TABLE Vehicle (
    vehicle_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vehicle_type VARCHAR(100) NOT NULL,
    registration_plate VARCHAR(8) NOT NULL
);

CREATE TABLE Review (
    review_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    uniq_id INT NOT NULL,
    rating DECIMAL(2, 1) CHECK (rating >= 0 AND rating <= 5),
    is_rating_low BOOLEAN,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (uniq_id) REFERENCES Product(uniq_id)
);

CREATE TABLE LeaveManagement (
    employee_id INT NOT NULL,
    years_employed INT NOT NULL,
    annual_leave_total INT NOT NULL DEFAULT 28,
    annual_leave_left INT,
    is_on_leave BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (employee_id) REFERENCES Employee(id),
    PRIMARY KEY (employee_id)
);

CREATE TABLE PA (
    employee_id INT NOT NULL,
    average_response_satisfaction DECIMAL(2, 1) CHECK (average_response_satisfaction >= 0 AND average_response_satisfaction <= 5),
    FOREIGN KEY (employee_id) REFERENCES Employee(id),
    PRIMARY KEY (employee_id)
);

CREATE TABLE EmergencyContact (
    employee_id INT NOT NULL,
    emergency_name VARCHAR(100),
    emergency_relationship VARCHAR(100),
    emergency_phone VARCHAR(15),
    PRIMARY KEY (employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

-- Core tables (the actual important ones)
CREATE TABLE Employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position_id INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL CHECK (salary > 0),
    email VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    office_id INT NOT NULL,
    address_id INT NOT NULL,
    hired_date DATE NOT NULL DEFAULT CURRENT_DATE,
    contract VARCHAR(50) NOT NULL DEFAULT 'Full-Time',
    nin VARCHAR(9) NOT NULL,
    employment_history TEXT,
    FOREIGN KEY (position_id) REFERENCES Position(position_id),
    FOREIGN KEY (office_id) REFERENCES Office(office_id),
    FOREIGN KEY (address_id) REFERENCES Address(address_id)
);

CREATE TABLE Department (
    department_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    description TEXT,
    manager_id INT NOT NULL,
    FOREIGN KEY (manager_id) REFERENCES Employee(id)
);

CREATE TABLE Position (
    position_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_id INT NOT NULL,
    position_name VARCHAR(100) NOT NULL,
    min_salary DECIMAL(10, 2) NOT NULL,
    max_salary DECIMAL(10, 2),
    bonus DECIMAL(10, 2),
    is_executive BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Address (
    address_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    address_line_one VARCHAR(255) NOT NULL,
    address_line_two VARCHAR(255) DEFAULT NULL,
    country VARCHAR(100) DEFAULT NULL,
    post_code VARCHAR(8) DEFAULT NULL
);

CREATE TABLE EmergencyContact (
    employee_id INT NOT NULL,
    emergency_name VARCHAR(100),
    emergency_relationship VARCHAR(50),
    emergency_phone VARCHAR(15),
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE Office (
    office_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    address_id INT DEFAULT NULL,
    office_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(16),
    website VARCHAR(100),
    average_rating DECIMAL(2, 1) DEFAULT NULL CHECK (average_rating >= 0 AND average_rating <= 5),
    FOREIGN KEY (address_id) REFERENCES Address(address_id)
);

CREATE TABLE User (
    employee_id INT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE EmployeeAudit (
    audit_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    deleted_employee_name VARCHAR(255) NOT NULL,
    deleted_employee_email VARCHAR(255) NOT NULL,
    deleted_by_user_id INT NOT NULL,
    deletion_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (deleted_by_user_id) REFERENCES User(employee_id)
);

CREATE TABLE LeaveManagement (
    employee_id INT NOT NULL PRIMARY KEY,
    years_employed INT NOT NULL,
    annual_leave_total INT NOT NULL,
    annual_leave_left INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE LeaveTable (
    leave_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    leave_type VARCHAR(100) NOT NULL,
    employee_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    days_taken INT GENERATED ALWAYS AS (DATEDIFF(end_date, start_date) + 1) STORED,
    status ENUM('Approved', 'Pending', 'Rejected') DEFAULT 'Pending',
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE Payroll (
    employee_id INT NOT NULL PRIMARY KEY,
    base_salary DECIMAL(10, 2) NOT NULL,
    bonus DECIMAL(10, 2) DEFAULT 0,
    allowance DECIMAL(10, 2) DEFAULT 0,
    tax DECIMAL(10, 2) DEFAULT 0,
    insurance DECIMAL(10, 2) DEFAULT 0,
    retirement DECIMAL(10, 2) DEFAULT 0,
    net_pay DECIMAL(10, 2) GENERATED ALWAYS AS (base_salary + bonus + allowance - (tax + insurance + retirement)) STORED,
    FOREIGN KEY (employee_id) REFERENCES Employee(id) ON DELETE CASCADE
);

-- Inserting default data
INSERT INTO Position (position_name, department_id)
SELECT DISTINCT e.position, d.department_id
FROM Employee e
JOIN Department d ON e.department = d.department_name;

INSERT INTO LeaveManagement (employee_id, years_employed, annual_leave_total, annual_leave_left)
SELECT 
    id AS employee_id,
    TIMESTAMPDIFF(YEAR, hired_date, CURDATE()) AS years_employed,
    28 + (2 * TIMESTAMPDIFF(YEAR, hired_date, CURDATE())) AS annual_leave_total,
    28 + (2 * TIMESTAMPDIFF(YEAR, hired_date, CURDATE())) AS annual_leave_left
FROM Employee;

UPDATE Employee e
JOIN Position p ON e.position = p.position_name
SET e.position_id = p.position_id;

-- Triggers
DELIMITER $$

CREATE TRIGGER after_employee_insert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DECLARE years_employed INT;
    DECLARE annual_leave_total INT;

    SET years_employed = TIMESTAMPDIFF(YEAR, NEW.hired_date, CURDATE());
    SET annual_leave_total = 28 + (2 * years_employed);

    INSERT INTO LeaveManagement (employee_id, years_employed, annual_leave_total, annual_leave_left)
    VALUES (NEW.id, years_employed, annual_leave_total, annual_leave_total);
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER before_employee_delete
BEFORE DELETE ON Employee
FOR EACH ROW
BEGIN
    DELETE FROM EmergencyContact WHERE employee_id = OLD.id;
    DELETE FROM User WHERE employee_id = OLD.id;
    DELETE FROM LeaveManagement WHERE employee_id = OLD.id;
    DELETE FROM LeaveTable WHERE employee_id = OLD.id;
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER after_leave_update
AFTER UPDATE ON LeaveTable
FOR EACH ROW
BEGIN
    DECLARE days_off INT;

    SET days_off = DATEDIFF(NEW.end_date, NEW.start_date) + 1;

    IF NEW.status = 'Approved' THEN
        UPDATE LeaveManagement
        SET annual_leave_left = annual_leave_left - days_off
        WHERE employee_id = NEW.employee_id;
    END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER before_leave_insert
BEFORE INSERT ON LeaveTable
FOR EACH ROW
BEGIN
    DECLARE days_off INT;
    DECLARE leave_left INT;

    SET days_off = DATEDIFF(NEW.end_date, NEW.start_date) + 1;
    SELECT annual_leave_left INTO leave_left
    FROM LeaveManagement
    WHERE employee_id = NEW.employee_id;

    IF (days_off > leave_left) THEN
        SET NEW.status = 'Rejected';
    END IF;

END $$

DELIMITER ;


-- Events
SET GLOBAL event_scheduler = ON;

CREATE EVENT cleanup_audit
ON SCHEDULE EVERY 1 DAY STARTS '2024-12-06 00:00:00'
DO
DELETE FROM EmployeeAudit WHERE deletion_time < NOW() - INTERVAL 3 YEAR;
