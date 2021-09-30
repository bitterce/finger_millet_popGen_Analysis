#!/bin/bash
#$ -hold_jid 559321,559322,559323,559324,559325,559326,559327,559328,559329,559330,559331,559332,559333,559334,559335,559336,559337,559338,559339,559340,559341,559342,559343,559344,559345,559346,559347,559348,559349,559350,559351,559352,559353,559354,559355,559356,559357,559358,559359,559360,559361,559362,559363,559364,559365,559366,559367,559368,559369,559370
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00_174_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/EAGLE/1.1.1b

#### NOW THE ACTUAL JOBS STARTS
eagle --version
eagle-rc --ngi --ref1=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa --ref2=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa --bam1=/srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05/174.bam --bam2=/srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12/174.bam -o 174 > 174.sort.stdout.log 2> 174.sort.errout.log
mv 1741.ref.bam 174_A_ref.bam
mv 1741.alt.bam 174_A_alt.bam
mv 1741.unk.bam 174_A_unk.bam
mv 1741.mul.bam 174_A_mul.bam
mv 1742.ref.bam 174_B_ref.bam
mv 1742.alt.bam 174_B_alt.bam
mv 1742.unk.bam 174_B_unk.bam
mv 1742.mul.bam 174_B_mul.bam
echo 'Supercalifragilisticexpialidocious!!' > 174_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 174_A_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 174_A_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 174_A_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 174_A_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 174_B_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 174_B_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 174_B_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 174_B_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 174.sort.stdout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 174.sort.errout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 174_dummy.txt /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
cd /scratch
rm -rf /scratch/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00_174_temp$$ || exit 1

