Profile: MTBFile
Parent: Bundle
* type = #collection
* entry ^slicing.discriminator.type = #pattern
* entry ^slicing.discriminator.path = "resource.resourceType"
* entry ^slicing.rules = #open
* entry contains 
  patientEntry 1..1 and
  consentEntry 1..1
* entry[patientEntry].resource only MTBPatient
* entry[consentEntry].resource only DNPMConsent