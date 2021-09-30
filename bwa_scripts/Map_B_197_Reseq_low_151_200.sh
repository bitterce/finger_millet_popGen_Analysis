#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12_197_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12/input_dataset.tsv
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
param[['samples']] = '151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200'
param[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Annotation/Release_01-2019-02-04'
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
param[['poly_x_min_len']] = '10'
param[['length_required']] = '18'
param[['cmdOptionsFastp']] = ''
param[['mail']] = ''
param[['dataRoot']] = '/srv/gstore/projects'
param[['resultDir']] = 'p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12'
param[['isLastJob']] = FALSE
output = list()
output[['Name']] = '197'
output[['BAM [File]']] = 'p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12/197.bam'
output[['BAI [File]']] = 'p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12/197.bam.bai'
output[['IGV Starter [Link]']] = 'p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12/197-igv.jnlp'
output[['Species']] = 'n/a'
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Annotation/Release_01-2019-02-04'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '24777110'
output[['IGV Starter [File]']] = 'p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12/197-igv.jnlp'
output[['IGV Session [File]']] = 'p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12/197-igv.xml'
output[['PreprocessingLog [File]']] = 'p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12/197_preprocessing.log'
output[['Condition [Factor]']] = ''
output[['Extract Id [B-Fabric]']] = 'bfe_41349'
output[['FragmentSize [Characteristic]']] = '0'
output[['SampleConc [Characteristic]']] = '25'
output[['Tube [Characteristic]']] = 'p1634_3646/197'
output[['Index [Characteristic]']] = 'ATTACTCG-AGGCGAAG'
output[['PlatePosition [Characteristic]']] = 'SA_150817_1_E1'
output[['LibConc_100_800bp [Characteristic]']] = '63.2'
output[['LibConc_qPCR [Characteristic]']] = '0'
output[['InputAmount [Characteristic]']] = '100'
input = list()
input[['Name']] = '197'
input[['Condition']] = ''
input[['Read1']] = 'p1634/HiSeq4000_20170906_RUN374_o3646/20170906.A-197_R1.fastq.gz'
input[['Read2']] = 'p1634/HiSeq4000_20170906_RUN374_o3646/20170906.A-197_R2.fastq.gz'
input[['Species']] = 'n/a'
input[['FragmentSize']] = '0'
input[['SampleConc']] = '25'
input[['Tube']] = 'p1634_3646/197'
input[['Extract Id']] = 'bfe_41349'
input[['Index']] = 'ATTACTCG-AGGCGAAG'
input[['PlatePosition']] = 'SA_150817_1_E1'
input[['LibConc_100_800bp']] = '63.2'
input[['LibConc_qPCR']] = '0'
input[['Adapter1']] = 'GATCGGAAGAGCACACGTCTGAACTCCAGTCAC'
input[['Adapter2']] = 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'
input[['strandMode']] = 'both'
input[['LibraryPrepKit']] = 'TruSeq DNA Nano'
input[['EnrichmentMethod']] = 'None'
input[['InputAmount']] = '100'
input[['Read Count']] = '24777110'
EzAppBWA\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 197.bam /srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12
g-req -w copy 197.bam.bai /srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12
g-req -w copy 197-igv.jnlp /srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12
g-req -w copy 197-igv.xml /srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12
g-req -w copy 197_preprocessing.log /srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12
cd /scratch
rm -rf /scratch/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12_197_temp$$ || exit 1

