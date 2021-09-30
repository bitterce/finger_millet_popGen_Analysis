#!/bin/bash
#$ -hold_jid 569074,569075,569076,569077,569078,569079,569080,569081,569082,569083,569084,569085,569086,569087,569088,569089,569090,569091,569092,569093,569094,569095,569096,569097,569098,569099,569100,569101,569102,569103,569104,569105,569106,569107,569108,569109,569110,569111,569112,569113,569114,569115,569116,569117,569118,569119,569120,569121,569122,569123
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_B_2020-04-25--18-24-08_285_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_B_2020-04-25--18-24-08/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32/285_B_ref.bam -o 285_B_ref.sort.bam
gatk AddOrReplaceReadGroups -I 285_B_ref.sort.bam -ID 285 -PU 285 -LB 285 -SM 285 -PL Illumina -O 285_B_ref.sort.rg.bam
samtools index 285_B_ref.sort.rg.bam
gatk MarkDuplicates -I 285_B_ref.sort.rg.bam -O 285_B_ref.sort.rg.dup.bam -M 285_B_ref.sort.rg.dup.met
samtools index 285_B_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 285_B_ref.sort.rg.dup.bam -O 285.g.vcf -ERC GVCF
gzip 285.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 285_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 285.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_B_2020-04-25--18-24-08
g-req -w copy 285.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_B_2020-04-25--18-24-08
g-req -w copy 285_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_B_2020-04-25--18-24-08
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_B_2020-04-25--18-24-08_285_temp$$ || exit 1

