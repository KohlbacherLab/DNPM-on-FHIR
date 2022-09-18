Profile: BasicObservation
Parent: Observation
* identifier 1..1
* subject only Reference(Patient)
* subject 1..1
* effective[x] only dateTime

Profile: ECOGPerformanceStatus
Parent: BasicObservation
* code = $LNC#89247-1
* value[x] only CodeableConcept
* valueCodeableConcept from $ECOG
* valueCodeableConcept 1..1

Profile: TumorCellContent
Parent: Observation
* code = $LNC#tumor-content //TODO
* identifier 1..1
* specimen 1..1
* method from TumorCellContentMethodVS
* method 1..1
* value[x] only Quantity
* valueQuantity 1..1

CodeSystem: TumorCellContentMethod
* #histologic    "Histologic"
* #bioinformatic "Bioinformatic"

ValueSet: TumorCellContentMethodVS
* include codes from system TumorCellContentMethod

Profile: TumorMorphology
Parent: Observation
* code = $LNC#tumor-morphology //TODO
* identifier 1..1
* subject only Reference(Patient)
* specimen 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from $ICDO3M
* note 0..1

Profile: Response
Parent: BasicObservation
* code = $LNC#21976-6
* partOf only Reference(MedicationStatement)
* partOf 1..1
* effectiveDateTime 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from RECISTVS
* valueCodeableConcept 1..1

CodeSystem: RECIST
* #CR "Complete Response"
* #PR "Partial Response"
* #MR "Mixed Response"
* #SD "Stable Disease"
* #PD "Progressive Disease"
* #NA "Not Assessable"
* #NYA "Not Yet Assessable"

ValueSet: RECISTVS
* include codes from system RECIST