Profile: SomaticNGSReport
Parent: DiagnosticReport
* identifier 1..1
* subject only Reference(Patient)
* subject 1..1
* specimen 1..1
* extension contains
  SequentingType named sequencingType 1..1 and
  Metadata named metaData 1..*
* contained ^slicing.discriminator.type = #pattern
* contained ^slicing.discriminator.path = "code"
* contained ^slicing.rules = #open
* contained contains
  simpleVariant 0..* and
  cnv 0..* and
  rnaSeq 0..*
* contained[simpleVariant] only SimpleVariant
* contained[cnv] only CopyNumberVariant
* contained[rnaSeq] only RNASeq

Extension: SequentingType
* value[x] only string

Extension: Metadata
* extension contains
  kitType 1..1 and
  kitManufacturer 1..1 and
  sequencer 1..1 and
  referenceGenome 1..1 and
  pipeline 1..1
* extension[kitType].value[x] only string
* extension[kitManufacturer].value[x] only string
* extension[sequencer].value[x] only string 
* extension[referenceGenome].value[x] only string 
* extension[pipeline].value[x] only uri 

Profile: LBoundedRange
Parent: Range
* low 1..1
* high 0..1

Profile: GeneCoding
Parent: CodeableConcept
* coding ^slicing.discriminator.type = #pattern
* coding ^slicing.discriminator.path = "code"
* coding ^slicing.rules = #open
* coding contains
  hgncId 0..1 and
  ensemblId 0..1
* coding[hgncId] from $HGNC
* coding[ensemblId] from $Ensembl

CodeSystem: Chromosomes
* #chr1
* #chr2
* #chr3
* #chr4
* #chr5
* #chr6
* #chr7
* #chr8
* #chr9
* #chr10
* #chr11
* #chr12
* #chr13
* #chr14
* #chr15
* #chr16
* #chr17
* #chr18
* #chr19
* #chr20
* #chr21
* #chr22
* #chrX
* #chrY

ValueSet: ChromosomesVS
* include codes from system Chromosomes

Profile: Variant
Parent: Observation
* id 1..1
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

Profile: SimpleVariant
Parent: Variant
* code = $LNC#69548-6
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
// dbSNPId 0..1 and
  cosmicId 0..1
* identifier[cosmicId].system = $COSMIC
* component contains
  chromosome 1..1 and
  gene-studied 0..1 and
  exact-start-end 1..1 and
  ref-allele 1..1 and
  alt-allele 1..1 and
  dna-chg 0..1 and
  amino-acid-chg 0..1 and
  allelic-read-depth 1..1 and
  sample-allelic-frequency 1..1 and
  dbSNP-id 0..1   //TODO: consider including dbSNP ID in identifiers
* component[chromosome].code = $LNC#48000-4
* component[chromosome].value[x] only CodeableConcept 
* component[chromosome].valueCodeableConcept from ChromosomesVS
* component[gene-studied].code = $LNC#48018-6
* component[gene-studied].value[x] only GeneCoding
* component[exact-start-end].code = $TBD_LNC#exact-start-end
* component[exact-start-end].value[x] only LBoundedRange
* component[ref-allele].code = $LNC#69547-8
* component[ref-allele].value[x] only string
* component[alt-allele].code = $LNC#69551-0
* component[alt-allele].value[x] only string
* component[dna-chg].code = $LNC#48004-6
* component[dna-chg].value[x] only CodeableConcept
* component[dna-chg].valueCodeableConcept from $HGVSc 
* component[amino-acid-chg].code = $LNC#48005-3
* component[amino-acid-chg].value[x] only CodeableConcept
* component[amino-acid-chg].valueCodeableConcept from $HGVSp
* component[allelic-read-depth].code = $LNC#82121-5
* component[allelic-read-depth].value[x] only SimpleQuantity 
* component[sample-allelic-frequency].code = $LNC#81258-6
* component[sample-allelic-frequency].value[x] only SimpleQuantity
* component[dbSNP-id].code = $LNC#81255-2
* component[dbSNP-id].value[x] only CodeableConcept
* component[dbSNP-id].valueCodeableConcept from $dbSNP
* interpretation 1..1
* interpretation from $ClinVar

