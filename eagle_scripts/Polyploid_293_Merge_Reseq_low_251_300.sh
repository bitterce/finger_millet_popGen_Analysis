#!/bin/bash
#$ -hold_jid 568385,568386,568387,568388,568389,568390,568391,568392,568393,568394,568395,568396,568397,568398,568399,568400,568401,568402,568403,568404,568405,568406,568407,568408,568409,568410,568411,568412,568413,568414,568415,568416,568417,568418,568419,568420,568421,568422,568423,568424,568425,568426,568427,568428,568429,568430,568431,568432,568433,568434
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32_293_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/EAGLE/1.1.1b

#### NOW THE ACTUAL JOBS STARTS
eagle --version
eagle-rc --ngi --ref1=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa --ref2=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa --bam1=/srv/gstore/projects/p1634/BWA_Reseq_low_251_300_on_A_2020-04-23--12-47-03/293.bam --bam2=/srv/gstore/projects/p1634/BWA_Reseq_low_251_300_on_B_2020-03-24--08-51-36/293.bam -o 293 > 293.sort.stdout.log 2> 293.sort.errout.log
mv 2931.ref.bam 293_A_ref.bam
mv 2931.alt.bam 293_A_alt.bam
mv 2931.unk.bam 293_A_unk.bam
mv 2931.mul.bam 293_A_mul.bam
mv 2932.ref.bam 293_B_ref.bam
mv 2932.alt.bam 293_B_alt.bam
mv 2932.unk.bam 293_B_unk.bam
mv 2932.mul.bam 293_B_mul.bam
echo 'Supercalifragilisticexpialidocious!!' > 293_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 293_A_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
g-req -w copy 293_A_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
g-req -w copy 293_A_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
g-req -w copy 293_A_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
g-req -w copy 293_B_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
g-req -w copy 293_B_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
g-req -w copy 293_B_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
g-req -w copy 293_B_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
g-req -w copy 293.sort.stdout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
g-req -w copy 293.sort.errout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
g-req -w copy 293_dummy.txt /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32
cd /scratch
rm -rf /scratch/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32_293_temp$$ || exit 1

