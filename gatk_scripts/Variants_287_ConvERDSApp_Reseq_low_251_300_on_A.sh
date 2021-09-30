#!/bin/bash
#$ -hold_jid 569024,569025,569026,569027,569028,569029,569030,569031,569032,569033,569034,569035,569036,569037,569038,569039,569040,569041,569042,569043,569044,569045,569046,569047,569048,569049,569050,569051,569052,569053,569054,569055,569056,569057,569058,569059,569060,569061,569062,569063,569064,569065,569066,569067,569068,569069,569070,569071,569072,569073
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_A_2020-04-28--08-13-23_287_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_A_2020-04-28--08-13-23/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_251_300_2020-04-24--08-30-32/287_A_ref.bam -o 287_A_ref.sort.bam
gatk AddOrReplaceReadGroups -I 287_A_ref.sort.bam -ID 287 -PU 287 -LB 287 -SM 287 -PL Illumina -O 287_A_ref.sort.rg.bam
samtools index 287_A_ref.sort.rg.bam
gatk MarkDuplicates -I 287_A_ref.sort.rg.bam -O 287_A_ref.sort.rg.dup.bam -M 287_A_ref.sort.rg.dup.met
samtools index 287_A_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 287_A_ref.sort.rg.dup.bam -O 287.g.vcf -ERC GVCF
gzip 287.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 287_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 287.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_A_2020-04-28--08-13-23
g-req -w copy 287.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_A_2020-04-28--08-13-23
g-req -w copy 287_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_A_2020-04-28--08-13-23
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_251_300_on_A_2020-04-28--08-13-23_287_temp$$ || exit 1

