#!/bin/bash
#$ -hold_jid 559321,559322,559323,559324,559325,559326,559327,559328,559329,559330,559331,559332,559333,559334,559335,559336,559337,559338,559339,559340,559341,559342,559343,559344,559345,559346,559347,559348,559349,559350,559351,559352,559353,559354,559355,559356,559357,559358,559359,559360,559361,559362,559363,559364,559365,559366,559367,559368,559369,559370
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00_182_temp$$
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
eagle-rc --ngi --ref1=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa --ref2=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa --bam1=/srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_A_2020-03-21--17-38-05/182.bam --bam2=/srv/gstore/projects/p1634/BWA_Reseq_low_151_200_on_B_2020-03-17--16-08-12/182.bam -o 182 > 182.sort.stdout.log 2> 182.sort.errout.log
mv 1821.ref.bam 182_A_ref.bam
mv 1821.alt.bam 182_A_alt.bam
mv 1821.unk.bam 182_A_unk.bam
mv 1821.mul.bam 182_A_mul.bam
mv 1822.ref.bam 182_B_ref.bam
mv 1822.alt.bam 182_B_alt.bam
mv 1822.unk.bam 182_B_unk.bam
mv 1822.mul.bam 182_B_mul.bam
echo 'Supercalifragilisticexpialidocious!!' > 182_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 182_A_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 182_A_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 182_A_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 182_A_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 182_B_ref.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 182_B_alt.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 182_B_unk.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 182_B_mul.bam /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 182.sort.stdout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 182.sort.errout.log /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
g-req -w copy 182_dummy.txt /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00
cd /scratch
rm -rf /scratch/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00_182_temp$$ || exit 1

