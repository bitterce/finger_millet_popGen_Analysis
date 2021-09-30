#!/bin/bash
#$ -hold_jid 556661,556662,556663,556664,556665,556666,556667,556668,556669,556670,556671,556672,556673,556674,556675,556676,556677,556678,556679,556680,556681,556682,556683,556684,556685,556686,556687,556688,556689,556690,556691,556692,556693,556694,556695,556696,556697,556698,556699,556700,556701,556702,556703,556704,556705,556706,556707,556708,556709,556710
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_B_2020-03-25--07-37-24_3_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_B_2020-03-25--07-37-24/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15/3_B_ref.bam -o 3_B_ref.sort.bam
gatk AddOrReplaceReadGroups -I 3_B_ref.sort.bam -ID 3 -PU 3 -LB 3 -SM 3 -PL Illumina -O 3_B_ref.sort.rg.bam
samtools index 3_B_ref.sort.rg.bam
gatk MarkDuplicates -I 3_B_ref.sort.rg.bam -O 3_B_ref.sort.rg.dup.bam -M 3_B_ref.sort.rg.dup.met
samtools index 3_B_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 3_B_ref.sort.rg.dup.bam -O 3.g.vcf -ERC GVCF
gzip 3.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 3_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 3.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_B_2020-03-25--07-37-24
g-req -w copy 3.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_B_2020-03-25--07-37-24
g-req -w copy 3_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_B_2020-03-25--07-37-24
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_B_2020-03-25--07-37-24_3_temp$$ || exit 1

