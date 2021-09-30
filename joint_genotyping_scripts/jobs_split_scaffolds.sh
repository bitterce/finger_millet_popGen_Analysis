#!/bin/bash

python split_g_vcf_gz.py 51 75 --subgenome B & 
python split_g_vcf_gz.py 76 100 --subgenome B &
python split_g_vcf_gz.py 101 125 --subgenome B &
python split_g_vcf_gz.py 126 150 --subgenome B &
python split_g_vcf_gz.py 151 175 --subgenome B &
python split_g_vcf_gz.py 176 200 --subgenome B &
python split_g_vcf_gz.py 201 225 --subgenome B &
python split_g_vcf_gz.py 226 250 --subgenome B &
python split_g_vcf_gz.py 251 275 --subgenome B &
python split_g_vcf_gz.py 276 300 --subgenome B &
python split_g_vcf_gz.py 301 325 --subgenome B &
python split_g_vcf_gz.py 326 350 --subgenome B &


# Make one python script with command line arguments
# ./split_scaffolds.py 01 20 &
# ./split_scaffolds.py 21 40 &
