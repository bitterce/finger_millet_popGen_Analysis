#!/bin/bash
#$ -hold_jid 567392,567393,567394,567395,567396,567397,567398,567399,567400,567401,567402,567403,567404,567405,567406,567407,567408,567409,567410,567411,567412,567413,567414,567415,567416,567417,567418,567419,567420,567421,567422,567423,567424,567425,567426,567427,567428,567429,567430,567431,567432,567433,567434,567435,567436,567437,567438,567439,567440,567441
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_A_2020-04-20--10-44-37_154_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_A_2020-04-20--10-44-37/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_151_200_2020-03-23--08-27-00/154_A_ref.bam -o 154_A_ref.sort.bam
gatk AddOrReplaceReadGroups -I 154_A_ref.sort.bam -ID 154 -PU 154 -LB 154 -SM 154 -PL Illumina -O 154_A_ref.sort.rg.bam
samtools index 154_A_ref.sort.rg.bam
gatk MarkDuplicates -I 154_A_ref.sort.rg.bam -O 154_A_ref.sort.rg.dup.bam -M 154_A_ref.sort.rg.dup.met
samtools index 154_A_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 154_A_ref.sort.rg.dup.bam -O 154.g.vcf -ERC GVCF
gzip 154.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 154_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 154.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_A_2020-04-20--10-44-37
g-req -w copy 154.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_A_2020-04-20--10-44-37
g-req -w copy 154_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_A_2020-04-20--10-44-37
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_151_200_on_A_2020-04-20--10-44-37_154_temp$$ || exit 1

