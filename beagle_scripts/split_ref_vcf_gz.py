#!/usr/bin/python3 
# -*- coding: utf-8 -*-

##############################################################################
## Split target vcf file into scaffolds
##############################################################################

import gzip
import os
import re
import glob
from argparse import ArgumentParser

def parse_and_split(ref, out_dir):
    # Split reference file into scaffolds
    headers = []
    file_out = None
    with gzip.open(ref, "rt") as file_in:
        for line in file_in:
            if re.match('^#', line):
                headers.append(line)
            else:
                sid = line.split()[0]
                out_scaff_dir = os.path.join(out_dir, sid)
                out_filename = os.path.join(out_scaff_dir, os.path.basename(ref))
                if not os.path.isdir(out_scaff_dir):
                    os.makedirs(out_scaff_dir)
                if not os.path.isfile(out_filename):
                    if file_out is not None:
                        file_out.close()
                    file_out = gzip.open(out_filename, "wt")
                    for header in headers:
                        file_out.write(header)
                file_out.write(line)
    file_out.close()


if __name__ == '__main__':

    # option parser
    usage = '''Usage: python {} --reference <BEAGLE_A_wo_Eind_PR202_snp_indel.vcf.gz|BEAGLE_B_wo_Eind_PR202_snp_indel.vcf.gz> [--help]
    required: ./data/vcf_files/beagle/references/*vcf.gz are input data '''.format(__file__)
    argparser = ArgumentParser(usage=usage)
    argparser.add_argument('-s', '--reference', type=str, required=True, help='ref A or ref B')
    args = argparser.parse_args()

    # Intialize input and output folder
    ref_dir = ("/srv/kenlab/celine/master_thesis/data/vcf_files/beagle/references") 
    ref = os.path.join(ref_dir, args.reference)
    out_dir = os.path.join(ref_dir, "out")

    parse_and_split(str(ref), out_dir)

