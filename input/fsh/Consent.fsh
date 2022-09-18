Profile: DNPMConsent
Parent: Consent
Id: dnpm-consent
Title: "DNPM Consent"
Description: ""
* identifier 1..1
* patient 1..1
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "code"
* category.coding ^slicing.rules = #open
* category.coding contains
   loinc 1..*
* category.coding[loinc].code = $LNC#59284-0