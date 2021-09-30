# finger_millet_popGen_Analysis
Collection of all the scripts, used in the finger millet population genetics analysis pipeline

## Example code for population genetics pipeline for 3 species (1-3)
```
bash Map_A_1_Reseq_low_001_050.sh
bash Map_A_2_Reseq_low_001_050.sh
bash Map_A_3_Reseq_low_001_050.sh

bash Map_B_1_Reseq_low_001_050.sh
bash Map_B_2_Reseq_low_001_050.sh
bash Map_B_3_Reseq_low_001_050.sh
```
Merge datasets of subgenome A and subgenome B
```
bash Polyploid_1_Merge_BWA_001_050_on_A_and_B.sh
bash Polyploid_2_Merge_BWA_001_050_on_A_and_B.sh
bash Polyploid_3_Merge_BWA_001_050_on_A_and_B.sh
```
Read statistics before and after EAGLE-RC
```
```
ruby parse_bamstats_genome_result.rb
```

