#!/bin/bash
#$ -hold_jid 569224,569225,569226,569227,569228,569229,569230,569231,569232,569233,569234,569235,569236,569237,569238,569239,569240,569241,569242,569243,569244,569245,569246,569247,569248,569249,569250,569251,569252,569253,569254,569255,569256,569257,569258,569259,569260,569261,569262,569263,569264,569265,569266,569267,569268,569269,569270,569271,569272,569273
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_B_2020-05-04--11-28-16_72_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_B_2020-05-04--11-28-16/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56/72_B_ref.bam -o 72_B_ref.sort.bam
gatk AddOrReplaceReadGroups -I 72_B_ref.sort.bam -ID 72 -PU 72 -LB 72 -SM 72 -PL Illumina -O 72_B_ref.sort.rg.bam
samtools index 72_B_ref.sort.rg.bam
gatk MarkDuplicates -I 72_B_ref.sort.rg.bam -O 72_B_ref.sort.rg.dup.bam -M 72_B_ref.sort.rg.dup.met
samtools index 72_B_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 72_B_ref.sort.rg.dup.bam -O 72.g.vcf -ERC GVCF
gzip 72.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 72_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 72.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_B_2020-05-04--11-28-16
g-req -w copy 72.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_B_2020-05-04--11-28-16
g-req -w copy 72_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_B_2020-05-04--11-28-16
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_B_2020-05-04--11-28-16_72_temp$$ || exit 1

