#!/bin/bash
#$ -hold_jid 538603,538604,538605,538606,538607,538608,538609,538610,538611,538612,538613,538614,538615,538616,538617,538618,538619,538620,538621,538622,538623,538624,538625,538626,538627,538628,538629,538630,538631,538632,538633,538634,538635,538636,538637,538638,538639,538640,538641,538642,538643,538644,538645,538646,538647,538648,538649,538650,538651,538652
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43_245_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/EAGLE/1.1.1b

#### NOW THE ACTUAL JOBS STARTS
eagle --version
eagle-rc --ngi --ref1=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa --ref2=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa --bam1=/srv/gstore/projects/p1634/BWA_Reseq_low_201_250_on_A_2019-11-28--11-30-20/245.bam --bam2=/srv/gstore/projects/p1634/BWA_Reseq_low_201_250_on_B_2019-11-28--11-31-33/245.bam -o 245 > 245.sort.stdout.log 2> 245.sort.errout.log
mv 2451.ref.bam 245_A_ref.bam
mv 2451.alt.bam 245_A_alt.bam
mv 2451.unk.bam 245_A_unk.bam
mv 2451.mul.bam 245_A_mul.bam
mv 2452.ref.bam 245_B_ref.bam
mv 2452.alt.bam 245_B_alt.bam
mv 2452.unk.bam 245_B_unk.bam
mv 2452.mul.bam 245_B_mul.bam
echo 'Supercalifragilisticexpialidocious!!' > 245_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 245_A_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
g-req -w copy 245_A_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
g-req -w copy 245_A_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
g-req -w copy 245_A_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
g-req -w copy 245_B_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
g-req -w copy 245_B_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
g-req -w copy 245_B_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
g-req -w copy 245_B_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
g-req -w copy 245.sort.stdout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
g-req -w copy 245.sort.errout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
g-req -w copy 245_dummy.txt /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43
cd /scratch
rm -rf /scratch/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43_245_temp$$ || exit 1

