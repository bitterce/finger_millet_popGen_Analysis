#!/bin/bash
#$ -hold_jid 568488,568489,568490,568491,568492,568493,568494,568495,568496,568497,568498,568499,568500,568501,568502,568503,568504,568505,568506,568507,568508,568509,568510,568511,568512,568513,568514,568515,568516,568517,568518,568519,568520,568521,568522,568523,568524,568525,568526,568527,568528,568529,568530,568531,568532,568533,568534,568535,568536,568537
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56_53_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/EAGLE/1.1.1b

#### NOW THE ACTUAL JOBS STARTS
eagle --version
eagle-rc --ngi --ref1=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa --ref2=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa --bam1=/srv/gstore/projects/p1634/BWA_Reseq_low_051_100_on_A_2020-03-16--07-41-41/53.bam --bam2=/srv/gstore/projects/p1634/BWA_Reseq_low_051_100_on_B_2020-03-23--08-24-42/53.bam -o 53 > 53.sort.stdout.log 2> 53.sort.errout.log
mv 531.ref.bam 53_A_ref.bam
mv 531.alt.bam 53_A_alt.bam
mv 531.unk.bam 53_A_unk.bam
mv 531.mul.bam 53_A_mul.bam
mv 532.ref.bam 53_B_ref.bam
mv 532.alt.bam 53_B_alt.bam
mv 532.unk.bam 53_B_unk.bam
mv 532.mul.bam 53_B_mul.bam
echo 'Supercalifragilisticexpialidocious!!' > 53_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 53_A_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
g-req -w copy 53_A_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
g-req -w copy 53_A_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
g-req -w copy 53_A_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
g-req -w copy 53_B_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
g-req -w copy 53_B_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
g-req -w copy 53_B_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
g-req -w copy 53_B_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
g-req -w copy 53.sort.stdout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
g-req -w copy 53.sort.errout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
g-req -w copy 53_dummy.txt /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56
cd /scratch
rm -rf /scratch/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56_53_temp$$ ||??exit 1

