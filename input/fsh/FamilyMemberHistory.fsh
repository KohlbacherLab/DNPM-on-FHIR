Profile: Family_Member_History
Parent: FamilyMemberHistory
Id: family-member-history
Title: "Family Member History"
Description: "TBA"
* identifier 1..1
* patient only Reference(MTBPatient)
* relationship 1..1
* relationship from BasicFamilyMemberVS

ValueSet: BasicFamilyMemberVS
* include #FAMMEMB from system http://terminology.hl7.org/CodeSystem/v3-RoleCode
* include #EXT from system http://terminology.hl7.org/CodeSystem/v3-RoleCode