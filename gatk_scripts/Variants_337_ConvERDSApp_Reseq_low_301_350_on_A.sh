#!/bin/bash
#$ -hold_jid 539126,539127,539128,539129,539130,539131,539132,539133,539134,539135,539136,539137,539138,539139,539140,539141,539142,539143,539144,539145,539146,539147,539148,539149,539150,539151,539152,539153,539154,539155,539156,539157,539158,539159,539160,539161,539162,539163,539164,539165,539166,539167,539168,539169,539170,539171,539172,539173,539174,539175
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_A_2020-01-07--15-19-57_337_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_A_2020-01-07--15-19-57/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_301_350_2019-12-20--12-30-32/337_A_ref.bam -o 337_A_ref.sort.bam
gatk AddOrReplaceReadGroups -I 337_A_ref.sort.bam -ID 337 -PU 337 -LB 337 -SM 337 -PL Illumina -O 337_A_ref.sort.rg.bam
samtools index 337_A_ref.sort.rg.bam
gatk MarkDuplicates -I 337_A_ref.sort.rg.bam -O 337_A_ref.sort.rg.dup.bam -M 337_A_ref.sort.rg.dup.met
samtools index 337_A_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 337_A_ref.sort.rg.dup.bam -O 337.g.vcf -ERC GVCF
gzip 337.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 337_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 337.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_A_2020-01-07--15-19-57
g-req -w copy 337.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_A_2020-01-07--15-19-57
g-req -w copy 337_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_A_2020-01-07--15-19-57
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_301_350_on_A_2020-01-07--15-19-57_337_temp$$ || exit 1

