source /usr/local/ngseq/etc/lmod_profile
module add Variants/Beagle/5.1
java -Xmx200g -jar $Beagle_jar gt=data/A_only_Eafr_only_snp.vcf.gz out=BEAGLE_A_only_Eafr_only_snp nthreads=8
java -Xmx200g -jar $Beagle_jar gt=data/A_only_Ecor_only_snp.vcf.gz out=BEAGLE_A_only_Ecor_only_snp nthreads=8
java -Xmx200g -jar $Beagle_jar gt=data/A_wo_Eind_PR202_only_snp.vcf.gz out=BEAGLE_A_wo_Eind_PR202_only_snp nthreads=8
java -Xmx200g -jar $Beagle_jar gt=data/B_only_Eafr_only_snp.vcf.gz out=BEAGLE_B_only_Eafr_only_snp nthreads=8
java -Xmx200g -jar $Beagle_jar gt=data/B_only_Ecor_only_snp.vcf.gz out=BEAGLE_B_only_Ecor_only_snp nthreads=8
java -Xmx200g -jar $Beagle_jar gt=data/B_wo_Eind_PR202_only_snp.vcf.gz out=BEAGLE_B_wo_Eind_PR202_only_snp nthreads=8

java -Xmx200g -jar $Beagle_jar gt=data/A_wo_Eind_PR202_snp_indel.vcf.gz out=BEAGLE_A_wo_Eind_PR202_snp_indel nthreads=8
java -Xmx200g -jar $Beagle_jar gt=data/B_wo_Eind_PR202_snp_indel.vcf.gz out=BEAGLE_B_wo_Eind_PR202_snp_indel nthreads=8

