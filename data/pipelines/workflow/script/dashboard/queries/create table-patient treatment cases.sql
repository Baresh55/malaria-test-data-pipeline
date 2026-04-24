CREATE TABLE warehouse.patient(
PatientSK int primary key,
PatientID varchar,
AgeGroup varchar,
Gender varchar
);
select * from warehouse.patient;
---------------------------------------
CREATE TABLE warehouse.treatment(
TreatmentSK int primary key,
TreatmentID	varchar,
DrugName varchar
);
select * from warehouse.treatment;
---------------------------------------
CREATE TABLE warehouse.cases(
CaseSK serial primary key,
CaseID varchar,
Date date,
Facilitysk int,
Patientsk int,
Diseasesk int,
Treatmensk int,
Outcome	varchar,
TestsPerformed int,
Severity varchar,
Cost int
);
select * from warehouse.cases;
---------------------------------
ALTER TABLE warehouse.cases
ALTER COLUMN date TYPE DATE
USING date::DATE;

ALTER TABLE warehouse.cases
ALTER COLUMN cost TYPE INTEGER
USING cost::INTEGER;
