#!/bin/bash
#$ -hold_jid 513514,513515,513516,513517,513518,513519,513520,513521,513522,513523,513524,513525,513526,513527,513528,513529,513530,513531,513532,513533,513534,513535,513536,513537,513538,513539,513540,513541,513542,513543,513544,513545
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_2019-08-15--16-28-18_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_2019-08-15--16-28-18/input_dataset.tsv
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

#### NOW THE ACTUAL JOBS STARTS
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_FM27743-2.g.vcf.gz .
gunzip -c Ecor_FM27743-2.g.vcf.gz > Ecor_FM27743-2.g.vcf
rm Ecor_FM27743-2.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_FM27745-1.g.vcf.gz .
gunzip -c Ecor_FM27745-1.g.vcf.gz > Ecor_FM27745-1.g.vcf
rm Ecor_FM27745-1.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_FM27757.g.vcf.gz .
gunzip -c Ecor_FM27757.g.vcf.gz > Ecor_FM27757.g.vcf
rm Ecor_FM27757.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE1004.g.vcf.gz .
gunzip -c Ecor_GE1004.g.vcf.gz > Ecor_GE1004.g.vcf
rm Ecor_GE1004.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE1012.g.vcf.gz .
gunzip -c Ecor_GE1012.g.vcf.gz > Ecor_GE1012.g.vcf
rm Ecor_GE1012.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE12.g.vcf.gz .
gunzip -c Ecor_GE12.g.vcf.gz > Ecor_GE12.g.vcf
rm Ecor_GE12.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE225.g.vcf.gz .
gunzip -c Ecor_GE225.g.vcf.gz > Ecor_GE225.g.vcf
rm Ecor_GE225.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE2403.g.vcf.gz .
gunzip -c Ecor_GE2403.g.vcf.gz > Ecor_GE2403.g.vcf
rm Ecor_GE2403.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE258.g.vcf.gz .
gunzip -c Ecor_GE258.g.vcf.gz > Ecor_GE258.g.vcf
rm Ecor_GE258.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE2911.g.vcf.gz .
gunzip -c Ecor_GE2911.g.vcf.gz > Ecor_GE2911.g.vcf
rm Ecor_GE2911.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE2912.g.vcf.gz .
gunzip -c Ecor_GE2912.g.vcf.gz > Ecor_GE2912.g.vcf
rm Ecor_GE2912.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE3140.g.vcf.gz .
gunzip -c Ecor_GE3140.g.vcf.gz > Ecor_GE3140.g.vcf
rm Ecor_GE3140.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE3149.g.vcf.gz .
gunzip -c Ecor_GE3149.g.vcf.gz > Ecor_GE3149.g.vcf
rm Ecor_GE3149.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE3235.g.vcf.gz .
gunzip -c Ecor_GE3235.g.vcf.gz > Ecor_GE3235.g.vcf
rm Ecor_GE3235.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE3265.g.vcf.gz .
gunzip -c Ecor_GE3265.g.vcf.gz > Ecor_GE3265.g.vcf
rm Ecor_GE3265.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE3275.g.vcf.gz .
gunzip -c Ecor_GE3275.g.vcf.gz > Ecor_GE3275.g.vcf
rm Ecor_GE3275.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE337.g.vcf.gz .
gunzip -c Ecor_GE337.g.vcf.gz > Ecor_GE337.g.vcf
rm Ecor_GE337.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE3461.g.vcf.gz .
gunzip -c Ecor_GE3461.g.vcf.gz > Ecor_GE3461.g.vcf
rm Ecor_GE3461.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE4136.g.vcf.gz .
gunzip -c Ecor_GE4136.g.vcf.gz > Ecor_GE4136.g.vcf
rm Ecor_GE4136.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE4172.g.vcf.gz .
gunzip -c Ecor_GE4172.g.vcf.gz > Ecor_GE4172.g.vcf
rm Ecor_GE4172.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE4690.g.vcf.gz .
gunzip -c Ecor_GE4690.g.vcf.gz > Ecor_GE4690.g.vcf
rm Ecor_GE4690.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE47.g.vcf.gz .
gunzip -c Ecor_GE47.g.vcf.gz > Ecor_GE47.g.vcf
rm Ecor_GE47.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE4976.g.vcf.gz .
gunzip -c Ecor_GE4976.g.vcf.gz > Ecor_GE4976.g.vcf
rm Ecor_GE4976.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE5004.g.vcf.gz .
gunzip -c Ecor_GE5004.g.vcf.gz > Ecor_GE5004.g.vcf
rm Ecor_GE5004.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE5095.g.vcf.gz .
gunzip -c Ecor_GE5095.g.vcf.gz > Ecor_GE5095.g.vcf
rm Ecor_GE5095.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE5116.g.vcf.gz .
gunzip -c Ecor_GE5116.g.vcf.gz > Ecor_GE5116.g.vcf
rm Ecor_GE5116.g.vcf.gz
cp /srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_reseq_high_cov32_on_v2r1B_2019-07-23--11-08-31/Ecor_GE58.g.vcf.gz .
gunzip -c Ecor_GE58.g.vcf.gz > Ecor_GE58.g.vcf
rm Ecor_GE58.g.vcf.gz
gatk CombineGVCFs -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -V Ecor_FM27743-2.g.vcf -V Ecor_FM27745-1.g.vcf -V Ecor_FM27757.g.vcf -V Ecor_GE1004.g.vcf -V Ecor_GE1012.g.vcf -V Ecor_GE12.g.vcf -V Ecor_GE225.g.vcf -V Ecor_GE2403.g.vcf -V Ecor_GE258.g.vcf -V Ecor_GE2911.g.vcf -V Ecor_GE2912.g.vcf -V Ecor_GE3140.g.vcf -V Ecor_GE3149.g.vcf -V Ecor_GE3235.g.vcf -V Ecor_GE3265.g.vcf -V Ecor_GE3275.g.vcf -V Ecor_GE337.g.vcf -V Ecor_GE3461.g.vcf -V Ecor_GE4136.g.vcf -V Ecor_GE4172.g.vcf -V Ecor_GE4690.g.vcf -V Ecor_GE47.g.vcf -V Ecor_GE4976.g.vcf -V Ecor_GE5004.g.vcf -V Ecor_GE5095.g.vcf -V Ecor_GE5116.g.vcf -V Ecor_GE58.g.vcf -O GATKv4_Genotyping.g.vcf
gatk GenotypeGVCFs -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -V GATKv4_Genotyping.g.vcf -O GATKv4_Genotyping.raw.vcf
gatk VariantFiltration -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -V GATKv4_Genotyping.raw.vcf --filter-expression "! vc.hasAttribute('QD') || QD < 2.0" --filter-name "QD" --filter-expression "vc.isSNP() && (MQ < 30.0 || (vc.hasAttribute('MQRankSum') && MQRankSum < -15.0))" --filter-name "MQ" --genotype-filter-expression "GQ < 20 || DP == 0" --genotype-filter-name "GQ" -O GATKv4_Genotyping.filtered.vcf
gzip GATKv4_Genotyping.raw.vcf
gzip GATKv4_Genotyping.filtered.vcf


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy GATKv4_Genotyping.raw.vcf.gz /srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_2019-08-15--16-28-18
g-req -w copy GATKv4_Genotyping.filtered.vcf.gz /srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_2019-08-15--16-28-18
cd /scratch
rm -rf /scratch/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_2019-08-15--16-28-18_temp$$ || exit 1

