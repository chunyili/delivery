DROP DATABASE if exists ship;
CREATE DATABASE ship; 

USE ship;

CREATE TABLE customer(
	customer_id INTEGER NOT NULL,
	phone VARCHAR(12) NOT NULL,
	email VARCHAR(50) NULL,
	lname VARCHAR(20) NOT NULL,
	fname VARCHAR(20) NOT NULL,
           timezone VARCHAR(6) NOT NULL,
	PRIMARY KEY (customer_id)
);

CREATE TABLE zipcode(
	zipcode VARCHAR(6) NOT NULL,
	store_id INTEGER NOT NULL,
	PRIMARY KEY (zipcode)
	#FOREIGN KEY (store_id) REFERENCES store(store_id)
);

CREATE TABLE customer_add(
	c_id INTEGER NOT NULL,
	country VARCHAR(20) NOT NULL,
	state VARCHAR(20) NOT NULL,
	city VARCHAR(20) NOT NULL,
	street VARCHAR(20) NOT NULL,
	zipcode VARCHAR(6) NOT NULL,
	PRIMARY KEY (c_id),
	FOREIGN KEY (c_id) REFERENCES customer(customer_id),
	FOREIGN KEY (zipcode) REFERENCES zipcode(zipcode)
);

CREATE TABLE store(
	store_id INTEGER NOT NULL,
    store_name VARCHAR(20),
	store_level INTEGER NOT NULL,
	phone VARCHAR(12) NULL,
	supervisor INTEGER NULL,
	PRIMARY KEY (store_id),
	FOREIGN KEY (supervisor) REFERENCES store(store_id)
);

CREATE TABLE store_add(
	s_id INTEGER NOT NULL,
	country VARCHAR(20) NOT NULL,
	state VARCHAR(20) NOT NULL,
	city VARCHAR(20) NOT NULL,
	street VARCHAR(20) NOT NULL,
	zipcode VARCHAR(6) NOT NULL,
            timezone VARCHAR(6) NOT NULL,
	PRIMARY KEY (s_id),
	FOREIGN KEY (s_id) REFERENCES store(store_id)
);

CREATE TABLE package(
	package_id INTEGER NOT NULL,
	sender_id INTEGER NOT NULL,
	receiver_id INTEGER NOT NULL,
	content VARCHAR(20) NOT NULL,
	length DOUBLE NULL,
	width DOUBLE  NULL,
	height DOUBLE NULL,
	weight DOUBLE NOT NULL,
	price DOUBLE NOT NULL,
	PRIMARY KEY (package_id),	
	FOREIGN KEY (sender_id) REFERENCES customer(customer_id),
	FOREIGN KEY (receiver_id) REFERENCES customer(customer_id)
);

CREATE TABLE route(
	route_id INTEGER NOT NULL,
	dept INTEGER NOT NULL,
	arvl INTEGER NOT NULL,
	PRIMARY KEY (route_id),
	FOREIGN KEY (dept) REFERENCES store(store_id),
	FOREIGN KEY (arvl) REFERENCES store(store_id)
);

CREATE TABLE instance(
	route_id INTEGER NOT NULL,
	instance_id INTEGER NOT NULL,
	method VARCHAR(10) NOT NULL
		CHECK (method IN ('AUTOMOBILE','FLIGHT','TRAIN')),
	dept_time DATETIME NULL,
	arvl_time DATETIME NULL,
	PRIMARY KEY (route_id,instance_id),
	FOREIGN KEY (route_id) REFERENCES route(route_id)
);

CREATE TABLE carry(
	pkg_id INTEGER NOT NULL,
	rut_id INTEGER NOT NULL,
	ins_id INTEGER NOT NULL,
	PRIMARY KEY(pkg_id,rut_id,ins_id),
	FOREIGN KEY (pkg_id) REFERENCES package(package_id),
	FOREIGN KEY (rut_id,ins_id) REFERENCES instance(route_id,instance_id)
);

CREATE TABLE hold(
	pkg_id INTEGER NOT NULL,
	sto_id INTEGER NOT NULL,
	PRIMARY KEY (pkg_id,sto_id),
	FOREIGN KEY (pkg_id) REFERENCES package(package_id),
	FOREIGN KEY (sto_id) REFERENCES store(store_id)
);

CREATE TABLE courier(
	courier_id INTEGER NOT NULL,
	store_id INTEGER NOT NULL,
	PRIMARY KEY (courier_id,store_id),
	FOREIGN KEY (store_id) REFERENCES store(store_id) 
);

CREATE TABLE collects(
	cou_id INTEGER NOT NULL,
	pkg_id INTEGER NOT NULL,
	sdr_id INTEGER NOT NULL,
	PRIMARY KEY (cou_id,pkg_id,sdr_id),
	FOREIGN KEY (cou_id) REFERENCES courier(courier_id),
	FOREIGN KEY (pkg_id) REFERENCES package(package_id),
	FOREIGN KEY (sdr_id) REFERENCES customer(customer_id)
);

CREATE TABLE delivers(
	cou_id INTEGER NOT NULL,
	pkg_id INTEGER NOT NULL,
	rcv_id INTEGER NOT NULL,
	PRIMARY KEY (cou_id,pkg_id,rcv_id),
	FOREIGN KEY (cou_id) REFERENCES courier(courier_id),
	FOREIGN KEY (pkg_id) REFERENCES package(package_id),
	FOREIGN KEY (rcv_id) REFERENCES customer(customer_id)
);

ALTER TABLE zipcode ADD constraint FK_zipcode_store FOREIGN KEY (store_id) REFERENCES store(store_id);