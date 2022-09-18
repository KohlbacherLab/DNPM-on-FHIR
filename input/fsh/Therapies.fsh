Profile: GuidelineTherapy
Parent: MedicationStatement
Description: ""
* identifier 1..1
* subject only Reference(Patient)
* reasonReference only Reference(Condition)
* extension contains TherapyLine named therapyLine 0..1
* medication[x] only Reference(ATCMedication)

Profile: LastGuidelineTherapy
Parent: GuidelineTherapy
* effectivePeriod.start 1..1
* statusReason from TherapyStopReasonVS

Extension: TherapyLine
* value[x] only positiveInt

CodeSystem: TherapyStopReason
Id: therapy-stop-reason
Title: ""
Description: ""
* #patient-wish      "Patient wish"
* #progression       "Progression"
* #toxicity          "Toxicity"
* #deterioration     "Deterioration"
* #chronic-remission "Chronic remission"
* #other             "Other"
* #unknown           "Unknown"

ValueSet: TherapyStopReasonVS
* include codes from system TherapyStopReason

Profile: ATCMedication
Parent: Medication
//* id 1..1
* ingredient 1..*
* ingredient.item[x] only CodeableConcept
* ingredient.itemCodeableConcept from $ATC