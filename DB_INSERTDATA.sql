USE CRM_DB;
GO

-- Inserting sample users
INSERT INTO Users (username, password_hash, full_name, email)
VALUES 
('admin', HASHBYTES('SHA2_256', CONVERT(VARCHAR(100), 'admin123')), 'Admin User', 'admin@crm.com'),
('john', HASHBYTES('SHA2_256', CONVERT(VARCHAR(100), 'john123')), 'John Smith', 'john@crm.com'),
('sara', HASHBYTES('SHA2_256', CONVERT(VARCHAR(100), 'sara123')), 'Sara Lee', 'sara@crm.com');

-- Inserting sample customers
INSERT INTO Customers (name, phone, email, address, city, postal_code, country)
VALUES 
('Tech Solutions Ltd.', '+91-9840011223', 'contact@techsolutions.com', '123 MG Road', 'Chennai', '600001', 'India'),
('Bright Future Pvt. Ltd.', '+91-9787543210', 'info@brightfuture.com', '88 Park Street', 'Bangalore', '560001', 'India'),
('Ironman Corp.', '+1-202-000-1111', 'support@ironman.com', '42 Stark Tower', 'New York', '10001', 'USA'),
('ClientSoft Inc.', '+91-9486321579', 'hello@clientsoft.com', '11 Business Bay', 'Delhi', '110001', 'India');

-- Inserting sample contacts (linked to customers)
INSERT INTO Contacts (customer_id, contact_name, designation, phone, email)
VALUES 
(1, 'Anjali Sharma', 'IT Manager', '+91-9854715923', 'anjali@techsolutions.com'),
(2, 'Rithika Singh', 'HR Manager', '+91-9107251186', 'rithika@brightfuture.com'),
(3, 'Michael Blake', 'CTO', '+1-212-000-0012', 'michael@ironman.com'),
(3, 'George White', 'VP of Sales', '+1-212-000-2449', 'george@ironman.com'),
(4, 'Ram Prasad', 'Legal Advisor', '+91-9486321579', 'ram@clientsoft.com');

-- Inserting sample leads (linked to users)
INSERT INTO Leads (customer_name, contact_person, phone, email, source, status, assigned_to)
VALUES 
('StartUp Hub', 'Kavya R', '+91-9876543210', 'kavya@startuphub.com', 'Website', 'New', 1),
('DreamX Technologies', 'Arjun V', '+91-9123456789', 'arjun@dreamx.com', 'Referral', 'Contacted', 2),
('VisionTech', 'Divya Rao', '+91-9012345678', 'divya@visiontech.com', 'Ad', 'Converted', 3),
('BuildRight Inc.', 'Raj Patel', '+91-9888877766', 'raj@buildright.com', 'Cold Call', 'New', 1);