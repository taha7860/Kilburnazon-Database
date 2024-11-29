CREATE TABLE Employee (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL CHECK (salary > 0),
    email VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    office VARCHAR(100) NOT NULL,
    home_address VARCHAR(200) NOT NULL,
    hired_date DATE NOT NULL DEFAULT CURRENT_DATE,
    contract VARCHAR(50) NOT NULL DEFAULT 'Full-Time',
    nin VARCHAR(9) NOT NULL UNIQUE,
    emergency_name VARCHAR(100),
    emergency_relationship VARCHAR(50),
    emergency_phone VARCHAR(15)
);

CREATE TABLE Department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    description TEXT,
    total_employees INT NOT NULL
);

CREATE TABLE Position (
    position_id INT AUTO_INCREMENT PRIMARY KEY,
    department_id INT NOT NULL,
    position_name VARCHAR(100) NOT NULL,
    min_salary DECIMAL(10, 2) NOT NULL,
    max_salary DECIMAL(10, 2),
    bonus DECIMAL(10, 2),
    is_executive BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Address (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    building_number INT NOT NULL,
    street_name VARCHAR(255) NOT NULL,
    country VARCHAR(100) NOT NULL,
    post_code VARCHAR(8) NOT NULL
);

INSERT INTO Department (department_name, total_employees)
SELECT department, COUNT(id)
FROM Employee
GROUP BY department;

INSERT INTO Position (position_name, department_id)
SELECT DISTINCT e.position, d.department_id
FROM Employee e
JOIN Department d ON e.department = d.department_name;

UPDATE Employee e
JOIN Position p ON e.position = p.position_name
SET e.position_id = p.position_id;