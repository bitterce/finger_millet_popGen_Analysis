#!/bin/bash
#$ -hold_jid 539176,539177,539178,539179,539180,539181,539182,539183,539184,539185,539186,539187,539188,539189,539190,539191,539192,539193,539194,539195,539196,539197,539198,539199,539200,539201,539202,539203,539204,539205,539206,539207,539208,539209,539210,539211,539212,539213,539214,539215,539216,539217,539218,539219,539220,539221,539222,539223,539224,539225
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_B_2020-01-07--15-20-50_327_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_B_2020-01-07--15-20-50/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32/327_B_ref.bam -o 327_B_ref.sort.bam
gatk AddOrReplaceReadGroups -I 327_B_ref.sort.bam -ID 327 -PU 327 -LB 327 -SM 327 -PL Illumina -O 327_B_ref.sort.rg.bam
samtools index 327_B_ref.sort.rg.bam
gatk MarkDuplicates -I 327_B_ref.sort.rg.bam -O 327_B_ref.sort.rg.dup.bam -M 327_B_ref.sort.rg.dup.met
samtools index 327_B_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 327_B_ref.sort.rg.dup.bam -O 327.g.vcf -ERC GVCF
gzip 327.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 327_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 327.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_B_2020-01-07--15-20-50
g-req -w copy 327.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_B_2020-01-07--15-20-50
g-req -w copy 327_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_B_2020-01-07--15-20-50
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_B_2020-01-07--15-20-50_327_temp$$ || exit 1

