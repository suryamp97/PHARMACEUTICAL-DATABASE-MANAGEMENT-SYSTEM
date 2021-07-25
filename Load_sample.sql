insert into Manufacturer (Manf_ID, Manf, Phone, Email) values (1, 'Forest Laboratories, Inc.', '949-381-3584', 'tgantley0@comsenz.com');
insert into Manufacturer (Manf_ID, Manf, Phone, Email) values (2, 'BioActive Nutritional, Inc.', '940-251-8738', 'ldunthorn1@nature.com');
insert into Manufacturer (Manf_ID, Manf, Phone, Email) values (3, 'Taro Pharmaceuticals U.S.A., Inc.', '339-242-6761', 'scheyney2@imageshack.us');

insert into Supplier (Supplier_ID, Supplier, Phone, Email) values (101, 'O''Conner Inc', '372-653-9712', 'wmcgown0@surveymonkey.com');
insert into Supplier (Supplier_ID, Supplier, Phone, Email) values (102, 'Considine, Lueilwitz and Bashirian', '472-557-6203', 'bpaske1@gmpg.org');
insert into Supplier (Supplier_ID, Supplier, Phone, Email) values (103, 'Becker-Christiansen', '306-782-8698', 'ptysack2@businesswire.com');

insert into Manf_Supp_Contract (Manf_ID, Supplier_ID) values (43, 121);
insert into Manf_Supp_Contract (Manf_ID, Supplier_ID) values (38, 146);
insert into Manf_Supp_Contract (Manf_ID, Supplier_ID) values (13, 114);

insert into Pharmacy (Pharmacy_ID, Pharmacy, Phone, Address, ManagerID, Supplier_ID) values (1, 'Schaefer and Sons', '751-893-3466', '53 Russell Drive', 1, 110);
insert into Pharmacy (Pharmacy_ID, Pharmacy, Phone, Address, ManagerID, Supplier_ID) values (2, 'Kulas and Sons', '425-831-7812', '5312 Autumn Leaf Circle', 2, 180);
insert into Pharmacy (Pharmacy_ID, Pharmacy, Phone, Address, ManagerID, Supplier_ID) values (3, 'Bahringer, Huel and Wuckert', '486-423-3717', '45444 Bunting Junction', 3, 179);

insert into Employee (Emp_ID, Emp_Name, Phone, Address, Sex, Pharmacy_ID) values (1, 'Robinia McKinless', '476-943-7783', '3343 Springs Center', 'F', 22);
insert into Employee (Emp_ID, Emp_Name, Phone, Address, Sex, Pharmacy_ID) values (2, 'Willa Salliere', '429-861-7119', '16 Annamark Circle', 'F', 10);
insert into Employee (Emp_ID, Emp_Name, Phone, Address, Sex, Pharmacy_ID) values (3, 'Haven Jorck', '823-408-6171', '0 Old Shore Trail', 'M', 14);

insert into Medicine (Medicine_ID, Medicine, Manf_Date, Exp_Date, Manf_ID) values (1, 'Suave', '2020-11-16', '2021-09-10', 26);
insert into Medicine (Medicine_ID, Medicine, Manf_Date, Exp_Date, Manf_ID) values (2, 'Glipizide and Metformin HCl', '2020-04-09', '2021-10-09', 29);
insert into Medicine (Medicine_ID, Medicine, Manf_Date, Exp_Date, Manf_ID) values (3, 'Ceftriaxone Sodium', '2020-05-05', '2021-08-31', 20);

insert into Pharmacy_Medicines (Pharmacy_ID, Medicine_ID, Quantity) values (36, 972, 14);
insert into Pharmacy_Medicines (Pharmacy_ID, Medicine_ID, Quantity) values (13, 651, 6);
insert into Pharmacy_Medicines (Pharmacy_ID, Medicine_ID, Quantity) values (35, 652, 12);

insert into Doctor (License_Number, First_Name, Last_Name, Specialization, Phone) values (112, 'Elaine', 'Filipczynski', 'Ortho', '320-216-2636');
insert into Doctor (License_Number, First_Name, Last_Name, Specialization, Phone) values (120, 'Carly', 'Panons', 'Ortho', '606-885-7901');
insert into Doctor (License_Number, First_Name, Last_Name, Specialization, Phone) values (128, 'Cynthy', 'Iacovazzi', 'Surgeon', '340-570-5351');

insert into Patient (SSN, First_Name, Last_Name, Sex, Phone) values ('771-78-9747', 'Kirstin', 'Faldo', 'F', '739-196-6751');
insert into Patient (SSN, First_Name, Last_Name, Sex, Phone) values ('456-99-8949', 'Lindi', 'Love', 'F', '329-642-0274');
insert into Patient (SSN, First_Name, Last_Name, Sex, Phone) values ('197-04-8723', 'Dorree', 'Sennett', 'F', '151-627-6524');

INSERT INTO Prescription(Presc_ID,SSN,License_Number,Presc_Date) VALUES (542,'891-60-9531',160,'12/23/2020');
INSERT INTO Prescription(Presc_ID,SSN,License_Number,Presc_Date) VALUES (698,'895-33-6350',120,'4/30/2020');
INSERT INTO Prescription(Presc_ID,SSN,License_Number,Presc_Date) VALUES (438,'308-45-9846',128,'4/30/2020');

INSERT INTO Bill(Bill_Number,Bill_Date,Amount,Pharmacy_ID,SSN,Presc_ID) VALUES (1001,'8/12/2020',715.52,3,'891-60-9531',542);
INSERT INTO Bill(Bill_Number,Bill_Date,Amount,Pharmacy_ID,SSN,Presc_ID) VALUES (1002,'12/17/2020',154.27,18,'895-33-6350',698);
INSERT INTO Bill(Bill_Number,Bill_Date,Amount,Pharmacy_ID,SSN,Presc_ID) VALUES (1003,'11/3/2020',534.04,44,'308-45-9846',438);

insert into Prescribed_Medicines (Presc_ID, Medicine_ID) values (442, 600);
insert into Prescribed_Medicines (Presc_ID, Medicine_ID) values (644, 623);
insert into Prescribed_Medicines (Presc_ID, Medicine_ID) values (772, 483);

