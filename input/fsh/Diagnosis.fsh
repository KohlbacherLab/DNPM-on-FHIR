Profile: OncoDiagnosis
Parent: Condition
Id: onco-diagnosis
Title: "Onco Diagnosis"
Description: "An oncological Diagnosis object"
* identifier 1..1
* subject only Reference(MTBPatient)
* recordedDate 0..1
* code from $ICD10GM
* code.coding.version 1..1
* bodySite from $ICDO3T
* bodySite.coding.version 1..1
* stage ^slicing.discriminator.type = #pattern
* stage ^slicing.discriminator.path = "summary"
* stage ^slicing.rules = #open
* stage contains whoCnsGrade 0..1 and tumorStage 0..*
* stage[whoCnsGrade].summary from WHOCNSGradingVS
* stage[tumorStage].summary from TumorStageVS
* stage[tumorStage].extension contains TumorStageDate named date 1..1
* extension contains GuidelineTreatmentStatus named guidelineTreatmentStatus 0..1
* evidence.detail only Reference(HistologyReport)

Extension: GuidelineTreatmentStatus
//* ^url = http://bwhc.de/mtb/diagnosis/guideline-treatment-status
* value[x] only Coding
* valueCoding from GuidelineTreatmentStatusCodesVS

Extension: TumorStageDate
//* ^url = http://bwhc.de/mtb/diagnosis/tumor-stage-date
* value[x] only date

CodeSystem: WHOCNSGrading
* #I "Pilocytic astrocytoma"
* #II "Diffuse astrocytoma"
* #III "Anaplastic astrocytoma"
* #IV "Glioblastoma"

ValueSet: WHOCNSGradingVS  
* include codes from system WHOCNSGrading

CodeSystem: TumorStage
* #tumor-free "Tumor-free"
* #local "Local"
* #metastasized "Metastasized"
* #unknown "Unknown"

ValueSet: TumorStageVS
* include codes from system TumorStage