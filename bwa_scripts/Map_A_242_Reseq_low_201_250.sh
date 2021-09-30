#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18_242_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18/input_dataset.tsv
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
param[['samples']] = '201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250'
param[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0/Annotation/Release_01-2019-01-24'
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
param[['resultDir']] = 'p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18'
param[['isLastJob']] = FALSE
output = list()
output[['Name']] = '242'
output[['BAM [File]']] = 'p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18/242.bam'
output[['BAI [File]']] = 'p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18/242.bam.bai'
output[['IGV Starter [Link]']] = 'p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18/242-igv.jnlp'
output[['Species']] = 'n/a'
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0/Annotation/Release_01-2019-01-24'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '18860819'
output[['IGV Starter [File]']] = 'p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18/242-igv.jnlp'
output[['IGV Session [File]']] = 'p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18/242-igv.xml'
output[['PreprocessingLog [File]']] = 'p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18/242_preprocessing.log'
output[['Condition [Factor]']] = ''
output[['Extract Id [B-Fabric]']] = 'bfe_41394'
output[['FragmentSize [Characteristic]']] = '0'
output[['SampleConc [Characteristic]']] = '25'
output[['Tube [Characteristic]']] = 'p1634_3646/242'
output[['Index [Characteristic]']] = 'CTGAAGCT-ATAGAGGC'
output[['PlatePosition [Characteristic]']] = 'SA_150817_1_B7'
output[['LibConc_100_800bp [Characteristic]']] = '88.2'
output[['LibConc_qPCR [Characteristic]']] = '0'
output[['InputAmount [Characteristic]']] = '100'
input = list()
input[['Name']] = '242'
input[['Condition']] = ''
input[['Read1']] = 'p1634/HiSeq4000_20170906_RUN374_o3646/20170906.A-242_R1.fastq.gz'
input[['Read2']] = 'p1634/HiSeq4000_20170906_RUN374_o3646/20170906.A-242_R2.fastq.gz'
input[['Species']] = 'n/a'
input[['FragmentSize']] = '0'
input[['SampleConc']] = '25'
input[['Tube']] = 'p1634_3646/242'
input[['Extract Id']] = 'bfe_41394'
input[['Index']] = 'CTGAAGCT-ATAGAGGC'
input[['PlatePosition']] = 'SA_150817_1_B7'
input[['LibConc_100_800bp']] = '88.2'
input[['LibConc_qPCR']] = '0'
input[['Adapter1']] = 'GATCGGAAGAGCACACGTCTGAACTCCAGTCAC'
input[['Adapter2']] = 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'
input[['strandMode']] = 'both'
input[['LibraryPrepKit']] = 'TruSeq DNA Nano'
input[['EnrichmentMethod']] = 'None'
input[['InputAmount']] = '100'
input[['Read Count']] = '18860819'
EzAppBWA\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
. "/usr/local/ngseq/miniconda3/etc/profile.d/conda.sh"
conda activate sushi
g-req -w copy 242.bam /srv/gstore/projects/p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18
g-req -w copy 242.bam.bai /srv/gstore/projects/p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18
g-req -w copy 242-igv.jnlp /srv/gstore/projects/p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18
g-req -w copy 242-igv.xml /srv/gstore/projects/p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18
g-req -w copy 242_preprocessing.log /srv/gstore/projects/p1634/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18
cd /scratch
rm -rf /scratch/BWA_Reseq_low_201_250_on_A_2020-09-15--16-37-18_242_temp$$ || exit 1

