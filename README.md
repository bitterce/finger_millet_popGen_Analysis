# finger_millet_popGen_Analysis
Collection of all the scripts, used in the finger millet population genetics analysis pipeline

## Example code for population genetics pipeline for 3 species (1-3)
Align reads to reference genome (subgenome A and subgenome B)
```
bash bwa_scripts/Map_A_1_Reseq_low_001_050.sh
bash bwa_scripts/Map_A_2_Reseq_low_001_050.sh
bash bwa_scripts/Map_A_3_Reseq_low_001_050.sh

bash bwa_scripts/Map_B_1_Reseq_low_001_050.sh
bash bwa_scripts/Map_B_2_Reseq_low_001_050.sh
bash bwa_scripts/Map_B_3_Reseq_low_001_050.sh
```
Merge datasets of subgenome A and subgenome B
```
bash eagle_scripts/Polyploid_1_Merge_BWA_001_050_on_A_and_B.sh
bash eagle_scripts/Polyploid_2_Merge_BWA_001_050_on_A_and_B.sh
bash eagle_scripts/Polyploid_3_Merge_BWA_001_050_on_A_and_B.sh
```
Read statistics before and after EAGLE-RC
```
ruby parse_bamstats_genome_result.rb
```
Call variants in subgenome A and subgenome B seperately
```
bash gatk_scripts/Variants_1_ConvERDSApp_Reseq_low_001_050_on_A.sh
bash gatk_scripts/Variants_2_ConvERDSApp_Reseq_low_001_050_on_A.sh
bash gatk_scripts/Variants_3_ConvERDSApp_Reseq_low_001_050_on_A.sh

bash gatk_scripts/Variants_1_ConvERDSApp_Reseq_low_001_050_on_B.sh
bash gatk_scripts/Variants_2_ConvERDSApp_Reseq_low_001_050_on_B.sh
bash gatk_scripts/Variants_3_ConvERDSApp_Reseq_low_001_050_on_B.sh
```
For faster processing, split vcf files into scaffolds and perform joint genotyping on scaffold-split vcfs
```
python joint_genotyping_scripts/split_g_vcf_gz.py

bash joint_genotyping_scripts/GATKv4_jointgenotype_A_sa0001.sh
...
bash joint_genotyping_scripts/GATKv4_jointgenotype_A_sa0071.sh

bash joint_genotyping_scripts/GATKv4_jointgenotype_B_sb0001.sh
...
bash joint_genotyping_scripts/GATKv4_jointgenotype_B_sa0130.sh
```
Find SNPs in reference genome and discard found SNPs from targed samples
```
bash filter_PR202_scripts/jobs_A_filter_PR202.sh
bash filter_PR202_scripts/jobs_B_filter_PR202.sh
```
Run SNP imputation on scaffold-seperated SNPs
```
bash beagle_scripts/split_ref_vcf_gz.py
bash beagle_scripts/A_beagle_batch.sh
bash beagle_scripts/B_beagle_batch.sh
```







