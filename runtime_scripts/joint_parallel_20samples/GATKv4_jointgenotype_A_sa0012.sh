#!/bin/bash

set -e
set -o pipefail
umask 0002

DATA_DIR=/srv/kenlab/celine/master_thesis/data/vcf_files/joint_genotyping/A_vcf_350/vcf_compressed
SCRATCH_DIR=~/script_dir/runtime_scripts/joint_parallel_20samples/scratch_GATKv4_jointgenotype_sa0012
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

gunzip -c $DATA_DIR/sa0012/1.g.vcf.gz > $SCRATCH_DIR/1.g.vcf
gunzip -c $DATA_DIR/sa0012/2.g.vcf.gz > $SCRATCH_DIR/2.g.vcf
gunzip -c $DATA_DIR/sa0012/3.g.vcf.gz > $SCRATCH_DIR/3.g.vcf
gunzip -c $DATA_DIR/sa0012/4.g.vcf.gz > $SCRATCH_DIR/4.g.vcf
gunzip -c $DATA_DIR/sa0012/5.g.vcf.gz > $SCRATCH_DIR/5.g.vcf
gunzip -c $DATA_DIR/sa0012/6.g.vcf.gz > $SCRATCH_DIR/6.g.vcf
gunzip -c $DATA_DIR/sa0012/7.g.vcf.gz > $SCRATCH_DIR/7.g.vcf
gunzip -c $DATA_DIR/sa0012/8.g.vcf.gz > $SCRATCH_DIR/8.g.vcf
gunzip -c $DATA_DIR/sa0012/9.g.vcf.gz > $SCRATCH_DIR/9.g.vcf
gunzip -c $DATA_DIR/sa0012/10.g.vcf.gz > $SCRATCH_DIR/10.g.vcf
gunzip -c $DATA_DIR/sa0012/11.g.vcf.gz > $SCRATCH_DIR/11.g.vcf
gunzip -c $DATA_DIR/sa0012/12.g.vcf.gz > $SCRATCH_DIR/12.g.vcf
gunzip -c $DATA_DIR/sa0012/13.g.vcf.gz > $SCRATCH_DIR/13.g.vcf
gunzip -c $DATA_DIR/sa0012/14.g.vcf.gz > $SCRATCH_DIR/14.g.vcf
gunzip -c $DATA_DIR/sa0012/15.g.vcf.gz > $SCRATCH_DIR/15.g.vcf
gunzip -c $DATA_DIR/sa0012/16.g.vcf.gz > $SCRATCH_DIR/16.g.vcf
gunzip -c $DATA_DIR/sa0012/17.g.vcf.gz > $SCRATCH_DIR/17.g.vcf
gunzip -c $DATA_DIR/sa0012/18.g.vcf.gz > $SCRATCH_DIR/18.g.vcf
gunzip -c $DATA_DIR/sa0012/19.g.vcf.gz > $SCRATCH_DIR/19.g.vcf
gunzip -c $DATA_DIR/sa0012/20.g.vcf.gz > $SCRATCH_DIR/20.g.vcf

cd $SCRATCH_DIR || exit 1
gatk --java-options "-Xmx10G" CombineGVCFs -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -V 1.g.vcf -V 2.g.vcf -V 3.g.vcf -V 4.g.vcf -V 5.g.vcf -V 6.g.vcf -V 7.g.vcf -V 8.g.vcf -V 9.g.vcf -V 10.g.vcf -V 11.g.vcf -V 12.g.vcf -V 13.g.vcf -V 14.g.vcf -V 15.g.vcf -V 16.g.vcf -V 17.g.vcf -V 18.g.vcf -V 19.g.vcf -V 20.g.vcf -O GATKv4_Genotyping.g.vcf
rm -r {1..20}.g.vcf
gatk --java-options "-Xmx10G" GenotypeGVCFs -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -V GATKv4_Genotyping.g.vcf -O GATKv4_Genotyping.raw.vcf
gatk --java-options "-Xmx10G" SelectVariants -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -V GATKv4_Genotyping.raw.vcf -O GATKv4_Genotyping.raw.snp.vcf -select-type SNP
gatk --java-options "-Xmx10G" VariantFiltration -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_A_subgenome/Sequence/WholeGenomeFasta/genome.fa -V GATKv4_Genotyping.raw.snp.vcf --filter-expression "! vc.hasAttribute('QD') || QD < 2.0" --filter-name "QD" --filter-expression "vc.isSNP() && (MQ < 30.0 || (vc.hasAttribute('MQRankSum') && MQRankSum < -15.0))" --filter-name "MQ" --genotype-filter-expression "GQ < 20 || DP == 0" --genotype-filter-name "GQ" -O GATKv4_Genotyping.filtered.vcf
mv GATKv4_Genotyping.raw.snp.vcf GATKv4_Genotyping.raw.vcf
gzip GATKv4_Genotyping.raw.vcf
gzip GATKv4_Genotyping.filtered.vcf

