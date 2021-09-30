#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03_281_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.10 Aligner/BWA/0.7.17 QC/Flexbar/3.0.3 QC/fastp/0.20.0 Dev/R/3.6.1 Tools/sambamba/0.6.7

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
param[['samples']] = '251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300'
param[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Annotation/Release_01-2019-02-04'
param[['paired']] = 'true'
param[['algorithm']] = 'mem'
param[['cmdOptions']] = '-M'
param[['trimAdapter']] = 'true'
param[['trim_front1']] = '0'
param[['trim_tail1']] = '0'
param[['cut_front']] = 'false'
param[['cut_front_window_size']] = '4'
param[['cut_front_mean_quality']] = '20'
param[['cut_tail']] = 'false'
param[['cut_tail_window_size']] = '4'
param[['cut_tail_mean_quality']] = '20'
param[['cut_right']] = 'false'
param[['cut_right_window_size']] = '4'
param[['cut_right_mean_quality']] = '20'
param[['average_qual']] = '0'
param[['max_len1']] = '0'
param[['max_len2']] = '0'
param[['poly_x_min_len']] = '10'
param[['length_required']] = '18'
param[['cmdOptionsFastp']] = ''
param[['mail']] = ''
param[['dataRoot']] = '/srv/gstore/projects'
param[['resultDir']] = 'p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03'
param[['isLastJob']] = FALSE
output = list()
output[['Name']] = '281'
output[['BAM [File]']] = 'p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03/281.bam'
output[['BAI [File]']] = 'p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03/281.bam.bai'
output[['IGV Starter [Link]']] = 'p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03/281-igv.jnlp'
output[['Species']] = 'n/a'
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Annotation/Release_01-2019-02-04'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '19529674'
output[['IGV Starter [File]']] = 'p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03/281-igv.jnlp'
output[['IGV Session [File]']] = 'p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03/281-igv.xml'
output[['PreprocessingLog [File]']] = 'p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03/281_preprocessing.log'
output[['Condition [Factor]']] = ''
output[['Extract Id [B-Fabric]']] = 'bfe_41433'
output[['FragmentSize [Characteristic]']] = '0'
output[['SampleConc [Characteristic]']] = '25'
output[['Tube [Characteristic]']] = 'p1634_3646/281'
output[['Index [Characteristic]']] = 'AGCGATAG-TATAGCCT'
output[['PlatePosition [Characteristic]']] = 'SA_150817_1_A12'
output[['LibConc_100_800bp [Characteristic]']] = '98.3'
output[['LibConc_qPCR [Characteristic]']] = '0'
output[['InputAmount [Characteristic]']] = '100'
input = list()
input[['Name']] = '281'
input[['Condition']] = ''
input[['Read1']] = 'p1634/HiSeq4000_20170906_RUN374_o3646/20170906.A-281_R1.fastq.gz'
input[['Read2']] = 'p1634/HiSeq4000_20170906_RUN374_o3646/20170906.A-281_R2.fastq.gz'
input[['Species']] = 'n/a'
input[['FragmentSize']] = '0'
input[['SampleConc']] = '25'
input[['Tube']] = 'p1634_3646/281'
input[['Extract Id']] = 'bfe_41433'
input[['Index']] = 'AGCGATAG-TATAGCCT'
input[['PlatePosition']] = 'SA_150817_1_A12'
input[['LibConc_100_800bp']] = '98.3'
input[['LibConc_qPCR']] = '0'
input[['Adapter1']] = 'GATCGGAAGAGCACACGTCTGAACTCCAGTCAC'
input[['Adapter2']] = 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'
input[['strandMode']] = 'both'
input[['LibraryPrepKit']] = 'TruSeq DNA Nano'
input[['EnrichmentMethod']] = 'None'
input[['InputAmount']] = '100'
input[['Read Count']] = '19529674'
EzAppBWA\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 281.bam /srv/gstore/projects/p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03
g-req -w copy 281.bam.bai /srv/gstore/projects/p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03
g-req -w copy 281-igv.jnlp /srv/gstore/projects/p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03
g-req -w copy 281-igv.xml /srv/gstore/projects/p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03
g-req -w copy 281_preprocessing.log /srv/gstore/projects/p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03
cd /scratch
rm -rf /scratch/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03_281_temp$$ || exit 1

