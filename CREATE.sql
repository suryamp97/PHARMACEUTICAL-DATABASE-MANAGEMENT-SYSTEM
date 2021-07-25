create table Manufacturer
	(
	 Manf_ID INTEGER,
	 Manf VARCHAR(100) not null,
	 Phone VARCHAR(12) not null,
	 Email VARCHAR(100),
	 primary key(Manf_ID)
	);

create table Supplier
	(
 	 Supplier_ID INTEGER,
	 Supplier VARCHAR(100) not null,
	 Phone VARCHAR (12) not null,
	 Email VARCHAR(100),
	 primary key(Supplier_ID)
	);

create table Manf_Supp_Contract
	(
	 Manf_ID INTEGER not null,
	 Supplier_ID INTEGER not null,
	 foreign key(Manf_ID) references Manufacturer on delete cascade,
	 foreign key(Supplier_ID) references Supplier on delete cascade
	);
	 
create table Pharmacy
	(
	 Pharmacy_ID INTEGER,
	 Pharmacy VARCHAR(100) not null,
	 Phone VARCHAR(12) not null,
	 Address VARCHAR(120) not null,
         ManagerID INTEGER not null,
	 Supplier_ID INTEGER not null,
	 primary key(Pharmacy_ID),
	 foreign key(Supplier_ID) references Supplier on delete cascade
	);

create table Employee
	(
 	 Emp_ID INTEGER,
	 Emp_Name VARCHAR(100) not null,
	 Phone VARCHAR(12) not null,
	 Address VARCHAR(120),
	 Sex VARCHAR(1), 
	 Pharmacy_ID INTEGER not null,
	 primary key(Emp_ID),
	 foreign key(Pharmacy_ID) references Pharmacy on delete cascade
	);

create table Medicine
	(
 	 Medicine_ID INTEGER,
	 Medicine VARCHAR(200) not null,
	 Manf_Date DATE, 
	 Exp_Date DATE,
	 Manf_ID INTEGER not null,
	 primary key(Medicine_ID),
	 foreign key(Manf_ID) references Manufacturer on delete cascade
	);



create table Pharmacy_Medicines
	(
	 Pharmacy_ID INTEGER not null,
	 Medicine_ID INTEGER not null,
	 Quantity INTEGER default 0,
	 foreign key(Pharmacy_ID) references Pharmacy on delete cascade,
	 foreign key(Medicine_ID) references Medicine on delete cascade
	);

create table Doctor
	(
	 License_Number INTEGER,
	 First_Name VARCHAR(40) not null,
	 Last_Name VARCHAR(40),
	 Specialization VARCHAR(30) not null,
	 Phone VARCHAR(12) not null,
	 primary key(License_Number)
	);

create table Patient
	(
	 SSN VARCHAR(11),
	 First_Name VARCHAR(40) not null,
	 Last_Name VARCHAR(40),
	 Sex VARCHAR(1),
	 Phone VARCHAR(12) not null,
	 primary key(SSN)
	);

create table Prescription
	(
	 Presc_ID INTEGER,
	 SSN VARCHAR(11) not null,
	 License_Number INTEGER not null,
	 Presc_Date DATE not null,
	 primary key(Presc_ID),
 	 foreign key(SSN) references Patient on delete cascade,
	 foreign key(License_Number) references Doctor on delete cascade	
	);

create table Bill
	(
	 Bill_Number INTEGER,
	 Bill_Date DATE not null,
	 Amount NUMERIC(7,2) not null,
	 Pharmacy_ID INTEGER not null,
	 SSN VARCHAR(11) not null,
	 Presc_ID INTEGER not null,
	 primary key(Bill_Number),
 	 foreign key(Pharmacy_ID) references Pharmacy on delete cascade,
	 foreign key(SSN) references Patient on delete cascade,
	 foreign key(Presc_ID) references Prescription on delete cascade
	);

create table Prescribed_Medicines
	(
	 Presc_ID INTEGER not null,
	 Medicine_ID INTEGER not null,
 	 foreign key(Presc_ID) references Prescription on delete cascade,
	 foreign key(Medicine_ID) references Medicine on delete cascade
	);
