#!/usr/bin/python3 
# -*- coding: utf-8 -*-

import gzip
import os
import re
import glob
from argparse import ArgumentParser

def parse_and_split(sid, vcf_dir, out_dir):
    # Go through all files, extract and save each scaffold seperately into a new vcf file 
    filename = sid + ".g.vcf.gz"

    headers = []
    file_out = None
    with gzip.open(os.path.join(vcf_dir, filename), "rt") as file_in:
        for line in file_in:
            if re.match('^#', line):
                headers.append(line)
            else:
                sid = line.split()[0]
                out_scaff_dir = os.path.join(out_dir, sid)
                out_filename = os.path.join(out_scaff_dir, filename)
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
    usage = '''Usage: python {} start_id end_id --subgenome <A|B> [--help]
    required: ./data/[A|B]_vcf_350/*.g.vcf.gz are input data '''.format(__file__)
    argparser = ArgumentParser(usage=usage)
    argparser.add_argument('start_id', type=int, help='Start sample number')
    argparser.add_argument('end_id', type=int, help='End sample number')
    argparser.add_argument('-s', '--subgenome', type=str, required=True, help='A | B (required)')
    args = argparser.parse_args()

    # Intialize input and output folder
    vcf_dir_ = args.subgenome + '_vcf_350'
    vcf_dir = os.path.join("../data/vcf_files", vcf_dir_)
    #out_dir = os.path.join(vcf_dir, "out")
    out_dir = os.path.join(vcf_dir, "out_sa0027")

    for sid in range(args.start_id, args.end_id+1):
        parse_and_split(str(sid), vcf_dir, out_dir)

