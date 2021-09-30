#!/bin/bash

source /usr/local/ngseq/etc/lmod_profile
module add Variants/Beagle/5.1

DATA_DIR=/srv/kenlab/celine/master_thesis/data/vcf_files/joint_genotyping/A_vcf_350/out
OUT_DIR=/srv/kenlab/celine/master_thesis/data/vcf_files/beagle/A_vcf_350/out
REF_DIR=/srv/kenlab/celine/master_thesis/data/vcf_files/beagle/references/A_ref_out

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0001/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0001/sa0001.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0001_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0002/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0002/sa0002.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0002_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0003/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0003/sa0003.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0003_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0004/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0004/sa0004.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0004_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0005/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0005/sa0005.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0005_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0006/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0006/sa0006.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0006_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0007/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0007/sa0007.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0007_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0008/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0008/sa0008.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0008_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0009/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0009/sa0009.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0009_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0010/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0010/sa0010.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0010_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0011/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0011/sa0011.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0011_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0012/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0012/sa0012.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0012_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0013/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0013/sa0013.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0013_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0014/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0014/sa0014.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0014_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0015/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0015/sa0015.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0015_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0016/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0016/sa0016.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0016_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0017/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0017/sa0017.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0017_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0018/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0018/sa0018.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0018_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0019/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0019/sa0019.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0019_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0020/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0020/sa0020.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0020_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0021/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0021/sa0021.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0021_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0022/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0022/sa0022.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0022_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0023/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0023/sa0023.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0023_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0024/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0024/sa0024.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0024_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0025/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0025/sa0025.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0025_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0026/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0026/sa0026.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0026_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0027/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0027/sa0027.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0027_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0028/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0028/sa0028.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0028_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0029/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0029/sa0029.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0029_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0030/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0030/sa0030.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0030_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0031/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0031/sa0031.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0031_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0032/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0032/sa0032.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0032_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0033/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0033/sa0033.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0033_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0034/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0034/sa0034.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0034_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0035/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0035/sa0035.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0035_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0036/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0036/sa0036.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0036_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0037/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0037/sa0037.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0037_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0038/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0038/sa0038.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0038_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0039/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0039/sa0039.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0039_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0040/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0040/sa0040.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0040_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0041/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0041/sa0041.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0041_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0042/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0042/sa0042.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0042_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0043/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0043/sa0043.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0043_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0044/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0044/sa0044.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0044_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0045/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0045/sa0045.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0045_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0046/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0046/sa0046.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0046_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0047/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0047/sa0047.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0047_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0048/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0048/sa0048.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0048_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0049/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0049/sa0049.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0049_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0050/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0050/sa0050.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0050_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0051/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0051/sa0051.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0051_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0052/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0052/sa0052.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0052_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0053/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0053/sa0053.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0053_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0054/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0054/sa0054.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0054_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0055/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0055/sa0055.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0055_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0056/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0056/sa0056.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0056_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0057/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0057/sa0057.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0057_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0058/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0058/sa0058.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0058_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0059/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0059/sa0059.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0059_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0060/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0060/sa0060.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0060_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0061/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0061/sa0061.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0061_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0062/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0062/sa0062.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0062_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0063/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0063/sa0063.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0063_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0064/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0064/sa0064.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0064_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0065/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0065/sa0065.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0065_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0066/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0066/sa0066.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0066_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0067/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0067/sa0067.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0067_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0068/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0068/sa0068.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0068_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0069/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0069/sa0069.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0069_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0070/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0070/sa0070.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0070_high_imputation nthreads=8

java -Xmx50g -jar $Beagle_jar ref=$REF_DIR/sa0071/BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz gt=$DATA_DIR/vcf_sa0071/sa0071.filtered_by_PR202.vcf.gz out=$OUT_DIR/sa0071_high_imputation nthreads=8
