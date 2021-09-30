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
#A_out_dir = os.path.join(vcf_dir, "A_vcf_350")
A_out_dir = os.path.join(vcf_dir, "failed_A_vcf_350")
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
idx_missing = [38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 78, 
        79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 113, 114, 115, 
        116, 117, 118, 119, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 147, 148, 149, 
        150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176,
        177, 178, 179, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 209, 210, 211, 212, 213, 214, 215,
        216, 217, 218, 219, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 250, 251, 252, 253, 254,
        255, 256, 257, 258, 259, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 292, 293, 294, 295, 296,
        297, 298, 299, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 322, 323, 324, 325, 326,
        327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 343, 344, 345, 346, 347, 348,
        349]
print(len(idx_missing))
#files_missing = [element for i, element in enumerate(files) if i in idx_missing] 
#print(files_missing)
#
#os.chdir(home_dir)
#
## Go through all files, extract and save each scaffold seperately into a new vcf file 
#for filename in files_missing:
#    with gzip.open(os.path.join(A_vcf_dir, filename), "rb") as file_in:
#        with gzip.open(os.path.join(A_out_dir, "sa0001", filename), "wb") as file_out:
#
#            for line in file_in:
#                if b'sa0001' in line or b'#' in line:
#                        file_out.write(line)
#                if b'sa0002' in line and b'#' not in line:
#                    break
#    print("Processed file is: " , filename)   

                
