#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42_97_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42/input_dataset.tsv
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
param[['node']] = 'fgcz-c-048,fgcz-h-004,fgcz-h-006,fgcz-h-007,fgcz-h-008,fgcz-h-009,fgcz-h-010,fgcz-h-011,fgcz-h-012,fgcz-h-013,fgcz-h-014,fgcz-h-015,fgcz-h-016,fgcz-h-017,fgcz-h-018,fgcz-h-019'
param[['process_mode']] = 'SAMPLE'
param[['samples']] = '51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100'
param[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Annotation/Release_01-2019-02-04'
param[['paired']] = 'true'
param[['algorithm']] = 'mem'
param[['cmdOptions']] = '-M'
param[['trimAdapter']] = 'true'
param[['trimLeft']] = '0'
param[['trimRight']] = '0'
param[['minTailQuality']] = '0'
param[['minAvgQuality']] = '10'
param[['minReadLength']] = '20'
param[['specialOptions']] = ''
param[['mail']] = ''
param[['dataRoot']] = '/srv/gstore/projects'
param[['resultDir']] = 'p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42'
param[['isLastJob']] = FALSE
output = list()
output[['Name']] = '97'
output[['BAM [File]']] = 'p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42/97.bam'
output[['BAI [File]']] = 'p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42/97.bam.bai'
output[['IGV Starter [Link]']] = 'p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42/97-igv.jnlp'
output[['Species']] = 'n/a'
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Annotation/Release_01-2019-02-04'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '21170945'
output[['IGV Starter [File]']] = 'p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42/97-igv.jnlp'
output[['IGV Session [File]']] = 'p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42/97-igv.xml'
output[['PreprocessingLog [File]']] = 'p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42/97_preprocessing.log'
output[['Condition [Factor]']] = ''
output[['Extract Id [B-Fabric]']] = 'bfe_41249'
output[['FragmentSize [Characteristic]']] = '0'
output[['SampleConc [Characteristic]']] = '25'
output[['Tube [Characteristic]']] = 'p1634_3646/97'
output[['Index [Characteristic]']] = 'ATTACTCG-TATAGCCT'
output[['PlatePosition [Characteristic]']] = 'SA_070817_1_A1'
output[['LibConc_100_800bp [Characteristic]']] = '94.7'
output[['LibConc_qPCR [Characteristic]']] = '0'
output[['InputAmount [Characteristic]']] = '100'
input = list()
input[['Name']] = '97'
input[['Condition']] = ''
input[['Read1']] = 'p1634/HiSeq4000_20170824_RUN375_o3646_part/20170824.A-97_R1.fastq.gz'
input[['Read2']] = 'p1634/HiSeq4000_20170824_RUN375_o3646_part/20170824.A-97_R2.fastq.gz'
input[['Species']] = 'n/a'
input[['FragmentSize']] = '0'
input[['SampleConc']] = '25'
input[['Tube']] = 'p1634_3646/97'
input[['Extract Id']] = 'bfe_41249'
input[['Index']] = 'ATTACTCG-TATAGCCT'
input[['PlatePosition']] = 'SA_070817_1_A1'
input[['LibConc_100_800bp']] = '94.7'
input[['LibConc_qPCR']] = '0'
input[['Adapter1']] = 'GATCGGAAGAGCACACGTCTGAACTCCAGTCAC'
input[['Adapter2']] = 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'
input[['strandMode']] = 'both'
input[['LibraryPrepKit']] = 'TruSeq DNA Nano'
input[['EnrichmentMethod']] = 'None'
input[['InputAmount']] = '100'
input[['Read Count']] = '21170945'
EzAppBWATrimmomatic\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 97.bam /srv/gstore/projects/p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42
g-req -w copy 97.bam.bai /srv/gstore/projects/p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42
g-req -w copy 97-igv.jnlp /srv/gstore/projects/p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42
g-req -w copy 97-igv.xml /srv/gstore/projects/p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42
g-req -w copy 97_preprocessing.log /srv/gstore/projects/p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42
cd /scratch
rm -rf /scratch/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42_97_temp$$ || exit 1

