#!/bin/bash
#$ -hold_jid 513446,513447,513448,513449,513450,513451,513452,513453,513454,513455,513456,513457,513458,513459,513460,513461,513462,513463,513464,513465,513466,513467,513468,513469,513470,513471,513472,513473,513474,513475,513476,513477
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31_Eafr_GE7123_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/input_dataset.tsv
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_reseq_high_cov32_on_v2r1AB_2019-07-09--11-21-27/Eafr_GE7123_DENOVO_v2.0_B_subgenome_ref.bam -o Eafr_GE7123_DENOVO_v2.0_B_subgenome_ref.sort.bam
gatk AddOrReplaceReadGroups -I Eafr_GE7123_DENOVO_v2.0_B_subgenome_ref.sort.bam -ID Eafr_GE7123 -PU Eafr_GE7123 -LB Eafr_GE7123 -SM Eafr_GE7123 -PL Illumina -O Eafr_GE7123_DENOVO_v2.0_B_subgenome_ref.sort.rg.bam
samtools index Eafr_GE7123_DENOVO_v2.0_B_subgenome_ref.sort.rg.bam
gatk MarkDuplicates -I Eafr_GE7123_DENOVO_v2.0_B_subgenome_ref.sort.rg.bam -O Eafr_GE7123_DENOVO_v2.0_B_subgenome_ref.sort.rg.dup.bam -M Eafr_GE7123_DENOVO_v2.0_B_subgenome_ref.sort.rg.dup.met
samtools index Eafr_GE7123_DENOVO_v2.0_B_subgenome_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -I Eafr_GE7123_DENOVO_v2.0_B_subgenome_ref.sort.rg.dup.bam -O Eafr_GE7123.g.vcf -ERC GVCF
gzip Eafr_GE7123.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > Eafr_GE7123_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy Eafr_GE7123.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31
g-req -w copy Eafr_GE7123.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31
g-req -w copy Eafr_GE7123_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31_Eafr_GE7123_temp$$ || exit 1

