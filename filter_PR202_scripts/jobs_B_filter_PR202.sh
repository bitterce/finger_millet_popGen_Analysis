#!/bin/bash

DATA_DIR=/srv/kenlab/celine/master_thesis/data/vcf_files/joint_genotyping/B_vcf_350/out
REF_DIR=srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_PR202_snp_indel_2019-08-11--08-49-46/
 
ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb /srv/kenlab/celine/master_thesis/data/vcf_files/joint_genotyping/B_vcf_350/out/vcf_sb0001/GATKv4_Genotyping.filtered.vcf.gz srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_PR202_snp_indel_2019-08-11--08-49-46/GATKv4_Genotyping.filtered.vcf.gz -o /srv/kenlab/celine/master_thesis/data/vcf_files/joint_genotyping/B_vcf_350/out/vcf_sb0001/sb0001.filtered_by_PR202.vcf.gz 2> /srv/kenlab/celine/master_thesis/data/vcf_files/joint_genotyping/B_vcf_350/out/vcf_sb0001/sb0001.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0001/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0001/sb0001.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0001/sb0001.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0002/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0002/sb0002.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0002/sb0002.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0003/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0003/sb0003.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0003/sb0003.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0004/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0004/sb0004.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0004/sb0004.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0005/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0005/sb0005.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0005/sb0005.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0006/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0006/sb0006.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0006/sb0006.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0007/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0007/sb0007.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0007/sb0007.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0008/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0008/sb0008.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0008/sb0008.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0009/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0009/sb0009.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0009/sb0009.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0010/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0010/sb0010.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0010/sb0010.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0011/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0011/sb0011.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0011/sb0011.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0012/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0012/sb0012.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0012/sb0012.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0013/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0013/sb0013.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0013/sb0013.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0014/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0014/sb0014.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0014/sb0014.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0015/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0015/sb0015.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0015/sb0015.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0016/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0016/sb0016.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0016/sb0016.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0017/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0017/sb0017.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0017/sb0017.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0018/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0018/sb0018.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0018/sb0018.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0019/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0019/sb0019.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0019/sb0019.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0020/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0020/sb0020.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0020/sb0020.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0021/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0021/sb0021.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0021/sb0021.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0022/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0022/sb0022.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0022/sb0022.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0023/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0023/sb0023.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0023/sb0023.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0024/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0024/sb0024.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0024/sb0024.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0025/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0025/sb0025.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0025/sb0025.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0026/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0026/sb0026.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0026/sb0026.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0027/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0027/sb0027.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0027/sb0027.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0028/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0028/sb0028.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0028/sb0028.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0029/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0029/sb0029.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0029/sb0029.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0030/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0030/sb0030.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0030/sb0030.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0031/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0031/sb0031.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0031/sb0031.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0032/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0032/sb0032.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0032/sb0032.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0033/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0033/sb0033.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0033/sb0033.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0034/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0034/sb0034.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0034/sb0034.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0035/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0035/sb0035.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0035/sb0035.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0036/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0036/sb0036.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0036/sb0036.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0037/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0037/sb0037.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0037/sb0037.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0038/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0038/sb0038.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0038/sb0038.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0039/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0039/sb0039.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0039/sb0039.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0040/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0040/sb0040.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0040/sb0040.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0041/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0041/sb0041.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0041/sb0041.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0042/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0042/sb0042.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0042/sb0042.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0043/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0043/sb0043.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0043/sb0043.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0044/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0044/sb0044.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0044/sb0044.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0045/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0045/sb0045.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0045/sb0045.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0046/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0046/sb0046.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0046/sb0046.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0047/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0047/sb0047.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0047/sb0047.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0048/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0048/sb0048.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0048/sb0048.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0049/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0049/sb0049.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0049/sb0049.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0050/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0050/sb0050.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0050/sb0050.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0051/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0051/sb0051.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0051/sb0051.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0052/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0052/sb0052.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0052/sb0052.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0053/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0053/sb0053.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0053/sb0053.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0054/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0054/sb0054.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0054/sb0054.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0055/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0055/sb0055.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0055/sb0055.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0056/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0056/sb0056.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0056/sb0056.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0057/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0057/sb0057.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0057/sb0057.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0058/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0058/sb0058.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0058/sb0058.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0059/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0059/sb0059.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0059/sb0059.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0060/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0060/sb0060.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0060/sb0060.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0061/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0061/sb0061.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0061/sb0061.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0062/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0062/sb0062.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0062/sb0062.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0063/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0063/sb0063.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0063/sb0063.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0064/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0064/sb0064.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0064/sb0064.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0065/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0065/sb0065.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0065/sb0065.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0066/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0066/sb0066.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0066/sb0066.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0067/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0067/sb0067.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0067/sb0067.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0068/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0068/sb0068.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0068/sb0068.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0069/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0069/sb0069.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0069/sb0069.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0070/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0070/sb0070.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0070/sb0070.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0071/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0071/sb0071.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0071/sb0071.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0072/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0072/sb0072.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0072/sb0072.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0073/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0073/sb0073.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0073/sb0073.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0074/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0074/sb0074.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0074/sb0074.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0075/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0075/sb0075.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0075/sb0075.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0076/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0076/sb0076.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0076/sb0076.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0077/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0077/sb0077.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0077/sb0077.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0078/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0078/sb0078.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0078/sb0078.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0079/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0079/sb0079.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0079/sb0079.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0080/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0080/sb0080.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0080/sb0080.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0081/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0081/sb0081.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0081/sb0081.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0082/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0082/sb0082.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0082/sb0082.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0083/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0083/sb0083.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0083/sb0083.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0084/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0084/sb0084.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0084/sb0084.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0085/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0085/sb0085.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0085/sb0085.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0086/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0086/sb0086.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0086/sb0086.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0087/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0087/sb0087.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0087/sb0087.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0088/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0088/sb0088.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0088/sb0088.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0089/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0089/sb0089.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0089/sb0089.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0090/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0090/sb0090.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0090/sb0090.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0091/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0091/sb0091.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0091/sb0091.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0092/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0092/sb0092.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0092/sb0092.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0093/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0093/sb0093.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0093/sb0093.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0094/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0094/sb0094.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0094/sb0094.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0095/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0095/sb0095.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0095/sb0095.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0096/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0096/sb0096.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0096/sb0096.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0097/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0097/sb0097.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0097/sb0097.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0098/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0098/sb0098.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0098/sb0098.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0099/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0099/sb0099.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0099/sb0099.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0100/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0100/sb0100.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0100/sb0100.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0101/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0101/sb0101.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0101/sb0101.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0102/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0102/sb0102.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0102/sb0102.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0103/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0103/sb0103.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0103/sb0103.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0104/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0104/sb0104.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0104/sb0104.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0105/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0105/sb0105.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0105/sb0105.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0106/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0106/sb0106.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0106/sb0106.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0107/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0107/sb0107.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0107/sb0107.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0108/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0108/sb0108.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0108/sb0108.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0109/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0109/sb0109.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0109/sb0109.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0110/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0110/sb0110.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0110/sb0110.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0111/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0111/sb0111.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0111/sb0111.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0112/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0112/sb0112.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0112/sb0112.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0113/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0113/sb0113.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0113/sb0113.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0114/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0114/sb0114.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0114/sb0114.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0115/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0115/sb0115.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0115/sb0115.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0116/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0116/sb0116.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0116/sb0116.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0117/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0117/sb0117.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0117/sb0117.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0118/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0118/sb0118.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0118/sb0118.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0119/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0119/sb0119.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0119/sb0119.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0120/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0120/sb0120.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0120/sb0120.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0121/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0121/sb0121.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0121/sb0121.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0122/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0122/sb0122.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0122/sb0122.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0123/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0123/sb0123.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0123/sb0123.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0124/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0124/sb0124.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0124/sb0124.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0125/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0125/sb0125.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0125/sb0125.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0126/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0126/sb0126.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0126/sb0126.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0127/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0127/sb0127.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0127/sb0127.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0128/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0128/sb0128.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0128/sb0128.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0129/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0129/sb0129.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0129/sb0129.filtered_by_PR202.log

ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb $DATA_DIR/vcf_sb0130/GATKv4_Genotyping.filtered.vcf.gz $REF_DIR/GATKv4_Genotyping.filtered.vcf.gz -o $DATA_DIR/vcf_sb0130/sb0130.filtered_by_PR202.vcf.gz 2> $DATA_DIR/vcf_sb0130/sb0130.filtered_by_PR202.log

