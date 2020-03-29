drop database Ernz;
create database Ernz;
use Ernz;

create table Cars_Table(
    stf_CarsID char(5) auto increment, 
    stf_CarType char(5) not null, 
    stf_CarModel varchar(50) not null, 
    bit_Availability bit,
    constraint PK_CarsID Primary Key (stf_CarsID));

create table Customer_Table(
    stf_CustomerID char(5) auto increment,
    stf_Firstname varchar(50) not null,
    stf_Middlename varchar(30) not null,
    stf_Lastname varchar(50) not null,
	stf_Username varchar(50) not null,
 	stf_Password varchar(50) not null,
    stf_Address varchar(50) not null,
    stf_ContactNumber char(11) not null,
    stf_LandLine char(7), 
    stf_Age varchar(3) not null,
    stf_Sex varchar(6) not null,
    stf_Email varchar(100) not null,
    stf_OfficialIDpicture blob not null,
    constraint PK_CustomerID Primary Key (stf_CustomerID));

create table Admin_Table(
    stf_AdminID char(5) auto increment,
    stf_Firstname varchar(50) not null,
    stf_Middlename varchar(30) not null,
    stf_Lastname varchar(50) not null,
	stf_Username varchar(50) not null,
 	stf_Password varchar(50) not null,
    stf_Address varchar(50) not null,
    stf_ContactNumber char(11) not null,
    stf_LandLine char(7), 
    stf_Age varchar(3) not null,
    stf_Sex varchar(6) not null,
    stf_Email varchar(100) not null,
    stf_OfficialIDpicture blob not null,
    constraint PK_AdminID Primary Key (stf_AdminID));

create table Transaction_Table(
    stf_TransactionID char(5) auto increment,
    dtm_PickupDateTime datetime not null,
    stf_PickupSite varchar(50) not null,
    stf_SiteLocation varchar(50) not null,
    dtm_EndDateTime datetime not null,
    dbl_Cash double not null,
    stf_CarsID char(5) not null,
    stf_CustomerID char(5) not null,
	stf_AdminID char(5) not null,
    constraint PK_TransactionID Primary Key (stf_TransactionID),
    constraint FK_CarsID Foreign Key (stf_CarsID)
    references Cars_Table (stf_CarsID),
    constraint FK_CustomerID Foreign Key (stf_CustomerID)
    references Customer_Table (stf_CustomerID),
	constraint FK_AdminID Foreign Key (stf_AdminID)
	references Admin_Table (stf_AdminID));


 
