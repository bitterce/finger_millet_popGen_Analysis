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

# Extract 20 samples for task parallelization
os.chdir(A_vcf_dir)
files = [f for f in glob.glob("*.gz")]
files.sort(key=lambda f: int(re.sub('\D', '', f)))

os.chdir(home_dir)
#print(files)

## Go through all files, extract and save each scaffold seperately into a new vcf file 
for filename in files:
    with gzip.open(os.path.join(A_vcf_dir, filename), "rb") as file_in:
        with gzip.open(os.path.join(A_out_dir, "sa0027", filename), "wb") as file_out:

            for line in file_in:
                if b'sa0027' in line or b'#' in line:
                        file_out.write(line)
                if b'sa0028' in line and b'#' not in line:
                    break
    print("Processed file is: " , filename)   

                