Profile: CopyNumberVariant
Parent: Variant
* code = $TBD_LNC#copy-number-variant
* component contains
  chromosome 1..1 and
  start-range 0..1 and
  end-range 0..1 and
  copy-number 0..1 and
  relative-copy-number 0..1 and
  cnA 0..1 and
  cnB 0..1 and
  reported-affected-gene 0..* and
  reported-focality 0..1 and
  cnv-type 1..1 and
  copy-number-neutral-loh 0..*
* component[chromosome].code = $LNC#48000-4
* component[chromosome].value[x] only CodeableConcept 
* component[chromosome].valueCodeableConcept from ChromosomesVS
* component[start-range].code = $TBD_LNC#start-range
* component[start-range].value[x] only LBoundedRange 
* component[end-range].code = $TBD_LNC#end-range
* component[end-range].value[x] only LBoundedRange 
* component[copy-number].code = $LNC#82155-3
* component[copy-number].value[x] only SimpleQuantity
* component[relative-copy-number].code = $TBD_LNC#relative-copy-number
* component[relative-copy-number].value[x] only SimpleQuantity
* component[cnA].code = $TBD_LNC#cnA
* component[cnA].value[x] only SimpleQuantity
* component[cnB].code = $TBD_LNC#cnB
* component[cnB].value[x] only SimpleQuantity
* component[reported-affected-gene].code = $TBD_LNC#reported-affected-gene
* component[reported-affected-gene].value[x] only GeneCoding 
* component[reported-focality].code = $TBD_LNC#reported-focality
* component[reported-focality].value[x] only string
* component[cnv-type].code = $TBD_LNC#cnv-type
* component[cnv-type].value[x] only CodeableConcept
* component[cnv-type].valueCodeableConcept from CNVTypeVS
* component[copy-number-neutral-loh].code = $TBD_LNC#copy-number-neutral-loh
* component[copy-number-neutral-loh].value[x] only GeneCoding 

CodeSystem: CNVType
* #low-level-gain  "Low-level gain"
* #high-level-gain "High-level gain"
* #loss            "Loss"

ValueSet: CNVTypeVS
* include codes from system CNVType

Profile: RNASeq
Parent: Variant
* code = $TBD_LNC#copy-number-variant
* component contains
// entrezId 1..1 and    //TODO
// ensemblId 1..1 and   //TODO
  gene-studied 0..1 and
  transcriptId 1..1 and
  fragmentsPerKbMillion 1..1 and
  fromNgs 1..1 and
  tissueCorrectedExpression 1..1 and
  rawCounts 1..1 and
  librarySize 1..1 and
  cohortRanking 0..1
* component[gene-studied].code = $LNC#48018-6
* component[gene-studied].value[x] only GeneCoding
* component[transcriptId].code = $TBD_LNC#transcript-id
* component[transcriptId].value[x] only CodeableConcept
* component[fragmentsPerKbMillion].code = $TBD_LNC#fragments-per-kb-million
* component[fragmentsPerKbMillion].value[x] only SimpleQuantity
* component[fromNgs].code = $TBD_LNC#identified-from-ngs
* component[fromNgs].value[x] only boolean
* component[tissueCorrectedExpression].code = $TBD_LNC#tissue-corrected-expression
* component[tissueCorrectedExpression].value[x] only boolean
* component[rawCounts].code = $TBD_LNC#raw-counts
* component[rawCounts].value[x] only SimpleQuantity
* component[librarySize].code = $TBD_LNC#library-size
* component[librarySize].value[x] only SimpleQuantity
* component[cohortRanking].code = $TBD_LNC#cohort-ranking
* component[cohortRanking].value[x] only SimpleQuantity