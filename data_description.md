# Finger millet - Data description 
- Home directory with all the data (Sep. 2019 - Sep. 2021) 
```
fgcz-c-047:/srv/kenlab/celine
```
The project was divided into three parts. 

## LabRotation Sep. 2019 - Nov. 2019)
### Description
- Subgenome-specific population genetics pipeline of 350 low coverage finger millet accessions
- Pipeline: Read alignment, read classification, variant calling
- Application via SUSHI
	- Import dataset into SUSHI, and apply desired application
	- When job failed, download script to local disc and rerun.

### Directories
```
fgcz-c-047:/srv/kenlab/celine/Celine_lab_rotation_2019
```
- Home directory
```
fgcz-c-047:/srv/kenlab/celine/Celine_lab_rotation_2019/results/read_counts
```
- Number of read counts of subgenome A and subgenome B before and after EAGLE-RC
```
fgcz-c-047:/srv/kenlab/celine/Celine_lab_rotation_2019/scripts
```
- Script to compute vcf statistics on subgenome A and subgenome B
```
fgcz-c-047:/srv/kenlab/celine/Celine_lab_rotation_2019/final_report
```
- Summary of LabRotation --> Final report


## Master-thesis Mar 2020 - Sep. 2020 
### Description
- Continuing subgenome-specific population genetics pipeline
- Parallelized joint-genotyping, parallelized pr202-filtering, parlallelized imputation
- Subgenome-specific vcf statistics and population structure analysis
	- Tajima's D and nucleotide diversity analysis on 350 low cov accession
	- Principal component analysis on 350 low cov accession 
### Directories
```
fgcz-c-047:/srv/kenlab/celine/master_thesis/data 
```
- This directory contains information about the source location of the accessions, and a list of the paths of the input data (the reads).
```
fgcz-c-047:/srv/kenlab/celine/master_thesis/data/pca_results
```
- This directory contains all the results necessary to perform principal component analyis (.bed, .eigenval, .eigenvec etc). We performed this for imputed (beagle imputed) vcf files, subA-subB merged vcf files, filtered-by-pr202 files.
```
fgcz-c-047:/srv/kenlab/celine/master_thesis/data/vcf_files
```
- This directory contains all the vcf files 
	- imputed vcf files (data/beagle)
	- variants called by GATKHaplotypeCaller (data/gatk)
	- variants called by JointGenotype (data/joint_genotyping)
	- variants found in single copy genes (data/single_copy)
```
fgcz-c-047:/srv/kenlab/celine/master_thesis/data/vcf_stats
```
- This directory contains all the vcf stats performed between steps of the pipeline

```     
fgcz-c-047:/srv/kenlab/celine/master_thesis/scripts
```
- All scripts from each step after variant calling are contained in this directory
	- joint_genotyping_scripts: vcf files are split into their scaffolds for parallel processing
	- filter_PR202_scripts: SNPs which are found in reference are discarted from target variant vcf files
	- beagle_scripts: Contains scripts to perform variant imputation
	- runtime_scripts: Estimation of runtime of joint-genotyping with pararallelization
	- test_scripts: scripts for testing
	- pca_scripts: Scripts to perform principal component analysis (get necessary files --> plink1.pca.sh, annotate source location to eigenvectors --> replace_sample_group.rb, plot pca results --> plot_pca.r)

```
fgcz-c-047:/srv/kenlab/celine/master_thesis/runtime
```
- Runtime estimates for 1 sample

## Research Assistant Nov 2020 - Sep 2021
### Description   
- Continuing analysis on low coverage landrace finger millet accessions
- Comparison of same accessions sequenced at high and low coverage
- Population genetics analysis of high coverage data  
### Directories
```
fgcz-c-047:/srv/kenlab/celine/RA_finger_millet/data
```
- Contains all vcf files (imputed, landrace only, pr202-filtered, Ecor_GE12 only) 
- Text file containing the location info
- Excel files with data information  

```
fgcz-c-047:/srv/kenlab/celine/RA_finger_millet/results
```
- The results contain bamstats scripts 
- Results of high coverage data (bamstats_high)
- Population genetics statistics (nucleotide diversity, tajimasD)
- Analysis on shared SNPs between low and high coverage (out_high_low_sharedSNPs)
- Files used for PCA (out_plink) 
```
fgcz-c-047:/srv/kenlab/celine/RA_finger_millet/results/bamstats_high
```
- Contain scripts to compute BamStats of high coverage data on subA and subB (A_scripts, B_scripts)
- Compute classified read count before and after EAGLE-RC (parse_bamstats_genome_result.rb) 
- Results of the read counts

```
fgcz-c-047:/srv/kenlab/celine/RA_finger_millet/results/nucleotide_diversity 
```  
- Nucleotide diversity of landrace low coverage finger millet
- Nucleotide diversity high coverage domesticated finger millet
- Nucleotide diversity of high coverage wild finger millet 

```
fgcz-c-047:/srv/kenlab/celine/RA_finger_millet/results/tajimasD 
```
- TajimasD of landrace low coverage finger millet 
- TajimasD high coverage domesticated finger millet 
- TajimasD of high coverage wild finger millet

```
fgcz-c-047:/srv/kenlab/celine/RA_finger_millet/results/out_high_low_sharedSNPs
```
- Comparisons of accessions which were sequenced at high and low coverage
- Control step to see if population structure is the same between the two methods

```
fgcz-c-047:/srv/kenlab/celine/RA_finger_millet/results/out_plink
```
- Applying plink to different vcf files (high coverage, high_low overlapping samples, landrace, newly resequenced samples 
