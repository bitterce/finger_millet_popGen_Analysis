#!/bin/bash
#$ -hold_jid 540361,540362,540363,540364,540365,540366,540367,540368,540369,540370,540371,540372,540373,540374,540375,540376,540377,540378,540379,540380,540381,540382,540383,540384,540385,540386,540387,540388,540389,540390,540391,540392,540393,540394,540395,540396,540397,540398,540399,540400,540401,540402,540403,540404,540405,540406,540407,540408,540409,540410
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_A_2020-04-14--09-29-35_116_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_A_2020-04-14--09-29-35/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34/116_A_ref.bam -o 116_A_ref.sort.bam
gatk AddOrReplaceReadGroups -I 116_A_ref.sort.bam -ID 116 -PU 116 -LB 116 -SM 116 -PL Illumina -O 116_A_ref.sort.rg.bam
samtools index 116_A_ref.sort.rg.bam
gatk MarkDuplicates -I 116_A_ref.sort.rg.bam -O 116_A_ref.sort.rg.dup.bam -M 116_A_ref.sort.rg.dup.met
samtools index 116_A_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 116_A_ref.sort.rg.dup.bam -O 116.g.vcf -ERC GVCF
gzip 116.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 116_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 116.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_A_2020-04-14--09-29-35
g-req -w copy 116.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_A_2020-04-14--09-29-35
g-req -w copy 116_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_A_2020-04-14--09-29-35
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_A_2020-04-14--09-29-35_116_temp$$ || exit 1

