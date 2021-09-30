#!/bin/bash

vcf_gz=$1
out_base=$2

if [ -z "$1" ] && [ -z "$2" ]; then
  echo "usage:"
  echo "   bash $0 vcf_gz out_base"
  exit
fi
module load Tools/PLINK/1.9beta6.5
plink --vcf $vcf_gz --out $out_base --make-bed --allow-extra-chr 0 --threads 8
plink --bfile $out_base --pca --out ${out_base}_pca

