#!/bin/bash
#$ -hold_jid 535559,535560,535561,535562,535563,535564,535565,535566,535567,535568,535569,535570,535571,535572,535573,535574,535575,535576,535577,535578,535579,535580,535581,535582,535583,535584,535585,535586,535587,535588,535589,535590,535591,535592,535593,535594,535595,535596,535597,535598,535599,535600,535601,535602,535603,535604,535605,535606,535607,535608
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32_335_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/EAGLE/1.1.1b

#### NOW THE ACTUAL JOBS STARTS
eagle --version
eagle-rc --ngi --ref1=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa --ref2=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa --bam1=/srv/gstore/projects/p1634/BWA_Reseq_low_301_350_on_A_2019-11-27--09-41-12/335.bam --bam2=/srv/gstore/projects/p1634/BWA_Reseq_low_301_350_on_B_2019-11-27--09-48-15/335.bam -o 335 > 335.sort.stdout.log 2> 335.sort.errout.log
mv 3351.ref.bam 335_A_ref.bam
mv 3351.alt.bam 335_A_alt.bam
mv 3351.unk.bam 335_A_unk.bam
mv 3351.mul.bam 335_A_mul.bam
mv 3352.ref.bam 335_B_ref.bam
mv 3352.alt.bam 335_B_alt.bam
mv 3352.unk.bam 335_B_unk.bam
mv 3352.mul.bam 335_B_mul.bam
echo 'Supercalifragilisticexpialidocious!!' > 335_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 335_A_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
g-req -w copy 335_A_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
g-req -w copy 335_A_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
g-req -w copy 335_A_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
g-req -w copy 335_B_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
g-req -w copy 335_B_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
g-req -w copy 335_B_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
g-req -w copy 335_B_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
g-req -w copy 335.sort.stdout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
g-req -w copy 335.sort.errout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
g-req -w copy 335_dummy.txt /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32
cd /scratch
rm -rf /scratch/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32_335_temp$$ ||??exit 1

