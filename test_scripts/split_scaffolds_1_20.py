#!/usr/bin/python3 

import gzip
import os
import re
import glob

#script_dir = os.path.dirname(os.path.dirname(os.path.realpath('__file__')))
# Initialize home directory (= script directory)
home_dir = os.getcwd()

# Intialize input and output folder
vcf_dir = "../data/vcf_files"
A_vcf_dir = os.path.join(vcf_dir, "A_vcf_350")
B_vcf_dir = os.path.join(vcf_dir, "B_vcf_350")
A_out_dir = os.path.join(vcf_dir, "A_vcf_350")
B_out_dir = os.path.join(vcf_dir, "B_vcf_350")

# Prepare scaffold IDs
scaffold_list = open(os.path.join(vcf_dir, "scaffold_list.txt"), "r")
scaffold_id = list(scaffold_list)
scaffold_id = [x.replace('\n', '') for x in scaffold_id]
scaffold_list.close()

# Extract 20 samples for task parallelization
os.chdir(A_vcf_dir)
files = [f for f in glob.glob("*.gz")]
files.sort(key=lambda f: int(re.sub('\D', '', f)))
files_1_20 = files[1:20]
files_1_20.remove('10.g.vcf.gz')
print(files_1_20)

os.chdir(home_dir)

# Go through all files, extract and save each scaffold seperately into a new vcf file 
for filename in files_1_20:
    print("Processed filename is: " , filename)   
    for idx in range(len(scaffold_id)):

        with gzip.open(os.path.join(A_vcf_dir, filename), "rb") as file_in:
            with gzip.open(os.path.join(A_out_dir, scaffold_id[idx], filename), "wb") as file_out:

                for line in file_in:
                    if bytes(scaffold_id[idx], encoding="ascii") in line or b'#' in line:
                        file_out.write(line)
               

                
