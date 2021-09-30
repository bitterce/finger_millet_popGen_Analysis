#!/bin/bash
#$ -hold_jid 556611,556612,556613,556614,556615,556616,556617,556618,556619,556620,556621,556622,556623,556624,556625,556626,556627,556628,556629,556630,556631,556632,556633,556634,556635,556636,556637,556638,556639,556640,556641,556642,556643,556644,556645,556646,556647,556648,556649,556650,556651,556652,556653,556654,556655,556656,556657,556658,556659,556660
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_A_2020-03-25--07-36-50_38_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_A_2020-03-25--07-36-50/input_dataset.tsv
LAST_JOB=FALSE
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Tools/samtools/1.9 Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
samtools sort /srv/gstore/projects/p1634/EAGLERC_Reseq_low_001_050_2020-03-02--10-46-15/38_A_ref.bam -o 38_A_ref.sort.bam
gatk AddOrReplaceReadGroups -I 38_A_ref.sort.bam -ID 38 -PU 38 -LB 38 -SM 38 -PL Illumina -O 38_A_ref.sort.rg.bam
samtools index 38_A_ref.sort.rg.bam
gatk MarkDuplicates -I 38_A_ref.sort.rg.bam -O 38_A_ref.sort.rg.dup.bam -M 38_A_ref.sort.rg.dup.met
samtools index 38_A_ref.sort.rg.dup.bam
gatk HaplotypeCaller -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -I 38_A_ref.sort.rg.dup.bam -O 38.g.vcf -ERC GVCF
gzip 38.g.vcf
echo 'Supercalifragilisticexpialidocious!!' > 38_dummy.txt


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy 38.g.vcf.gz /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_A_2020-03-25--07-36-50
g-req -w copy 38.g.vcf.idx /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_A_2020-03-25--07-36-50
g-req -w copy 38_dummy.txt /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_A_2020-03-25--07-36-50
cd /scratch
rm -rf /scratch/GATKv4DNAHaplotypeCaller_Reseq_low_001_050_on_A_2020-03-25--07-36-50_38_temp$$ || exit 1

