CREATE DATABASE bookinformation
CHARACTER SET UTF8MB4
COLLATE UTF8MB4_UNICODE_CI

bookinformationCREATE TABLE books(
	id VARCHAR(50),
	title VARCHAR(255),
	price DOUBLE,
	PRIMARY KEY (`id`)
)