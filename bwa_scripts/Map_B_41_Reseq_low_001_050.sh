#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05_41_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.10 Aligner/BWA/0.7.17 QC/Flexbar/3.0.3 QC/Trimmomatic/0.36 Dev/R/3.6.1 Tools/sambamba/0.6.7

#### NOW THE ACTUAL JOBS STARTS
R --vanilla --slave<<  EOT
EZ_GLOBAL_VARIABLES <<- '/usr/local/ngseq/opt/EZ_GLOBAL_VARIABLES.txt'
library(ezRun)
param = list()
param[['cores']] = '8'
param[['ram']] = '16'
param[['scratch']] = '100'
param[['node']] = 'fgcz-c-048,fgcz-h-004,fgcz-h-006,fgcz-h-007,fgcz-h-008,fgcz-h-009,fgcz-h-010,fgcz-h-011,fgcz-h-012,fgcz-h-013,fgcz-h-014,fgcz-h-015,fgcz-h-016,fgcz-h-017,fgcz-h-018,fgcz-h-019,fgcz-h-020,fgcz-h-021,fgcz-h-022,fgcz-h-023,fgcz-h-024,fgcz-h-025'
param[['process_mode']] = 'SAMPLE'
param[['samples']] = '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50'
param[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Annotation/Release_01-2019-02-04'
param[['paired']] = 'true'
param[['algorithm']] = 'mem'
param[['cmdOptions']] = ''
param[['trimAdapter']] = 'true'
param[['trim_front']] = '0'
param[['trim_tail']] = '0'
param[['cut_front']] = '0'
param[['cut_tail']] = '0'
param[['cut_right']] = '0'
param[['average_qual']] = '0'
param[['max_len1']] = '0'
param[['poly_x_min_len']] = '10'
param[['length_required']] = '18'
param[['cmdOptionsFastp']] = ''
param[['mail']] = ''
param[['dataRoot']] = '/srv/gstore/projects'
param[['resultDir']] = 'p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05'
param[['isLastJob']] = FALSE
output = list()
output[['Name']] = '41'
output[['BAM [File]']] = 'p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05/41.bam'
output[['BAI [File]']] = 'p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05/41.bam.bai'
output[['IGV Starter [Link]']] = 'p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05/41-igv.jnlp'
output[['Species']] = 'n/a'
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Annotation/Release_01-2019-02-04'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '18195334'
output[['IGV Starter [File]']] = 'p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05/41-igv.jnlp'
output[['IGV Session [File]']] = 'p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05/41-igv.xml'
output[['PreprocessingLog [File]']] = 'p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05/41_preprocessing.log'
output[['Condition [Factor]']] = ''
output[['Extract Id [B-Fabric]']] = 'bfe_59706'
output[['FragmentSize [Characteristic]']] = '0'
output[['SampleConc [Characteristic]']] = '25'
output[['Tube [Characteristic]']] = 'p1634_3646/41'
output[['Index [Characteristic]']] = 'GAATTCGT-TATAGCCT'
output[['PlatePosition [Characteristic]']] = 'SA_030817_1_A6'
output[['LibConc_100_800bp [Characteristic]']] = '70.1'
output[['LibConc_qPCR [Characteristic]']] = '0'
output[['InputAmount [Characteristic]']] = '100'
input = list()
input[['Name']] = '41'
input[['Condition']] = ''
input[['Read1']] = 'p1634/HiSeq4000_20170811_RUN373_o3646/20170811.B-41_R1.fastq.gz'
input[['Read2']] = 'p1634/HiSeq4000_20170811_RUN373_o3646/20170811.B-41_R2.fastq.gz'
input[['Species']] = 'n/a'
input[['FragmentSize']] = '0'
input[['SampleConc']] = '25'
input[['Tube']] = 'p1634_3646/41'
input[['Extract Id']] = 'bfe_59706'
input[['Index']] = 'GAATTCGT-TATAGCCT'
input[['PlatePosition']] = 'SA_030817_1_A6'
input[['LibConc_100_800bp']] = '70.1'
input[['LibConc_qPCR']] = '0'
input[['Adapter1']] = 'GATCGGAAGAGCACACGTCTGAACTCCAGTCAC'
input[['Adapter2']] = 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'
input[['strandMode']] = 'both'
input[['LibraryPrepKit']] = 'TruSeq DNA Nano'
input[['EnrichmentMethod']] = 'None'
input[['InputAmount']] = '100'
input[['Read Count']] = '18195334'
EzAppBWA\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 41.bam /srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05
g-req -w copy 41.bam.bai /srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05
g-req -w copy 41-igv.jnlp /srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05
g-req -w copy 41-igv.xml /srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05
g-req -w copy 41_preprocessing.log /srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05
cd /scratch
rm -rf /scratch/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05_41_temp$$ || exit 1

