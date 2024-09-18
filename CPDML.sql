CREATE TABLE Customer (
    Customer_id NUMBER PRIMARY KEY,
    Customer_name VARCHAR2(50),
    Customer_tel VARCHAR2(50),
    
);

CREATE TABLE Product (
    Product_id NUMBER PRIMARY KEY,
    Product_name VARCHAR2(50),
Category VARCHAR2(50),
    Price NUMBER NOT NULL,
    
);

CREATE TABLE Customer_Product (
    Customer_id NUMBER,
    Product_id NUMBER,
OrderDate DATE DEFAULT SYSDATE,
    Quantity NUMBER NOT NULL,
    Total_amount NUMBER NOT NULL,
    PRIMARY KEY (Customer_id, Product_id),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

INSERT INTO Customer (Customer_id, Customer_name,  Customer_tel) 
VALUES (C01, 'ALI', '71321009'),
        (C02, 'ASMA', '77345823');
      
      
INSERT INTO Product (Product_id, Product_name,Category,  Price) 
VALUES (P01, 'Samsung galaxy S20','Smartphone', 3299),
        (P02, 'ASUS Notebook','PC',  4599);
      
      
INSERT INTO Customer_Product (Customer_id, Product_id,OrderDate,  Quantity,Total_amount) 
VALUES (C01, P02,NULL,2,9198),
        (C02, P01, TO_DATE('28/05/2020', 'DD/MM/YYYY'), 1,3299);