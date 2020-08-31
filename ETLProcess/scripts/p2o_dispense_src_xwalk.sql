---------------------------------------------------------
-- PROJECT : N3C
-- CDM data source: PCORnet
-- Description: P2O_DISPENSE_SRC_XWALK to omop concept ids
-- valueSet mapping for Table P2O_DISPENSE_SRC_XWALK
-- Reviewers : Clair Blacketer, Kristin Kostka, SMEs, Samvit, DI&H team
-- Author: Stephanie Hong
-- Edit History:
-- Date: Initials: Edit History:
-- JUNE 7, 2020 SHONG UPDATE FOR V1
-- 
--------------------------------------------------------
CREATE TABLE CDMH_STAGING.P2O_DISPENSE_SRC_XWALK 
(
  CDM_SOURCE VARCHAR2(20 BYTE) 
, CDM_TBL VARCHAR2(20 BYTE) 
, SRC_DISPENSE_SOURCE VARCHAR2(100 BYTE) NOT NULL 
, SRC_DISPENSE_SRC_DESCRIP VARCHAR2(100 BYTE) 
, TARGET_CONCEPT_ID NUMBER(*, 0) 
, TARGET_CONCEPT_NAME VARCHAR2(255 BYTE) 
, TARGET_DOMAIN_ID VARCHAR2(20 BYTE) 
, TARGET_VOCABULARY_ID VARCHAR2(30 BYTE) 
, TARGET_CONCEPT_CLASS_ID VARCHAR2(20 BYTE) 
, TARGET_STANDARD_CONCEPT VARCHAR2(1 BYTE) 
, TARGET_CONCEPT_CODE VARCHAR2(50 BYTE) 
) 
;


Insert into CDMH_STAGING.P2O_DISPENSE_SRC_XWALK (CDM_SOURCE,CDM_TBL,SRC_DISPENSE_SOURCE,SRC_DISPENSE_SRC_DESCRIP,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','DISPENSING','OD','OD=Order/EHR',5001,'(measurement_type) Test ordered through EHR concept_id = 5001','Type Concept','Meas Type','Meas Type','s','OMOP4822277');
Insert into CDMH_STAGING.P2O_DISPENSE_SRC_XWALK (CDM_SOURCE,CDM_TBL,SRC_DISPENSE_SOURCE,SRC_DISPENSE_SRC_DESCRIP,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','DISPENSING','BI','BI=Billing',32466,'(measurement_type) Inferred from claim concept_id = 32466','Type Concept','Meas Type','Meas Type','S','OMOP4822270');
Insert into CDMH_STAGING.P2O_DISPENSE_SRC_XWALK (CDM_SOURCE,CDM_TBL,SRC_DISPENSE_SOURCE,SRC_DISPENSE_SRC_DESCRIP,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','DISPENSING','CL','CL=Claim',32466,'(measurement_type) Inferred from claim concept_id = 32466','Type Concept','Meas Type','Meas Type','S','OMOP4822270');
Insert into CDMH_STAGING.P2O_DISPENSE_SRC_XWALK (CDM_SOURCE,CDM_TBL,SRC_DISPENSE_SOURCE,SRC_DISPENSE_SRC_DESCRIP,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','DISPENSING','DR','DR=Derived',45754907,'(measurement_type) Derived value concept_id = 45754907','Type Concept','Meas Type','Meas Type','S','OMOP4822276');
Insert into CDMH_STAGING.P2O_DISPENSE_SRC_XWALK (CDM_SOURCE,CDM_TBL,SRC_DISPENSE_SOURCE,SRC_DISPENSE_SRC_DESCRIP,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','DISPENSING','NI','NI=No information',46237210,'(other_ni_unk) No information concept_id = 46237210','Meas Value','LOINC','Answer','S','LA21413-2');
Insert into CDMH_STAGING.P2O_DISPENSE_SRC_XWALK (CDM_SOURCE,CDM_TBL,SRC_DISPENSE_SOURCE,SRC_DISPENSE_SRC_DESCRIP,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','DISPENSING','UN','UN=Unknown',45877986,'(other_ni_unk) Unknown concept_id = 45877986','Meas Value','LOINC','Answer','S','LA4489-6');
Insert into CDMH_STAGING.P2O_DISPENSE_SRC_XWALK (CDM_SOURCE,CDM_TBL,SRC_DISPENSE_SOURCE,SRC_DISPENSE_SRC_DESCRIP,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','DISPENSING','OT','OT=Other',45878142,'(other_ni_unk) Other concept_id = 45878142','Meas Value','LOINC','Answer','S','LA46-8');
