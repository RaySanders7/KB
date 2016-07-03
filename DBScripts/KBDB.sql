use Kbdb;

create table ParentCompany 
(
	ParentCompanyId int NOT NULL,
	ParentCompanyName varchar(1000),
	PRIMARY KEY (ParentCompanyId)
);
create table Subsidiary
(
	SubsidaryId int NOT NULL,
	ParentCompanyId int NOT NULL,
	SubsidiaryName varchar(1000),
	PRIMARY KEY (SubsidaryId),
	FOREIGN KEY (ParentCompanyId) REFERENCES ParentCompany(ParentCompanyId)
);
create table Department
(
	DepartmentId int NOT NULL,
	ParentCompanyID int NOT NULL,
	DepartmentName varchar(1000),
	PRIMARY KEY (DepartmentId),
	FOREIGN KEY (ParentCompanyId) REFERENCES ParentCompany(ParentCompanyId)
);
create table Gender 
(
	GenderId int NOT NULL,
	Description varchar(250),
	PRIMARY KEY (GenderId)
);
create table Race
(
	RaceId int NOT NULL,
	Description varchar(250),
	PRIMARY KEY (RaceId)
);
create table Employee
(
	EmployeeId int NOT NULL,		
	LastName varchar(1000) NOT NULL,
	FirstName varchar(1000),
	GenderId int NOT NULL,
	DateOfBirth date NOT NULL,
	RaceId int NOT NULL,
	CompanyEmployeeId varchar(100),
	PRIMARY KEY (EmployeeId),
	FOREIGN KEY (GenderId) references Gender(GenderId),
    FOREIGN KEY (RaceId) references Race(RaceId)
);
create table Sentiment 
(
	SentimentId int NOT NULL,
	Description varchar(250),
	PRIMARY KEY (SentimentID)
);
create table CompanyLingo
(
	CompanyLingoId int NOT NULL,
	ParentCompanyId int NOT NULL,
	SubsidiaryId int,
	Term varchar(2000), 
	Definition varchar(10000), 
	SentimentId int,
	PRIMARY KEY (CompanyLingoId),
    FOREIGN KEY (SentimentId) references Sentiment(SentimentId)
);