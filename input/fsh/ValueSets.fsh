ValueSet: ICDO3Topography
Id: ICDO3T
Title: "ICD-O-3-Topography"
Description: "ICD-O-3 Topography codes with ClaML kind = 'category' (hence the regex filter for pattern C**[.*])"
* ^url = $ICDO3T
* include codes from system $ICDO3 where concept descendent-of #T and concept regex /C\d{2}(.\d{1})?/

ValueSet: ICDO3Morphology
Id: ICDO3M
Title: "ICD-O-3-Morphology"
Description: "ICD-O-3 Morphology codes with ClaML kind = 'category' (hence the regex filter for pattern ****:*)"
* ^url = $ICDO3T
* include codes from system $ICDO3 where concept descendent-of #M and concept regex /\d{4}:\d{1}/