#!/bin/bash
#$ -hold_jid 569174,569175,569176,569177,569178,569179,569180,569181,569182,569183,569184,569185,569186,569187,569188,569189,569190,569191,569192,569193,569194,569195,569196,569197,569198,569199,569200,569201,569202,569203,569204,569205,569206,569207,569208,569209,569210,569211,569212,569213,569214,569215,569216,569217,569218,569219,569220,569221,569222,569223
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_A_2020-04-26--17-54-50_76_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_A_2020-04-26--17-54-50/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_051_100_2020-04-24--14-38-56/76_A_ref.bam -o 76_A_ref.sort.bam
gatk AddOrReplaceReadGroups -I 76_A_ref.sort.bam -ID 76 -PU 76 -LB 76 -SM 76 -PL Illumina -O 76_A_ref.sort.rg.bam
samtools index 76_A_ref.sort.rg.bam
gatk MarkDuplicates -I 76_A_ref.sort.rg.bam -O 76_A_ref.sort.rg.dup.bam -M 76_A_ref.sort.rg.dup.met
samtools index 76_A_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 76_A_ref.sort.rg.dup.bam -O 76.g.vcf -ERC GVCF
gzip 76.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 76_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 76.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_A_2020-04-26--17-54-50
g-req -w copy 76.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_A_2020-04-26--17-54-50
g-req -w copy 76_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_A_2020-04-26--17-54-50
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_051_100_on_A_2020-04-26--17-54-50_76_temp$$ ||??exit 1

