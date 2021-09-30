#!/bin/bash

DATA_DIR=/srv/kenlab/celine/master_thesis/data/vcf_files/joint_genotyping/A_vcf_350/out
REF_DIR=/srv/gstore/projects/p1634/GATKv4JointGenoTypes_A_only_PR202_snp_indel_2019-08-11--08-42-57

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0001/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0001/sa0001.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0001/sa0001.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0002/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0002/sa0002.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0002/sa0002.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0003/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0003/sa0003.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0003/sa0003.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0004/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0004/sa0004.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0004/sa0004.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0005/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0005/sa0005.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0005/sa0005.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0006/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0006/sa0006.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0006/sa0006.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0007/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0007/sa0007.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0007/sa0007.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0008/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0008/sa0008.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0008/sa0008.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0009/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0009/sa0009.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0009/sa0009.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0010/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0010/sa0010.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0010/sa0010.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0011/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0011/sa0011.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0011/sa0011.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0012/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0012/sa0012.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0012/sa0012.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0013/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0013/sa0013.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0013/sa0013.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0014/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0014/sa0014.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0014/sa0014.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0015/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0015/sa0015.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0015/sa0015.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0016/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0016/sa0016.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0016/sa0016.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0017/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0017/sa0017.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0017/sa0017.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0018/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0018/sa0018.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0018/sa0018.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0019/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0019/sa0019.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0019/sa0019.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0020/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0020/sa0020.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0020/sa0020.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0021/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0021/sa0021.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0021/sa0021.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0022/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0022/sa0022.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0022/sa0022.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0023/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0023/sa0023.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0023/sa0023.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0024/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0024/sa0024.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0024/sa0024.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0025/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0025/sa0025.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0025/sa0025.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0026/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0026/sa0026.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0026/sa0026.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0027/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0027/sa0027.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0027/sa0027.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0028/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0028/sa0028.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0028/sa0028.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0029/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0029/sa0029.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0029/sa0029.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0030/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0030/sa0030.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0030/sa0030.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0031/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0031/sa0031.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0031/sa0031.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0032/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0032/sa0032.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0032/sa0032.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0033/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0033/sa0033.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0033/sa0033.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0034/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0034/sa0034.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0034/sa0034.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0035/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0035/sa0035.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0035/sa0035.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0036/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0036/sa0036.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0036/sa0036.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0037/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0037/sa0037.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0037/sa0037.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0038/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0038/sa0038.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0038/sa0038.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0039/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0039/sa0039.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0039/sa0039.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0040/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0040/sa0040.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0040/sa0040.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0041/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0041/sa0041.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0041/sa0041.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0042/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0042/sa0042.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0042/sa0042.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0043/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0043/sa0043.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0043/sa0043.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0044/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0044/sa0044.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0044/sa0044.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0045/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0045/sa0045.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0045/sa0045.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0046/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0046/sa0046.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0046/sa0046.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0047/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0047/sa0047.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0047/sa0047.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0048/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0048/sa0048.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0048/sa0048.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0049/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0049/sa0049.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0049/sa0049.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0050/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0050/sa0050.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0050/sa0050.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0051/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0051/sa0051.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0051/sa0051.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0052/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0052/sa0052.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0052/sa0052.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0053/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0053/sa0053.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0053/sa0053.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0054/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0054/sa0054.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0054/sa0054.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0055/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0055/sa0055.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0055/sa0055.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0056/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0056/sa0056.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0056/sa0056.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0057/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0057/sa0057.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0057/sa0057.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0058/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0058/sa0058.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0058/sa0058.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0059/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0059/sa0059.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0059/sa0059.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0060/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0060/sa0060.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0060/sa0060.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0061/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0061/sa0061.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0061/sa0061.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0062/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0062/sa0062.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0062/sa0062.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0063/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0063/sa0063.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0063/sa0063.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0064/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0064/sa0064.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0064/sa0064.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0065/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0065/sa0065.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0065/sa0065.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0066/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0066/sa0066.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0066/sa0066.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0067/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0067/sa0067.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0067/sa0067.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0068/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0068/sa0068.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0068/sa0068.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0069/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0069/sa0069.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0069/sa0069.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0070/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0070/sa0070.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0070/sa0070.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sa0071/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sa0071/sa0071.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sa0071/sa0071.filtered_by_PR202.log
