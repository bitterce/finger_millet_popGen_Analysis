#!/bin/bash
#$ -hold_jid 538788,538789,538790,538791,538792,538793,538794,538795,538796,538797,538798,538799,538800,538801,538802,538803,538804,538805,538806,538807,538808,538809,538810,538811,538812,538813,538814,538815,538816,538817,538818,538819,538820,538821,538822,538823,538824,538825,538826,538827,538828,538829,538830,538831,538832,538833,538834,538835,538836,538837
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34_124_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/EAGLE/1.1.1b

#### NOW THE ACTUAL JOBS STARTS
eagle --version
eagle-rc --ngi --ref1=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa --ref2=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa --bam1=/srv/gstore/projects/p1634/BWA_Reseq_low_101_150_on_A_2019-12-02--10-11-37/124.bam --bam2=/srv/gstore/projects/p1634/BWA_Reseq_low_101_150_on_B_2019-12-02--10-13-03/124.bam -o 124 > 124.sort.stdout.log 2> 124.sort.errout.log
mv 1241.ref.bam 124_A_ref.bam
mv 1241.alt.bam 124_A_alt.bam
mv 1241.unk.bam 124_A_unk.bam
mv 1241.mul.bam 124_A_mul.bam
mv 1242.ref.bam 124_B_ref.bam
mv 1242.alt.bam 124_B_alt.bam
mv 1242.unk.bam 124_B_unk.bam
mv 1242.mul.bam 124_B_mul.bam
echo 'Supercalifragilisticexpialidocious!!' > 124_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 124_A_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
g-req -w copy 124_A_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
g-req -w copy 124_A_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
g-req -w copy 124_A_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
g-req -w copy 124_B_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
g-req -w copy 124_B_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
g-req -w copy 124_B_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
g-req -w copy 124_B_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
g-req -w copy 124.sort.stdout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
g-req -w copy 124.sort.errout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
g-req -w copy 124_dummy.txt /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34
cd /scratch
rm -rf /scratch/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34_124_temp$$ || exit 1

