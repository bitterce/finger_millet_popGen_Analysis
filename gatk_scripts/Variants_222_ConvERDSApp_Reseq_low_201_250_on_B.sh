#!/bin/bash
#$ -hold_jid 540161,540162,540163,540164,540165,540166,540167,540168,540169,540170,540171,540172,540173,540174,540175,540176,540177,540178,540179,540180,540181,540182,540183,540184,540185,540186,540187,540188,540189,540190,540191,540192,540193,540194,540195,540196,540197,540198,540199,540200,540201,540202,540203,540204,540205,540206,540207,540208,540209,540210
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_B_2020-03-06--13-31-02_222_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_B_2020-03-06--13-31-02/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43/222_B_ref.bam -o 222_B_ref.sort.bam
gatk AddOrReplaceReadGroups -I 222_B_ref.sort.bam -ID 222 -PU 222 -LB 222 -SM 222 -PL Illumina -O 222_B_ref.sort.rg.bam
samtools index 222_B_ref.sort.rg.bam
gatk MarkDuplicates -I 222_B_ref.sort.rg.bam -O 222_B_ref.sort.rg.dup.bam -M 222_B_ref.sort.rg.dup.met
samtools index 222_B_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 222_B_ref.sort.rg.dup.bam -O 222.g.vcf -ERC GVCF
gzip 222.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 222_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 222.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_B_2020-03-06--13-31-02
g-req -w copy 222.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_B_2020-03-06--13-31-02
g-req -w copy 222_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_B_2020-03-06--13-31-02
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_B_2020-03-06--13-31-02_222_temp$$ || exit 1

