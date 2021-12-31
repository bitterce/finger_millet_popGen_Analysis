#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07_Eind_EC516242_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07/input_dataset.tsv
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
param[['resultDir']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07'
output = list()
output[['Name']] = 'Eind_EC516242'
output[['BAM [File]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07/Eind_EC516242.bam'
output[['BAI [File]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07/Eind_EC516242.bam.bai'
output[['IGV Starter [Link]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07/Eind_EC516242-igv.jnlp'
output[['Species']] = 'E. indica'
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Annotation/Release_01-2019-02-04'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '145793382'
output[['IGV Starter [File]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07/Eind_EC516242-igv.jnlp'
output[['IGV Session [File]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07/Eind_EC516242-igv.xml'
output[['PreprocessingLog [File]']] = 'p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07/Eind_EC516242_preprocessing.log'
output[['Extract Id [B-Fabric]']] = 'ATCACG'
output[['Sample Id [B-Fabric]']] = 'bfs_136446'
output[['FragmentSize [Characteristic]']] = '0'
output[['SampleConc [Characteristic]']] = '0'
output[['Tube [Characteristic]']] = 'p1636_2030/1'
output[['PlatePosition [Characteristic]']] = ''
output[['LibConc_100_800bp [Characteristic]']] = '42.7'
output[['LibConc_qPCR [Characteristic]']] = '0'
output[['InputAmount [Characteristic]']] = '300'
input = list()
input[['Name']] = 'Eind_EC516242'
input[['Read1']] = 'p1636/NextSeq500_20160302_NS32_o2030/20160302.A-diploid_R1.fastq.gz'
input[['Read2']] = 'p1636/NextSeq500_20160302_NS32_o2030/20160302.A-diploid_R2.fastq.gz'
input[['Species']] = 'E. indica'
input[['FragmentSize']] = '0'
input[['SampleConc']] = '0'
input[['Tube']] = 'p1636_2030/1'
input[['Extract Id']] = 'ATCACG'
input[['PlatePosition']] = ''
input[['LibConc_100_800bp']] = '42.7'
input[['LibConc_qPCR']] = '0'
input[['Adapter1']] = 'GATCGGAAGAGCACACGTCTGAACTCCAGTCAC'
input[['Adapter2']] = 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'
input[['strandMode']] = ''
input[['LibraryPrepKit']] = 'TruSeq DNA Nano'
input[['EnrichmentMethod']] = 'None'
input[['InputAmount']] = '300'
input[['Read Count']] = '145793382'
input[['Sample Id']] = 'bfs_136446'
input[['Location']] = 'India'
EzAppBWA\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy Eind_EC516242.bam /srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07
g-req -w copy Eind_EC516242.bam.bai /srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07
g-req -w copy Eind_EC516242-igv.jnlp /srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07
g-req -w copy Eind_EC516242-igv.xml /srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07
g-req -w copy Eind_EC516242_preprocessing.log /srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07
cd /scratch
rm -rf /scratch/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07_Eind_EC516242_temp$$ || exit 1

