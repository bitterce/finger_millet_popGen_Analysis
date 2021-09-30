#!/usr/bin/python3 

import gzip
import os
import re
import glob

#script_dir = os.path.dirname(os.path.dirname(os.path.realpath('__file__')))
# Initialize home directory (= script directory)
home_dir = os.getcwd()

# Intialize input and output folder
vcf_dir = "/srv/kenlab/celine/master_thesis/data/vcf_files"
A_vcf_dir = os.path.join(vcf_dir, "A_vcf_350")
B_vcf_dir = os.path.join(vcf_dir, "B_vcf_350")

# Extract 20 samples for task parallelization
filename = '326.g.vcf.gz'
print(filename)

with gzip.open(os.path.join(A_vcf_dir, filename), "rb") as file_in:
    with gzip.open(os.path.join(A_vcf_dir, "sa0007", filename), "wb") as file_out:

        for line in file_in:
            if b'sa0007' in line or b'#' in line:
                    file_out.write(line)
            if b'sa0008' in line and b'#' not in line:
                break

                
