#!/bin/bash
#$ -hold_jid 567442,567443,567444,567445,567446,567447,567448,567449,567450,567451,567452,567453,567454,567455,567456,567457,567458,567459,567460,567461,567462,567463,567464,567465,567466,567467,567468,567469,567470,567471,567472,567473,567474,567475,567476,567477,567478,567479,567480,567481,567482,567483,567484,567485,567486,567487,567488,567489,567490,567491
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_B_2020-04-20--10-48-23_180_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_B_2020-04-20--10-48-23/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00/180_B_ref.bam -o 180_B_ref.sort.bam
gatk AddOrReplaceReadGroups -I 180_B_ref.sort.bam -ID 180 -PU 180 -LB 180 -SM 180 -PL Illumina -O 180_B_ref.sort.rg.bam
samtools index 180_B_ref.sort.rg.bam
gatk MarkDuplicates -I 180_B_ref.sort.rg.bam -O 180_B_ref.sort.rg.dup.bam -M 180_B_ref.sort.rg.dup.met
samtools index 180_B_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 180_B_ref.sort.rg.dup.bam -O 180.g.vcf -ERC GVCF
gzip 180.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 180_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 180.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_B_2020-04-20--10-48-23
g-req -w copy 180.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_B_2020-04-20--10-48-23
g-req -w copy 180_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_B_2020-04-20--10-48-23
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_B_2020-04-20--10-48-23_180_temp$$ || exit 1

