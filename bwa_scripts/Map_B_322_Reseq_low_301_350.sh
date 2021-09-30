#!/bin/bash

set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11_322_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11/input_dataset.tsv
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
param[['samples']] = '301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350'
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
param[['max_len2']] = '0'
param[['poly_x_min_len']] = '10'
param[['length_required']] = '18'
param[['cmdOptionsFastp']] = ''
param[['mail']] = ''
param[['dataRoot']] = '/srv/gstore/projects'
param[['resultDir']] = 'p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11'
param[['isLastJob']] = FALSE
output = list()
output[['Name']] = '322'
output[['BAM [File]']] = 'p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11/322.bam'
output[['BAI [File]']] = 'p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11/322.bam.bai'
output[['IGV [Link]']] = 'p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11/322-igv.html'
output[['Species']] = ''
output[['refBuild']] = 'Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Annotation/Release_01-2019-02-04'
output[['paired']] = 'true'
output[['refFeatureFile']] = ''
output[['strandMode']] = ''
output[['Read Count']] = '29502442'
output[['IGV [File]']] = 'p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11/322-igv.html'
output[['PreprocessingLog [File]']] = 'p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11/322_preprocessing.log'
output[['Condition [Factor]']] = ''
output[['Extract Id [B-Fabric]']] = ''
output[['FragmentSize [Characteristic]']] = ''
output[['SampleConc [Characteristic]']] = ''
output[['Tube [Characteristic]']] = ''
output[['Index [Characteristic]']] = ''
output[['PlatePosition [Characteristic]']] = ''
output[['LibConc_100_800bp [Characteristic]']] = ''
output[['LibConc_qPCR [Characteristic]']] = ''
output[['InputAmount [Characteristic]']] = ''
input = list()
input[['Name']] = '322'
input[['Condition']] = ''
input[['Read1']] = 'p1634/HiSeq4000_20170828_RUN379_o3646/20170828.A-322_R1.fastq.gz'
input[['Read2']] = 'p1634/HiSeq4000_20170828_RUN379_o3646/20170828.A-322_R2.fastq.gz'
input[['Species']] = ''
input[['FragmentSize']] = ''
input[['SampleConc']] = ''
input[['Tube']] = ''
input[['Extract Id']] = ''
input[['Index']] = ''
input[['PlatePosition']] = ''
input[['LibConc_100_800bp']] = ''
input[['LibConc_qPCR']] = ''
input[['Adapter1']] = ''
input[['Adapter2']] = ''
input[['strandMode']] = ''
input[['LibraryPrepKit']] = ''
input[['EnrichmentMethod']] = ''
input[['InputAmount']] = ''
input[['Read Count']] = '29502442'
EzAppBWA\$new()\$run(input=input, output=output, param=param)
EOT


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
. "/usr/local/ngseq/miniconda3/etc/profile.d/conda.sh"
conda activate sushi
g-req -w copy 322.bam /srv/gstore/projects/p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11
g-req -w copy 322.bam.bai /srv/gstore/projects/p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11
g-req -w copy 322-igv.html /srv/gstore/projects/p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11
g-req -w copy 322_preprocessing.log /srv/gstore/projects/p1634/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11
cd /scratch
rm -rf /scratch/BWA_Reseq_low_301_350_on_B_2020-09-17--12-46-11_322_temp$$ || exit 1

