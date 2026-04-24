CREATE TABLE warehouse.disease(
DiseaseSK int primary key,
DiseaseID varchar,
MalariaType varchar
);
select * from warehouse.disease;
-----------------------------------
CREATE TABLE warehouse.district(
DistrictSK int primary key,
DistrictID varchar,
DistrictName varchar,
Region varchar
);
select * from warehouse.district;
-------------------------------------
CREATE TABLE warehouse.facility(
FacilitySK serial primary key,
DistrictSK int,	
FacilityID varchar,
FacilityName varchar,
FacilityType varchar,	
DistrictID varchar,
Capacity int,	
lastupdate date,
Startdate date,
EndDate date,
IsCurrent boolean default 'Y',
version int default 1
);
select * from warehouse.facility
