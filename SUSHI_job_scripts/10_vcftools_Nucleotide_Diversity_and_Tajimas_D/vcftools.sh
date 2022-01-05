mkdir data
ln -s /srv/gstore/projects/p1634/GATKv4JointGenoTypes_A_only_Ecor_snp_indel_filtered_by_PR202_2019-08-18--16-13-18/ data/Run5A
cp data/Run5A/GATKv4_Genotyping.filtered_by_reference_vcf.vcf.gz data/Run5A.vcf.gz
cp data/Run5B/GATKv4_Genotyping.filtered_by_reference_vcf.vcf.gz data/Run5B.vcf.gz

module load Tools/vcftools/0.1.16
time vcftools --gzvcf data/Run5A.vcf.gz --TajimaD 5000 --out Run5A_TajimaD
time vcftools --gzvcf data/Run5B.vcf.gz --TajimaD 5000 --out Run5B_TajimaD
time vcftools --gzvcf data/Run5A.vcf.gz --window-pi 5000 --out Run5A_pi
time vcftools --gzvcf data/Run5B.vcf.gz --window-pi 5000 --out Run5B_pi
