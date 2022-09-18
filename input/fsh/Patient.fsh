Profile: MTBPatient
Parent: Patient
Id: mtb-patient
Title: "MTB Patient"
Description: "A psydonomized MTB Patient"
* identifier 1..1
* gender 1..1
* birthDate 0..1
* deceasedDateTime 0..1
* contact.organization only Reference(Organization)