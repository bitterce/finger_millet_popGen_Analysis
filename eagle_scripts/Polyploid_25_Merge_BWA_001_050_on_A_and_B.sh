#!/bin/bash
#$ -hold_jid 552746,552747,552748,552749,552750,552751,552752,552753,552754,552755,552756,552757,552758,552759,552760,552761,552762,552763,552764,552765,552766,552767,552768,552769,552770,552771,552772,552773,552774,552775,552776,552777,552778,552779,552780,552781,552782,552783,552784,552785,552786,552787,552788,552789,552790,552791,552792,552793,552794,552795
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15_25_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/EAGLE/1.1.1b

#### NOW THE ACTUAL JOBS STARTS
eagle --version
eagle-rc --ngi --ref1=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa --ref2=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa --bam1=/srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_A_2020-02-19--10-04-24/25.bam --bam2=/srv/gstore/projects/p1634/BWA_Reseq_low_001_050_on_B_2020-02-24--06-55-05/25.bam -o 25 > 25.sort.stdout.log 2> 25.sort.errout.log
mv 251.ref.bam 25_A_ref.bam
mv 251.alt.bam 25_A_alt.bam
mv 251.unk.bam 25_A_unk.bam
mv 251.mul.bam 25_A_mul.bam
mv 252.ref.bam 25_B_ref.bam
mv 252.alt.bam 25_B_alt.bam
mv 252.unk.bam 25_B_unk.bam
mv 252.mul.bam 25_B_mul.bam
echo 'Supercalifragilisticexpialidocious!!' > 25_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 25_A_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
g-req -w copy 25_A_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
g-req -w copy 25_A_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
g-req -w copy 25_A_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
g-req -w copy 25_B_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
g-req -w copy 25_B_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
g-req -w copy 25_B_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
g-req -w copy 25_B_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
g-req -w copy 25.sort.stdout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
g-req -w copy 25.sort.errout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
g-req -w copy 25_dummy.txt /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15
cd /scratch
rm -rf /scratch/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15_25_temp$$ || exit 1

