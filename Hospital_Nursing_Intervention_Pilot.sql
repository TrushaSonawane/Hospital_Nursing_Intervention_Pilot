-- testing the tables --

SELECT * FROM business LIMIT 10;
SELECT * FROM bed_type LIMIT 10;
SELECT * FROM bed_fact LIMIT 10;


SELECT b.business_name AS hospital_name,
       SUM(bf.license_beds) AS total_license_beds
FROM bed_fact bf
JOIN business b ON bf.ims_org_id = b.ims_org_id
WHERE bf.bed_id IN (4,15)
GROUP BY b.business_name
ORDER BY total_license_beds DESC
LIMIT 10;





SELECT b.business_name AS hospital_name,
       SUM(bf.staffed_beds) AS total_staffed_beds
FROM bed_fact bf
JOIN business b ON bf.ims_org_id = b.ims_org_id
WHERE bf.bed_id IN (4,15)
GROUP BY b.business_name
ORDER BY total_staffed_beds DESC
LIMIT 10;


CREATE OR REPLACE VIEW hospitals_with_both AS
SELECT ims_org_id
FROM bed_fact
WHERE bed_id IN (4,15)
GROUP BY ims_org_id
HAVING COUNT(DISTINCT bed_id) = 2;



SELECT b.business_name AS hospital_name,
       SUM(bf.license_beds) AS total_license_beds
FROM bed_fact bf
JOIN business b ON bf.ims_org_id = b.ims_org_id
JOIN hospitals_with_both hb ON bf.ims_org_id = hb.ims_org_id
WHERE bf.bed_id IN (4,15)
GROUP BY b.business_name
ORDER BY total_license_beds DESC
LIMIT 10;


SELECT b.business_name AS hospital_name,
       SUM(bf.staffed_beds) AS total_staffed_beds
FROM bed_fact bf
JOIN business b ON bf.ims_org_id = b.ims_org_id
JOIN hospitals_with_both hb ON bf.ims_org_id = hb.ims_org_id
WHERE bf.bed_id IN (4,15)
GROUP BY b.business_name
ORDER BY total_staffed_beds DESC
LIMIT 10;


