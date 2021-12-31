#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38_Ecor_GE225_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38/input_dataset.tsv
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Aligner/BWA/0.7.17 QC/Flexbar/3.0.3 QC/Trimmomatic/0.36 Dev/R/3.6.0 Tools/sambamba/0.6.7

#### NOW THE ACTUAL JOBS STARTS
R --vanilla --slave<<  EOT
EZ_GLOBAL_VARIABLES <<- '/usr/local/ngseq/opt/EZ_GLOBAL_VARIABLES.txt'
library(ezRun)
param = list()
param[['cores']] = '8'
param[['ram']] = '16'
param[['scratch']] = '100'
param[['node']] = ''
param[['process_mode']] = 'SAMPLE'
param[['samples']] = 'Ecor_PR202,Ecor_GE4690,Ecor_GE4976,Ecor_GE5004,Ecor_GE5095,Ecor_GE5116,Eind_EC516242,Eafr_GE7123,Eafr_GE7128,Ecor_GE58,Ecor_GE225,Ecor_GE258,Ecor_GE337,Ecor_GE1004,Ecor_GE1012,Ecor_GE2403,Ecor_GE2911,Ecor_GE2912,Ecor_GE3140,Ecor_GE3149,Ecor_GE3461,Ecor_GE3235,Ecor_GE3265,Ecor_GE3275,Ecor_GE4136,Ecor_GE4172,Ecor_FM27743-2,Ecor_FM27745-1,Ecor_FM27757,Eind_FM134491,Ecor_GE12,Ecor_GE47'
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
param[['resultDir']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38'
output = list()
output[['Name']] = 'Ecor_GE225'
output[['BAM [File]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38/Ecor_GE225.bam'
output[['BAI [File]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38/Ecor_GE225.bam.bai'
output[['IGV Starter [Link]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38/Ecor_GE225-igv.jnlp'
output[['Species']] = 'E. coracana'
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Annotation/Release_01-2019-02-04'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '40205713'
output[['IGV Starter [File]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38/Ecor_GE225-igv.jnlp'
output[['IGV Session [File]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38/Ecor_GE225-igv.xml'
output[['PreprocessingLog [File]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38/Ecor_GE225_preprocessing.log'
output[['Extract Id [B-Fabric]']] = 'GCCAAT'
output[['Sample Id [B-Fabric]']] = 'bfs_153983'
output[['FragmentSize [Characteristic]']] = '350'
output[['SampleConc [Characteristic]']] = '100'
output[['Tube [Characteristic]']] = 'p1634_3234/4'
output[['PlatePosition [Characteristic]']] = '1_D1'
output[['LibConc_100_800bp [Characteristic]']] = '206'
output[['LibConc_qPCR [Characteristic]']] = '0'
output[['InputAmount [Characteristic]']] = '200'
input = list()
input[['Name']] = 'Ecor_GE225'
input[['Read1']] = 'p1634/HiSeq4000_20170407_RUN340_o3234/20170407.B-GE225_R1.fastq.gz'
input[['Read2']] = 'p1634/HiSeq4000_20170407_RUN340_o3234/20170407.B-GE225_R2.fastq.gz'
input[['Species']] = 'E. coracana'
input[['FragmentSize']] = '350'
input[['SampleConc']] = '100'
input[['Tube']] = 'p1634_3234/4'
input[['Extract Id']] = 'GCCAAT'
input[['PlatePosition']] = '1_D1'
input[['LibConc_100_800bp']] = '206'
input[['LibConc_qPCR']] = '0'
input[['Adapter1']] = 'GATCGGAAGAGCACACGTCTGAACTCCAGTCAC'
input[['Adapter2']] = 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'
input[['strandMode']] = ''
input[['LibraryPrepKit']] = 'TruSeq DNA Nano'
input[['EnrichmentMethod']] = 'None'
input[['InputAmount']] = '200'
input[['Read Count']] = '40205713'
input[['Sample Id']] = 'bfs_153983'
input[['Location']] = 'India, Uttar Pradesh'
EzAppBWA\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy Ecor_GE225.bam /srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38
g-req -w copy Ecor_GE225.bam.bai /srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38
g-req -w copy Ecor_GE225-igv.jnlp /srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38
g-req -w copy Ecor_GE225-igv.xml /srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38
g-req -w copy Ecor_GE225_preprocessing.log /srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38
cd /scratch
rm -rf /scratch/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38_Ecor_GE225_temp$$ || exit 1

