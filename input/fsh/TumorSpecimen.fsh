Profile: TumorSpecimen
Parent: Specimen
* identifier 1..1
* subject 1..1
* subject only Reference(Patient)
* condition from TumorSpecimenTypeVS
* collection.collected[x] only dateTime
* collection.collectedDateTime 1..1
* collection.bodySite 1..1
* collection.method 1..1
* collection.bodySite from TumorSpecimenLocalizationVS
* collection.method from TumorSpecimenCollectionMethodVS

CodeSystem: TumorSpecimenType
* ^url = http://bwhc.de/mtb/tumor-specimen/type
* #fresh-tissue  "Fresh tissue"
* #cryo-frozen   "Cryo-frozen"
* #liquid-biopsy "Liquid biopsy" 
* #FFPE          "FFPE"
* #unknown       "Unknown"

ValueSet: TumorSpecimenTypeVS
* include codes from system TumorSpecimenType

CodeSystem: TumorSpecimenLocalization
* ^url = http://bwhc.de/mtb/tumor-specimen/localization
* #primary-tumor "Primary tumor"
* #metastasis    "Metastasis"
* #unknown       "Unknown"

ValueSet: TumorSpecimenLocalizationVS
* include codes from system TumorSpecimenLocalization

CodeSystem: TumorSpecimenCollectionMethod
* ^url = http://bwhc.de/mtb/tumor-specimen/collection-method
* #biopsy        "Biopsy"
* #resection     "Resection"
* #liquid-biopsy "Liquid biopsy"
* #cytology      "Cytology"
* #unknown       "Unknown"

ValueSet: TumorSpecimenCollectionMethodVS
* include codes from system TumorSpecimenCollectionMethod