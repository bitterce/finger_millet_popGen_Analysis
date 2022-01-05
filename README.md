# Finger millet population genetics analysis scripts
Collection of all the scripts, used in the finger millet population genetics analysis pipeline

Procedures
1. BWA alignment to the A/B subgenome references indepenetly with quality trimming and filtering
 * [01_BWA_on_Asubgenome](https://github.com/bitterce/finger_millet_popGen_Analysis/tree/main/SUSHI_job_scripts/01_BWA_on_Asubgenome)
 * [02_BWA_on_Bsubgenome](https://github.com/bitterce/finger_millet_popGen_Analysis/tree/main/SUSHI_job_scripts/02_BWA_on_Bsubgenome)
2. EAGLE-RC reads classification
 * [03_EAGLERC](https://github.com/bitterce/finger_millet_popGen_Analysis/tree/main/SUSHI_job_scripts/03_EAGLERC)
3. GATK HyplotypeCalling
 * [04_GATK_HaplotypeCaller_Asubgenome](https://github.com/bitterce/finger_millet_popGen_Analysis/tree/main/SUSHI_job_scripts/04_GATK_HaplotypeCaller_Asubgenome)
 * [07_GATK_HaplotypeCaller_Bsubgenome](https://github.com/bitterce/finger_millet_popGen_Analysis/tree/main/SUSHI_job_scripts/07_GATK_HaplotypeCaller_Bsubgenome)
4. GATK JointJenotyping
 * [05_GATK_JointGenoTypes_Asubgenome](https://github.com/bitterce/finger_millet_popGen_Analysis/tree/main/SUSHI_job_scripts/05_GATK_JointGenotTypes_Asubgenome)
 * [08_GATK_JointGenoTypes_Bsubgenome](https://github.com/bitterce/finger_millet_popGen_Analysis/tree/main/SUSHI_job_scripts/08_GATK_JointGenoType_Bsubgenome)
5. Filtering out false positive SNPs with the reference accession data
 * [06_filtering_SNPs_by_PR202_Asubgenome](https://github.com/bitterce/finger_millet_popGen_Analysis/tree/main/SUSHI_job_scripts/06_filtering_SNPs_by_PR202_Asubgenome)
 * [09_filtering_SNPs_by_PR202_Bsubgenome ](https://github.com/bitterce/finger_millet_popGen_Analysis/tree/main/SUSHI_job_scripts/09_filtering_SNPs_by_PR202_Bsubgenome)

Note
* All the job scripts were generated on SUSHI (https://fgcz-sushi.uzh.ch/)


