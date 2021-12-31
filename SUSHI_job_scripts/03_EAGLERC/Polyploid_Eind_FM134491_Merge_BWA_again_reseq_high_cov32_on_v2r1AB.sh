#!/bin/bash
#$ -hold_jid 511122,511123,511124,511125,511126,511127,511128,511129,511130,511131,511132,511133,511134,511135,511136,511137,511138,511139,511140,511141,511142,511143,511144,511145,511146,511147,511148,511149,511150,511151,511152,511153
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27_Eind_FM134491_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27/input_dataset.tsv
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/EAGLE/1.1.1

#### NOW THE ACTUAL JOBS STARTS
eagle --version
eagle-rc --ngi --ref1=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa --ref2=/srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa --bam1=/srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1A_2019-07-06--13-12-07/Eind_FM134491.bam --bam2=/srv/gstore/projects/p1634/BWA_again_reseq_high_cov32_on_v2r1B_2019-07-06--13-18-38/Eind_FM134491.bam -o Eind_FM134491 > Eind_FM134491.sort.stdout.log 2> Eind_FM134491.sort.errout.log
mv Eind_FM1344911.ref.bam Eind_FM134491_DENOVO_v2.0_A_subgenome_ref.bam
mv Eind_FM1344911.alt.bam Eind_FM134491_DENOVO_v2.0_A_subgenome_alt.bam
mv Eind_FM1344911.unk.bam Eind_FM134491_DENOVO_v2.0_A_subgenome_unk.bam
mv Eind_FM1344911.mul.bam Eind_FM134491_DENOVO_v2.0_A_subgenome_mul.bam
mv Eind_FM1344912.ref.bam Eind_FM134491_DENOVO_v2.0_B_subgenome_ref.bam
mv Eind_FM1344912.alt.bam Eind_FM134491_DENOVO_v2.0_B_subgenome_alt.bam
mv Eind_FM1344912.unk.bam Eind_FM134491_DENOVO_v2.0_B_subgenome_unk.bam
mv Eind_FM1344912.mul.bam Eind_FM134491_DENOVO_v2.0_B_subgenome_mul.bam
echo 'Supercalifragilisticexpialidocious!!' > Eind_FM134491_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy Eind_FM134491_DENOVO_v2.0_A_subgenome_ref.bam /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
g-req -w copy Eind_FM134491_DENOVO_v2.0_A_subgenome_alt.bam /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
g-req -w copy Eind_FM134491_DENOVO_v2.0_A_subgenome_unk.bam /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
g-req -w copy Eind_FM134491_DENOVO_v2.0_A_subgenome_mul.bam /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
g-req -w copy Eind_FM134491_DENOVO_v2.0_B_subgenome_ref.bam /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
g-req -w copy Eind_FM134491_DENOVO_v2.0_B_subgenome_alt.bam /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
g-req -w copy Eind_FM134491_DENOVO_v2.0_B_subgenome_unk.bam /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
g-req -w copy Eind_FM134491_DENOVO_v2.0_B_subgenome_mul.bam /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
g-req -w copy Eind_FM134491.sort.stdout.log /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
g-req -w copy Eind_FM134491.sort.errout.log /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
g-req -w copy Eind_FM134491_dummy.txt /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27
cd /scratch
rm -rf /scratch/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27_Eind_FM134491_temp$$ || exit 1

