CREATE TABLE IF NOT EXISTS Salesman(
  Salesman_id TEXT PRIMARY KEY,
  name TEXT,
  city TEXT,
  commission REAL
);

INSERT INTO Salesman(Salesman_id,name,city,commission)
VALUES
  ("5001","James Hoog","New York",0.15),
  ("5002","Nail Knite","Paris",0.13),
  ("5005","Pit Alex","London",0.11),
  ("5006","Mc Lyon","Paris",0.14),
  ("5007","Paul Adam","Rome",0.13),
  ("5003","Lauson Hen","San Jose",0.12);

CREATE TABLE IF NOT EXISTS Customer(
  customer_id TEXT PRIMARY KEY,
  cust_name TEXT,
  city TEXT,
  grade INTEGER,
  Salesman_id TEXT,
  FOREIGN KEY (Salesman_id) REFERENCES Salesman(Salesman_id)
);

INSERT INTO Customer(customer_id,cust_name,city,grade,Salesman_id)
VALUES
  ("3002","Nick Rimando","New York",100,"5001"),
  ("3007","Brad Davis","New York",200,"5001"),
  ("3005","Graham Zusi","California",200,"5002"),
  ("3008","Julian Green","London",300,"5002"),
  ("3004","Fabian Johnson","Paris",300,"5006"),
  ("3009","Geoff Cameron","Berlin",100,"5003"),
  ("3003","Jozy Altidore","Moscow",200,"5007"),
  ("3001","Brad Guzan","London",NULL,"5005");

CREATE TABLE IF NOT EXISTS Orders(
  ord_no TEXT PRIMARY KEY,
  purch_amt REAL,
  ord_date TEXT,
  customer_id TEXT,
  Salesman_id TEXT,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (Salesman_id) REFERENCES Salesman(Salesman_id)
);

INSERT INTO Orders(ord_no,purch_amt,ord_date,customer_id,Salesman_id)
VALUES
  ("70001",150.5,"2012-10-05","3005","5002"),
  ("70009",270.65,"2012-09-10","3001","5001"),
  ("70002",65.26,"2012-10-05","3002","5003"),
  ("70004",110.5,"2012-08-17","3009","5007"),
  ("70007",948.5,"2012-09-10","3005","5005"),
  ("70005",2400.6,"2012-07-27","3007","5006");
