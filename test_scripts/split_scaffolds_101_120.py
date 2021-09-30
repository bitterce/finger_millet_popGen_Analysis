#!/usr/bin/python3

import gzip
import os
import re
import glob

#script_dir = os.path.dirname(os.path.dirname(os.path.realpath('__file__')))
home_dir = os.getcwd()

vcf_dir = "../data/vcf_files"
A_vcf_dir = os.path.join(vcf_dir, "A_vcf_350")
B_vcf_dir = os.path.join(vcf_dir, "B_vcf_350")
A_out_dir = os.path.join(vcf_dir, "A_vcf_350")
B_out_dir = os.path.join(vcf_dir, "B_vcf_350")

scaffold_list = open(os.path.join(vcf_dir, "scaffold_list.txt"), "r")
scaffold_id = list(scaffold_list)
scaffold_id = [x.replace('\n', '') for x in scaffold_id]
scaffold_list.close()

os.chdir(A_vcf_dir)
files = [f for f in glob.glob("*.gz")]
files.sort(key=lambda f: int(re.sub('\D', '', f)))
files_101_120 = files[100:120]
files_101_120 = [e for e in files_101_120 if e not in ('101.g.vcf.gz', '102.g.vcf.gz', '103.g.vcf.gz', '104.g.vcf.gz', '105.g.vcf.gz', '106.g.vcf.gz')]
print(files_101_120)

os.chdir(home_dir)
 
for filename in files_101_120:
    print("Processed file is: ", filename)

    for idx in range(len(scaffold_id)):

        with gzip.open(os.path.join(A_vcf_dir, filename), "rb") as file_in:
            with gzip.open(os.path.join(A_out_dir, scaffold_id[idx], filename), "wb") as file_out:

                for line in file_in:
                    if bytes(scaffold_id[idx], encoding="ascii") in line or b'#' in line:
                        file_out.write(line)
             

                

#with gzip.open("1.g.vcf.gz", "rb") as f_in:
#    with gzip.open("1_sa0071.g.vcf.gz", "wb") as f_out: 
#        for line in f_in: 
#            if b'sa0071' in line or b'#' in line:
#                f_out.write(line)
   


    
