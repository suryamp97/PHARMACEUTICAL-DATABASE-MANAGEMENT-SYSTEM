Implementation and Execution: (This is also mentioend in the report in Section 8)

DATA WAS GENERATED USING AN ONLINE TOOL - www.mockaroo.com

The SQL data to replicate or reproduce this dataset and our
database system has been provided along with the report. The
order of execution is explained in simple terms as below.

	1. Create a database named in your choice (Eg:Pharmacy)

	2. Create Tables:
	CREATE.sql - the order is maintained so the file can be executed
	as it is.

	3. Sample Dataset:
	Load_sample.sql - Running this file will load a sample dataset
	from the production dataset into the system.

	4. Production Dataset:
	The below sql files are required to be run in the same order as
	below to reproduce our production dataset:
		1) Manufacturer.sql
		2) Supplier.sql
		3) Manf_Supp_Contract.sql
		4) Pharmacy.sql
		5) Employee.sql
		6) Medicine.sql
		7) Pharmacy_Medicines.sql
		8) Doctor.sql
		9) Patient.sql
		10) Prescription.sql
		11) Bill.sql
		12) Prescribed_Medicines.sql
	(either you can run the above-mentioned
	files or just run the LOAD.sql only for
	one time)

	5. DELETE.sql: Since our dataset is randomly generated,
	same names can be matched with different primary key
	ids. So, in order to keep the ID and name unique, we
	delete the duplicate names which correspond to
	different ids. This file also contains a drop column
	(SSN) for relation Bill, the reason for which was
	discussed in Section 7.1. This file needs to be run
	irrespective of the whether it is sample or production
	dataset after running the above files in order.
