
CREATE DATABASE lsdatabase;

USE lsdatabase;

CREATE TABLE Users (
    ID INT PRIMARY KEY IDENTITY,
    MemberNumber NVARCHAR(50),
    Name NVARCHAR(100),
    Address NVARCHAR(200),
    City NVARCHAR(100),
    State NVARCHAR(50),
    Zip NVARCHAR(20),
    Country NVARCHAR(100),
    Phone NVARCHAR(20),
    Email NVARCHAR(100),
    MembershipCode NVARCHAR(10),
    RegistrationFee NVARCHAR(20)
);
