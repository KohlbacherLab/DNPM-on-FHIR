Profile: Onco_Diagnosis
Parent: Condition
Id: onco-diagnosis
Title: "Onco Diagnosis"
Description: "An oncological Diagnosis object"
* identifier 1..1
* subject only Reference(MTB_Patient)
* recordedDate 0..1
* code 0..1
* bodySite 0..1
* stage.summary 0..1
* evidence.detail 0..*
* stage 0..*
* stage.summary 1..1