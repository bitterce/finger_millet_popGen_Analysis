#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55_116_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.10 Aligner/BWA/0.7.17 QC/Flexbar/3.5.0 QC/fastp/0.20.0 Dev/R/4.0.1 Tools/sambamba/0.6.7

#### NOW THE ACTUAL JOBS STARTS
R --vanilla --slave<<  EOT
EZ_GLOBAL_VARIABLES <<- '/usr/local/ngseq/opt/EZ_GLOBAL_VARIABLES.txt'
library(ezRun)
param = list()
param[['cores']] = '8'
param[['ram']] = '16'
param[['scratch']] = '100'
param[['node']] = ''
param[['queue']] = 'user'
param[['process_mode']] = 'SAMPLE'
param[['samples']] = '101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150'
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
param[['resultDir']] = 'p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55'
param[['isLastJob']] = FALSE
output = list()
output[['Name']] = '116'
output[['BAM [File]']] = 'p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55/116.bam'
output[['BAI [File]']] = 'p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55/116.bam.bai'
output[['IGV [Link]']] = 'p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55/116-igv.html'
output[['Species']] = 'n/a'
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Annotation/Release_01-2019-02-04'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '19722581'
output[['IGV [File]']] = 'p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55/116-igv.html'
output[['PreprocessingLog [File]']] = 'p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55/116_preprocessing.log'
output[['Condition [Factor]']] = ''
output[['Extract Id [B-Fabric]']] = 'bfe_41268'
output[['FragmentSize [Characteristic]']] = '0'
output[['SampleConc [Characteristic]']] = '25'
output[['Tube [Characteristic]']] = 'p1634_3646/116'
output[['Index [Characteristic]']] = 'CGCTCATT-GGCTCTGA'
output[['PlatePosition [Characteristic]']] = 'SA_070817_1_D3'
output[['LibConc_100_800bp [Characteristic]']] = '75.9'
output[['LibConc_qPCR [Characteristic]']] = '0'
output[['InputAmount [Characteristic]']] = '100'
input = list()
input[['Name']] = '116'
input[['Condition']] = ''
input[['Read1']] = 'p1634/HiSeq4000_20170824_RUN375_o3646_part/20170824.A-116_R1.fastq.gz'
input[['Read2']] = 'p1634/HiSeq4000_20170824_RUN375_o3646_part/20170824.A-116_R2.fastq.gz'
input[['Species']] = 'n/a'
input[['FragmentSize']] = '0'
input[['SampleConc']] = '25'
input[['Tube']] = 'p1634_3646/116'
input[['Extract Id']] = 'bfe_41268'
input[['Index']] = 'CGCTCATT-GGCTCTGA'
input[['PlatePosition']] = 'SA_070817_1_D3'
input[['LibConc_100_800bp']] = '75.9'
input[['LibConc_qPCR']] = '0'
input[['Adapter1']] = 'GATCGGAAGAGCACACGTCTGAACTCCAGTCAC'
input[['Adapter2']] = 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'
input[['strandMode']] = 'both'
input[['LibraryPrepKit']] = 'TruSeq DNA Nano'
input[['EnrichmentMethod']] = 'None'
input[['InputAmount']] = '100'
input[['Read Count']] = '19722581'
EzAppBWA\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
. "/usr/local/ngseq/miniconda3/etc/profile.d/conda.sh"
conda activate sushi
g-req -w copy 116.bam /srv/gstore/projects/p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55
g-req -w copy 116.bam.bai /srv/gstore/projects/p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55
g-req -w copy 116-igv.html /srv/gstore/projects/p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55
g-req -w copy 116_preprocessing.log /srv/gstore/projects/p1634/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55
cd /scratch
rm -rf /scratch/BWA_Reseq_low_101_150_on_A_2020-09-17--12-33-55_116_temp$$ || exit 1

