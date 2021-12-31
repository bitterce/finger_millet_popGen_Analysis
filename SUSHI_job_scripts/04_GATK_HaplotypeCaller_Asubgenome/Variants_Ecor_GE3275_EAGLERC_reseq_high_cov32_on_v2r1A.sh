#!/bin/bash
#$ -hold_jid 513414,513415,513416,513417,513418,513419,513420,513421,513422,513423,513424,513425,513426,513427,513428,513429,513430,513431,513432,513433,513434,513435,513436,513437,513438,513439,513440,513441,513442,513443,513444,513445
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1A_2019-07-23--10-56-42_Ecor_GE3275_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1A_2019-07-23--10-56-42/input_dataset.tsv
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27/Ecor_GE3275_DENOVO_v2.0_A_subgenome_ref.bam -o Ecor_GE3275_DENOVO_v2.0_A_subgenome_ref.sort.bam
gatk AddOrReplaceReadGroups -I Ecor_GE3275_DENOVO_v2.0_A_subgenome_ref.sort.bam -ID Ecor_GE3275 -PU Ecor_GE3275 -LB Ecor_GE3275 -SM Ecor_GE3275 -PL Illumina -O Ecor_GE3275_DENOVO_v2.0_A_subgenome_ref.sort.rg.bam
samtools index Ecor_GE3275_DENOVO_v2.0_A_subgenome_ref.sort.rg.bam
gatk MarkDuplicates -I Ecor_GE3275_DENOVO_v2.0_A_subgenome_ref.sort.rg.bam -O Ecor_GE3275_DENOVO_v2.0_A_subgenome_ref.sort.rg.dup.bam -M Ecor_GE3275_DENOVO_v2.0_A_subgenome_ref.sort.rg.dup.met
samtools index Ecor_GE3275_DENOVO_v2.0_A_subgenome_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -I Ecor_GE3275_DENOVO_v2.0_A_subgenome_ref.sort.rg.dup.bam -O Ecor_GE3275.g.vcf -ERC GVCF
gzip Ecor_GE3275.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > Ecor_GE3275_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy Ecor_GE3275.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1A_2019-07-23--10-56-42
g-req -w copy Ecor_GE3275.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1A_2019-07-23--10-56-42
g-req -w copy Ecor_GE3275_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1A_2019-07-23--10-56-42
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1A_2019-07-23--10-56-42_Ecor_GE3275_temp$$ || exit 1

