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
    employment_history TEXT
);

CREATE TABLE Department (
    department_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
    address_id INT NOT NULL PRIMARY KEY,
    address_line_one VARCHAR(255) NOT NULL,
    address_line_two VARCHAR(255) DEFAULT NULL,
    country VARCHAR(100) DEFAULT NULL,
    post_code VARCHAR(8) DEFAULT NULL
);

CREATE TABLE EmergencyContact (
    employee_id INT NOT NULL,
    emergency_name VARCHAR(100),
    emergency_relationship VARCHAR(50),
    emergency_phone VARCHAR(15)
);

CREATE TABLE Office (
    office_id INT NOT NULL,
    address_id INT DEFAULT NULL,
    office_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(16),
    website VARCHAR(100),
    average_rating DECIMAL(2,1) DEFAULT NULL CHECK (average_rating >= 0 AND average_rating <= 5)
);

CREATE TABLE User (
    employee_id INT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE EmployeeAudit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    deleted_employee_name VARCHAR(255) NOT NULL,
    deleted_employee_email VARCHAR(255) NOT NULL,
    deleted_by_user_id INT NOT NULL,
    deletion_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (deleted_by_user_id) REFERENCES User(employee_id)
);

CREATE TABLE LeaveManagement (
    employee_id INT PRIMARY KEY,
    employment_years INT NOT NULL,
    annual_leave_allowed INT NOT NULL,
    annual_leave_left INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
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