Profile: HistologyReport
Parent: DiagnosticReport
* identifier 1..1
* subject only Reference(Patient)
* subject 1..1
* specimen 1..1
* contained ^slicing.discriminator.type = #pattern
* contained ^slicing.discriminator.path = "code"
* contained ^slicing.rules = #open
* contained contains
    tumorCellContent 0..1 and
    tumorMorphology 0..1
* contained[tumorCellContent] only TumorCellContent
* contained[tumorMorphology] only TumorMorphology