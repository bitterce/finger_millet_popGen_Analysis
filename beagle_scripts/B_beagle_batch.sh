#!/bin/bash

##############################################################################
## Run variant imputation on scaffold-seperated files
##############################################################################

source /usr/local/ngseq/etc/lmod_profile
module add Variants/Beagle/5.1

DATA_DIR=/srv/kenlab/celine/master_thesis/data/vcf_files/joint_genotyping/B_vcf_350/out
OUT_DIR=/srv/kenlab/celine/master_thesis/data/vcf_files/beagle/B_vcf_350/out
REF_DIR=/srv/kenlab/celine/master_thesis/data/vcf_files/beagle/references/B_ref_out

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0001/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0001/sb0001.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0001_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0002/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0002/sb0002.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0002_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0003/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0003/sb0003.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0003_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0004/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0004/sb0004.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0004_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0005/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0005/sb0005.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0005_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0006/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0006/sb0006.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0006_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0007/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0007/sb0007.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0007_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0008/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0008/sb0008.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0008_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0009/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0009/sb0009.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0009_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0010/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0010/sb0010.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0010_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0011/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0011/sb0011.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0011_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0012/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0012/sb0012.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0012_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0013/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0013/sb0013.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0013_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0014/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0014/sb0014.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0014_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0015/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0015/sb0015.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0015_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0016/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0016/sb0016.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0016_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0017/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0017/sb0017.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0017_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0018/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0018/sb0018.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0018_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0019/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0019/sb0019.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0019_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0020/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0020/sb0020.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0020_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0021/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0021/sb0021.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0021_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0022/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0022/sb0022.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0022_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0023/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0023/sb0023.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0023_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0024/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0024/sb0024.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0024_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0025/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0025/sb0025.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0025_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0026/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0026/sb0026.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0026_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0027/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0027/sb0027.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0027_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0028/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0028/sb0028.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0028_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0029/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0029/sb0029.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0029_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0030/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0030/sb0030.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0030_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0031/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0031/sb0031.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0031_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0032/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0032/sb0032.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0032_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0033/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0033/sb0033.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0033_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0034/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0034/sb0034.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0034_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0035/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0035/sb0035.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0035_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0036/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0036/sb0036.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0036_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0037/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0037/sb0037.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0037_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0038/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0038/sb0038.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0038_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0039/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0039/sb0039.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0039_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0040/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0040/sb0040.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0040_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0041/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0041/sb0041.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0041_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0042/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0042/sb0042.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0042_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0043/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0043/sb0043.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0043_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0044/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0044/sb0044.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0044_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0045/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0045/sb0045.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0045_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0046/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0046/sb0046.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0046_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0047/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0047/sb0047.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0047_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0048/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0048/sb0048.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0048_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0049/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0049/sb0049.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0049_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0050/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0050/sb0050.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0050_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0051/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0051/sb0051.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0051_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0052/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0052/sb0052.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0052_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0053/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0053/sb0053.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0053_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0054/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0054/sb0054.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0054_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0055/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0055/sb0055.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0055_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0056/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0056/sb0056.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0056_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0057/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0057/sb0057.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0057_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0058/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0058/sb0058.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0058_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0059/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0059/sb0059.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0059_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0060/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0060/sb0060.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0060_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0061/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0061/sb0061.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0061_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0062/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0062/sb0062.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0062_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0063/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0063/sb0063.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0063_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0064/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0064/sb0064.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0064_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0065/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0065/sb0065.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0065_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0066/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0066/sb0066.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0066_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0067/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0067/sb0067.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0067_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0068/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0068/sb0068.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0068_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0069/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0069/sb0069.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0069_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0070/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0070/sb0070.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0070_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0071/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0071/sb0071.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0071_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0072/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0072/sb0072.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0072_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0073/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0073/sb0073.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0073_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0074/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0074/sb0074.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0074_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0075/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0075/sb0075.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0075_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0076/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0076/sb0076.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0076_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0077/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0077/sb0077.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0077_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0078/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0078/sb0078.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0078_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0079/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0079/sb0079.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0079_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0080/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0080/sb0080.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0080_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0081/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0081/sb0081.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0081_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0082/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0082/sb0082.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0082_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0083/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0083/sb0083.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0083_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0084/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0084/sb0084.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0084_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0085/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0085/sb0085.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0085_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0086/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0086/sb0086.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0086_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0087/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0087/sb0087.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0087_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0088/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0088/sb0088.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0088_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0089/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0089/sb0089.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0089_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0090/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0090/sb0090.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0090_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0091/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0091/sb0091.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0091_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0092/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0092/sb0092.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0092_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0093/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0093/sb0093.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0093_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0094/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0094/sb0094.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0094_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0095/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0095/sb0095.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0095_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0096/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0096/sb0096.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0096_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0097/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0097/sb0097.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0097_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0098/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0098/sb0098.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0098_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0099/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0099/sb0099.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0099_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0100/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0100/sb0100.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0100_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0101/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0101/sb0101.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0101_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0102/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0102/sb0102.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0102_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0103/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0103/sb0103.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0103_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0104/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0104/sb0104.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0104_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0105/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0105/sb0105.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0105_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0106/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0106/sb0106.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0106_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0107/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0107/sb0107.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0107_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0108/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0108/sb0108.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0108_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0109/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0109/sb0109.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0109_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0110/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0110/sb0110.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0110_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0111/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0111/sb0111.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0111_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0112/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0112/sb0112.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0112_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0113/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0113/sb0113.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0113_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0114/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0114/sb0114.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0114_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0115/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0115/sb0115.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0115_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0116/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0116/sb0116.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0116_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0117/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0117/sb0117.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0117_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0118/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0118/sb0118.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0118_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0119/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0119/sb0119.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0119_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0120/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0120/sb0120.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0120_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0121/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0121/sb0121.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0121_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0122/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0122/sb0122.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0122_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0123/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0123/sb0123.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0123_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0124/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0124/sb0124.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0124_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0125/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0125/sb0125.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0125_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0126/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0126/sb0126.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0126_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0127/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0127/sb0127.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0127_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0128/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0128/sb0128.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0128_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0129/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0129/sb0129.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0129_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sb0130/BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sb0130/sb0130.filtered_by_PR202.vcf.gz out=$OUT_DIR/sb0130_high_imputation nthreads=8


