#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05_174_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05/input_dataset.tsv
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
param[['samples']] = '151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200'
param[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Annotation/Release_01-2019-02-04'
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
param[['resultDir']] = 'p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05'
param[['isLastJob']] = FALSE
output = list()
output[['Name']] = '174'
output[['BAM [File]']] = 'p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05/174.bam'
output[['BAI [File]']] = 'p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05/174.bam.bai'
output[['IGV Starter [Link]']] = 'p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05/174-igv.jnlp'
output[['Species']] = 'n/a'
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Annotation/Release_01-2019-02-04'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '10614940'
output[['IGV Starter [File]']] = 'p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05/174-igv.jnlp'
output[['IGV Session [File]']] = 'p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05/174-igv.xml'
output[['PreprocessingLog [File]']] = 'p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05/174_preprocessing.log'
output[['Condition [Factor]']] = ''
output[['Extract Id [B-Fabric]']] = 'bfe_41326'
output[['FragmentSize [Characteristic]']] = '0'
output[['SampleConc [Characteristic]']] = '25'
output[['Tube [Characteristic]']] = 'p1634_3646/174'
output[['Index [Characteristic]']] = 'TCCGCGAA-TAATCTTA'
output[['PlatePosition [Characteristic]']] = 'SA_070817_1_F10'
output[['LibConc_100_800bp [Characteristic]']] = '134'
output[['LibConc_qPCR [Characteristic]']] = '0'
output[['InputAmount [Characteristic]']] = '100'
input = list()
input[['Name']] = '174'
input[['Condition']] = ''
input[['Read1']] = 'p1634/HiSeq4000_20170824_RUN375_o3646_part/20170824.A-174_R1.fastq.gz'
input[['Read2']] = 'p1634/HiSeq4000_20170824_RUN375_o3646_part/20170824.A-174_R2.fastq.gz'
input[['Species']] = 'n/a'
input[['FragmentSize']] = '0'
input[['SampleConc']] = '25'
input[['Tube']] = 'p1634_3646/174'
input[['Extract Id']] = 'bfe_41326'
input[['Index']] = 'TCCGCGAA-TAATCTTA'
input[['PlatePosition']] = 'SA_070817_1_F10'
input[['LibConc_100_800bp']] = '134'
input[['LibConc_qPCR']] = '0'
input[['Adapter1']] = 'GATCGGAAGAGCACACGTCTGAACTCCAGTCAC'
input[['Adapter2']] = 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'
input[['strandMode']] = 'both'
input[['LibraryPrepKit']] = 'TruSeq DNA Nano'
input[['EnrichmentMethod']] = 'None'
input[['InputAmount']] = '100'
input[['Read Count']] = '10614940'
EzAppBWATrimmomatic\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 174.bam /srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05
g-req -w copy 174.bam.bai /srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05
g-req -w copy 174-igv.jnlp /srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05
g-req -w copy 174-igv.xml /srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05
g-req -w copy 174_preprocessing.log /srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05
cd /scratch
rm -rf /scratch/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05_174_temp$$ || exit 1

