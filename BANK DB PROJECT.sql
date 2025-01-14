-- CREATE DATABASE FOR BANK MANAGEMENT PROJECT

CREATE DATABASE BANK_DB;
 USE BANK_DB;
 

--CREATE TABLE CUSTOMER_PERSONAL_INFO
CREATE TABLE Customer_personal_Info (
  CUSTOMER_ID VARCHAR(5),
  CUSTOMER_NAME VARCHAR(30),
  DATE_OF_BIRTH DATE,
  GARDIAN_NAME VARCHAR(30),
  ADDRESS VARCHAR(50),
  CONTACT_NO VARCHAR(10),
  MAIL_ID VARCHAR(30),
  GENDER CHAR(1),
  MARITAL_STATUS VARCHAR(10),
  IDENTIFICATION_DOC_TYPE VARCHAR(20),
  ID_DOC_NO VARCHAR(20),
  CITIZENSHIP VARCHAR(10),
  CONSTRAINT CUST_PERS_INFO_PK PRIMARY KEY(CUSTOMER_ID)
  );
  
  
  --CREATE TABLE CUSTOMER_REFERENCE_INFO
  CREATE TABLE CUSTOMER_REFERENCE_INFO (
    CUSTOMER_ID VARCHAR(5),
    REFERENCE_ACC_NAME VARCHAR(20),
    REFERENCE_ACC_NO VARCHAR(16),
    REFERENCE_ACC_ADDRESS VARCHAR(50),
    RELATION VARCHAR(25),
    CONSTRAINT CUST_REF_INFO_PK PRIMARY KEY(CUSTOMER_ID),
    CONSTRAINT CUST_REF_INFO_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES Customer_personal_Info
    );
    
    --CREARE TABLE BANK_INFO
    CREATE TABLE BANK_INFO (
      IFSC_CODE VARCHAR(15),
      BANK_NAME VARCHAR(25),
      BRANCH_NAME VARCHAR(25),
      CONSTRAINT BANK_INFO_PK PRIMARY KEY(IFSC_CODE)
      );
    
  --CREATE TABLE ACCOUNT INFO
  CREATE TABLE ACCOUNT_INFO
  (
    ACCOUNT_NO VARCHAR(16),
    CUSTOMER_ID VARCHAR(5),
    ACCOUNT_TYPE VARCHAR(10),
    REGISTRATION_DATE DATE,
    ACTIVATION_DATE DATE,
    IFSC_CODE VARCHAR(10),
    INTEREST DECIMAL(7,2),
    INITIAL_DEPOSIT BIGINT,
    CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO),
    CONSTRAINT ACC_INFO_PERS_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES Customer_personal_Info,
    CONSTRAINT ACC_INFO_BANK_PK FOREIGN KEY(IFSC_CODE) REFERENCES bank_info
    );
    
    --INSERT DATA INTO BANK INFO
    INSERT INTO BANK_INFO (IFSC_CODE,BANK_NAME,BRANCH_NAME)
    VALUES('HDFCNO012','HDFC','MEDCHAL'),
          ('SBINO123','SBI','MEDCHAL'),
          ('ICINO232','ICICI','HYDERABAD'),
          ('ICIPGO242','ICICI','NIZAMBAD'),
          ('SBISDO113','SBI','SIDDIPET');
  
  --INSERT DATA INTO CUSTOMER PERSONAL INFO
  INSERT INTO Customer_personal_Info 
  (CUSTOMER_ID, CUSTOMER_NAME, DATE_OF_BIRTH, GARDIAN_NAME, ADDRESS, CONTACT_NO, MAIL_ID, GENDER, MARITAL_STATUS, IDENTIFICATION_DOC_TYPE, ID_DOC_NO, CITIZENSHIP)
VALUES
  ('C001', 'John Doe', '1985-03-25', 'Jane Doe', '1234 Elm Street, City, Country', '9876543210', 'johndoe@example.com', 'M', 'Single', 'Passport', 'A1234567', 'CountryA'),
  ('C002', 'Alice Smith', '1992-07-10', 'Robert Smith', '5678 Oak Avenue, City, Country', '9123456789', 'alicesmith@example.com', 'F', 'Married', 'National ID', 'B7654321', 'CountryB'),
  ('C003', 'Michael Johnson', '1988-11-05', 'Mary Johnson', '2345 Pine Road, City, Country', '9345678901', 'michaelj@example.com', 'M', 'Divorced', 'Drivers License', 'C9876543', 'CountryC'),
  ('C004', 'Emily Brown', '2000-02-20', 'Tom Brown', '9876 Birch Street, City, Country', '9456789012', 'emilybrown@example.com', 'F', 'Single', 'National ID', 'D1239876', 'CountryD'),
  ('C005', 'James Lee', '1995-06-15', 'Linda Lee', '1357 Maple Lane, City, Country', '9567890123', 'jameslee@example.com', 'M', 'Married', 'Passport', 'E5432109', 'CountryE');

  --INSERT DATA INTO CUSTOMER REFERENCE INFO
  INSERT INTO CUSTOMER_REFERENCE_INFO 
  (CUSTOMER_ID, REFERENCE_ACC_NAME, REFERENCE_ACC_NO, REFERENCE_ACC_ADDRESS, RELATION)
VALUES
  ('C001', 'Alice Walker', '1234567890123456', '5678 Pine Street, City, Country', 'Friend'),
  ('C002', 'Bob Johnson', '2345678901234567', '1234 Oak Avenue, City, Country', 'Brother'),
  ('C003', 'David Green', '3456789012345678', '4321 Birch Road, City, Country', 'Father'),
  ('C004', 'Sophia Taylor', '4567890123456789', '8765 Cedar Lane, City, Country', 'Mother'),
  ('C005', 'Ethan White', '5678901234567890', '1357 Maple Street, City, Country', 'Colleague');

-- INSERT DATA INTO ACCOUNT INFO
INSERT INTO ACCOUNT_INFO 
  (ACCOUNT_NO, CUSTOMER_ID, ACCOUNT_TYPE, REGISTRATION_DATE, ACTIVATION_DATE, IFSC_CODE, INTEREST, INITIAL_DEPOSIT)
VALUES
  ('ACC1234567890123', 'C001', 'Savings', '2023-01-10', '2023-01-12', 'HDFCNO012', 4.5, 5000),
  ('ACC1234567890124', 'C002', 'Checking', '2023-02-15', '2023-02-20', 'SBINO123', 3.0, 10000),
  ('ACC1234567890125', 'C003', 'Savings', '2023-03-05', '2023-03-10', 'ICINO232', 5.0, 15000),
  ('ACC1234567890126', 'C004', 'Business', '2023-04-20', '2023-04-22', 'ICIPGO242', 6.0, 25000),
  ('ACC1234567890127', 'C005', 'Checking', '2023-05-18', '2023-05-20', 'SBISDO113', 3.5, 20000);

 
 
  

  
  
  
  