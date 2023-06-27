CREATE TABLE KidsZoneSchool(
	regID INT AUTO_INCREMENT,
	name_User VARCHAR(50),
	address VARCHAR(255),
	parentName VARCHAR(50),
	phone VARCHAR(15),
	standard VARCHAR(50),
	regDate DATETIME,
	fees DOUBLE,
	PRIMARY KEY (`regID`)
);
