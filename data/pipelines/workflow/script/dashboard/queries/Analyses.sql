--Which facilities report the highest number of severe malaria cases over time?
CREATE VIEW Top_Severe_Facilities AS
SELECT
 warehouse.facility.facilityname AS facility,
 count(warehouse.cases.severity) AS SeverityCount
FROM warehouse.facility LEFT JOIN warehouse.cases ON
warehouse.facility.facilitysk = warehouse.cases.facilitysk
WHERE severity = 'Severe'
GROUP BY facility.facilityname
ORDER BY SeverityCount DESC
LIMIT 10;

--Which treatments are associated with the lowest average cost and better outcomes?
CREATE VIEW Avg_Cost_Outcome AS
SELECT
 warehouse.treatment.drugname AS Drug,
 warehouse.cases.outcome AS Outcome,
 ROUND(AVG(warehouse.cases.cost),2) AS AvgCost
 FROM
 warehouse.cases LEFT JOIN warehouse.treatment ON
 warehouse.cases.treatmensk = warehouse.treatment.treatmentsk
WHERE outcome <> 'N/A'
GROUP BY warehouse.treatment.drugname,warehouse.cases.outcome
ORDER BY Outcome;

---How do malaria outcomes differ across patient age groups?
CREATE VIEW outcome_agegroup AS
SELECT
 warehouse.patient.agegroup AS Agegroup,
 warehouse.cases.outcome AS outcome,
 count(warehouse.cases.outcome) AS malariaoutcome
FROM warehouse.cases LEFT JOIN warehouse.patient ON
warehouse.cases.patientsk = warehouse.patient.patientsk
WHERE outcome <> 'N/A'
GROUP BY warehouse.patient.agegroup,warehouse.cases.outcome
ORDER BY Agegroup

---Which malaria type leads to higher severity and cost per case?
CREATE VIEW malariatype_severity AS
SELECT
 warehouse.disease.malariatype AS malariatype,
 COUNT(warehouse.cases.severity) AS severity,
 ROUND(AVG(warehouse.cases.cost),2) AS avgcostpercase
FROM warehouse.cases LEFT JOIN warehouse.disease ON
warehouse.cases.diseasesk = warehouse.disease.diseasesk
GROUP BY warehouse.disease.malariatype
ORDER BY malariatype

---how does capacity vary by day of the week for facilities
CREATE VIEW facility_capacity_dow AS
SELECT
 TO_CHAR (warehouse.cases.date,'day') AS day_of_week,
 warehouse.facility.facilitytype AS facilitytype,
 SUM(warehouse.facility.capacity) AS totalcapacity
FROM warehouse.cases LEFT JOIN warehouse.facility ON
warehouse.cases.facilitysk = warehouse.facility.facilitysk
GROUP BY warehouse.facility.facilitytype, TO_CHAR(warehouse.cases.date,'day')
ORDER BY day_of_week




 