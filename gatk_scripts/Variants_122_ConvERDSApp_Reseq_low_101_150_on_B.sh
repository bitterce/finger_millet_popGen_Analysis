#!/bin/bash
#$ -hold_jid 540411,540412,540413,540414,540415,540416,540417,540418,540419,540420,540421,540422,540423,540424,540425,540426,540427,540428,540429,540430,540431,540432,540433,540434,540435,540436,540437,540438,540439,540440,540441,540442,540443,540444,540445,540446,540447,540448,540449,540450,540451,540452,540453,540454,540455,540456,540457,540458,540459,540460
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_B_2020-04-14--09-29-47_122_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_B_2020-04-14--09-29-47/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_101_150_2020-01-05--12-32-34/122_B_ref.bam -o 122_B_ref.sort.bam
gatk AddOrReplaceReadGroups -I 122_B_ref.sort.bam -ID 122 -PU 122 -LB 122 -SM 122 -PL Illumina -O 122_B_ref.sort.rg.bam
samtools index 122_B_ref.sort.rg.bam
gatk MarkDuplicates -I 122_B_ref.sort.rg.bam -O 122_B_ref.sort.rg.dup.bam -M 122_B_ref.sort.rg.dup.met
samtools index 122_B_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 122_B_ref.sort.rg.dup.bam -O 122.g.vcf -ERC GVCF
gzip 122.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 122_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 122.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_B_2020-04-14--09-29-47
g-req -w copy 122.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_B_2020-04-14--09-29-47
g-req -w copy 122_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_B_2020-04-14--09-29-47
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_101_150_on_B_2020-04-14--09-29-47_122_temp$$ || exit 1

