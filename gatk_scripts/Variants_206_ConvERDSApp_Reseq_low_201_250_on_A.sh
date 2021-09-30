#!/bin/bash
#$ -hold_jid 540111,540112,540113,540114,540115,540116,540117,540118,540119,540120,540121,540122,540123,540124,540125,540126,540127,540128,540129,540130,540131,540132,540133,540134,540135,540136,540137,540138,540139,540140,540141,540142,540143,540144,540145,540146,540147,540148,540149,540150,540151,540152,540153,540154,540155,540156,540157,540158,540159,540160
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_A_2020-02-11--10-01-10_206_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_A_2020-02-11--10-01-10/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_201_250_2019-12-22--15-40-43/206_A_ref.bam -o 206_A_ref.sort.bam
gatk AddOrReplaceReadGroups -I 206_A_ref.sort.bam -ID 206 -PU 206 -LB 206 -SM 206 -PL Illumina -O 206_A_ref.sort.rg.bam
samtools index 206_A_ref.sort.rg.bam
gatk MarkDuplicates -I 206_A_ref.sort.rg.bam -O 206_A_ref.sort.rg.dup.bam -M 206_A_ref.sort.rg.dup.met
samtools index 206_A_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 206_A_ref.sort.rg.dup.bam -O 206.g.vcf -ERC GVCF
gzip 206.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 206_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 206.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_A_2020-02-11--10-01-10
g-req -w copy 206.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_A_2020-02-11--10-01-10
g-req -w copy 206_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_A_2020-02-11--10-01-10
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_201_250_on_A_2020-02-11--10-01-10_206_temp$$ || exit 1

