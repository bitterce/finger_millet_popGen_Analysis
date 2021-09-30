#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24_3_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24/input_dataset.tsv
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
param[['node']] = 'fgcz-h-008,fgcz-h-009'
param[['process_mode']] = 'SAMPLE'
param[['samples']] = '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50'
param[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Annotation/Release_01-2019-02-04'
param[['paired']] = 'true'
param[['algorithm']] = 'mem'
param[['cmdOptions']] = '-M'
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
param[['resultDir']] = 'p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24'
param[['isLastJob']] = FALSE
output = list()
output[['Name']] = '3'
output[['BAM [File]']] = 'p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24/3.bam'
output[['BAI [File]']] = 'p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24/3.bam.bai'
output[['IGV Starter [Link]']] = 'p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24/3-igv.jnlp'
output[['Species']] = 'n/a'
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Annotation/Release_01-2019-02-04'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '15433931'
output[['IGV Starter [File]']] = 'p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24/3-igv.jnlp'
output[['IGV Session [File]']] = 'p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24/3-igv.xml'
output[['PreprocessingLog [File]']] = 'p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24/3_preprocessing.log'
output[['Condition [Factor]']] = ''
output[['Extract Id [B-Fabric]']] = 'bfe_59668'
output[['FragmentSize [Characteristic]']] = '0'
output[['SampleConc [Characteristic]']] = '25'
output[['Tube [Characteristic]']] = 'p1634_3646/3'
output[['Index [Characteristic]']] = 'ATTACTCG-CCTATCCT'
output[['PlatePosition [Characteristic]']] = 'SA_030817_1_C1'
output[['LibConc_100_800bp [Characteristic]']] = '102'
output[['LibConc_qPCR [Characteristic]']] = '0'
output[['InputAmount [Characteristic]']] = '100'
input = list()
input[['Name']] = '3'
input[['Condition']] = ''
input[['Read1']] = 'p1634/HiSeq4000_20170811_RUN373_o3646/20170811.B-3_R1.fastq.gz'
input[['Read2']] = 'p1634/HiSeq4000_20170811_RUN373_o3646/20170811.B-3_R2.fastq.gz'
input[['Species']] = 'n/a'
input[['FragmentSize']] = '0'
input[['SampleConc']] = '25'
input[['Tube']] = 'p1634_3646/3'
input[['Extract Id']] = 'bfe_59668'
input[['Index']] = 'ATTACTCG-CCTATCCT'
input[['PlatePosition']] = 'SA_030817_1_C1'
input[['LibConc_100_800bp']] = '102'
input[['LibConc_qPCR']] = '0'
input[['Adapter1']] = 'GATCGGAAGAGCACACGTCTGAACTCCAGTCAC'
input[['Adapter2']] = 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'
input[['strandMode']] = 'both'
input[['LibraryPrepKit']] = 'TruSeq DNA Nano'
input[['EnrichmentMethod']] = 'None'
input[['InputAmount']] = '100'
input[['Read Count']] = '15433931'
EzAppBWA\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 3.bam /srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24
g-req -w copy 3.bam.bai /srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24
g-req -w copy 3-igv.jnlp /srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24
g-req -w copy 3-igv.xml /srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24
g-req -w copy 3_preprocessing.log /srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24
cd /scratch
rm -rf /scratch/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24_3_temp$$ || exit 1

