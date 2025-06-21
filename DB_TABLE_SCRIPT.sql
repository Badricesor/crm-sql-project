USE CRM_DB;
GO

-- 1. Users table
CREATE TABLE Users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARBINARY(64) NOT NULL,
    full_name VARCHAR(100),
    email VARCHAR(100),
    created_at DATETIME DEFAULT GETDATE()
);
GO

-- 2. Customers table
CREATE TABLE Customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    postal_code VARCHAR(10),
    country VARCHAR(100),
    created_at DATETIME DEFAULT GETDATE()
);
GO

-- 3. Contacts table
CREATE TABLE Contacts (
    contact_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES Customers(customer_id) ON DELETE CASCADE,
    contact_name VARCHAR(100),
    designation VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    created_at DATETIME DEFAULT GETDATE()
);
GO

-- 4. Leads table
CREATE TABLE Leads (
    lead_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    contact_person VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    source VARCHAR(50), -- e.g., 'Website', 'Ad', 'Referral'
    status VARCHAR(50), -- e.g., 'New', 'Contacted', 'Won', 'Lost'
    assigned_to INT FOREIGN KEY REFERENCES Users(user_id) ON DELETE SET NULL,
    created_at DATETIME DEFAULT GETDATE()
);
GO

