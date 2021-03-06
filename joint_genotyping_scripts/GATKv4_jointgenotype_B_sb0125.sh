#!/bin/bash

set -e
set -o pipefail
umask 0002

DATA_DIR=/srv/kenlab/celine/master_thesis/data/vcf_files/B_vcf_350/out
SCRATCH_DIR=$DATA_DIR/scratch_GATKv4_jointgenotype_$$
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Variants/GATK/4.1.2.0 Tools/Picard/2.18.0

gunzip -c $DATA_DIR/sb0125/1.g.vcf.gz > $SCRATCH_DIR/1.g.vcf
gunzip -c $DATA_DIR/sb0125/2.g.vcf.gz > $SCRATCH_DIR/2.g.vcf
gunzip -c $DATA_DIR/sb0125/3.g.vcf.gz > $SCRATCH_DIR/3.g.vcf
gunzip -c $DATA_DIR/sb0125/4.g.vcf.gz > $SCRATCH_DIR/4.g.vcf
gunzip -c $DATA_DIR/sb0125/5.g.vcf.gz > $SCRATCH_DIR/5.g.vcf
gunzip -c $DATA_DIR/sb0125/6.g.vcf.gz > $SCRATCH_DIR/6.g.vcf
gunzip -c $DATA_DIR/sb0125/7.g.vcf.gz > $SCRATCH_DIR/7.g.vcf
gunzip -c $DATA_DIR/sb0125/8.g.vcf.gz > $SCRATCH_DIR/8.g.vcf
gunzip -c $DATA_DIR/sb0125/9.g.vcf.gz > $SCRATCH_DIR/9.g.vcf
gunzip -c $DATA_DIR/sb0125/10.g.vcf.gz > $SCRATCH_DIR/10.g.vcf
gunzip -c $DATA_DIR/sb0125/11.g.vcf.gz > $SCRATCH_DIR/11.g.vcf
gunzip -c $DATA_DIR/sb0125/12.g.vcf.gz > $SCRATCH_DIR/12.g.vcf
gunzip -c $DATA_DIR/sb0125/13.g.vcf.gz > $SCRATCH_DIR/13.g.vcf
gunzip -c $DATA_DIR/sb0125/14.g.vcf.gz > $SCRATCH_DIR/14.g.vcf
gunzip -c $DATA_DIR/sb0125/15.g.vcf.gz > $SCRATCH_DIR/15.g.vcf
gunzip -c $DATA_DIR/sb0125/16.g.vcf.gz > $SCRATCH_DIR/16.g.vcf
gunzip -c $DATA_DIR/sb0125/17.g.vcf.gz > $SCRATCH_DIR/17.g.vcf
gunzip -c $DATA_DIR/sb0125/18.g.vcf.gz > $SCRATCH_DIR/18.g.vcf
gunzip -c $DATA_DIR/sb0125/19.g.vcf.gz > $SCRATCH_DIR/19.g.vcf
gunzip -c $DATA_DIR/sb0125/20.g.vcf.gz > $SCRATCH_DIR/20.g.vcf
gunzip -c $DATA_DIR/sb0125/21.g.vcf.gz > $SCRATCH_DIR/21.g.vcf
gunzip -c $DATA_DIR/sb0125/22.g.vcf.gz > $SCRATCH_DIR/22.g.vcf
gunzip -c $DATA_DIR/sb0125/23.g.vcf.gz > $SCRATCH_DIR/23.g.vcf
gunzip -c $DATA_DIR/sb0125/24.g.vcf.gz > $SCRATCH_DIR/24.g.vcf
gunzip -c $DATA_DIR/sb0125/25.g.vcf.gz > $SCRATCH_DIR/25.g.vcf
gunzip -c $DATA_DIR/sb0125/26.g.vcf.gz > $SCRATCH_DIR/26.g.vcf
gunzip -c $DATA_DIR/sb0125/27.g.vcf.gz > $SCRATCH_DIR/27.g.vcf
gunzip -c $DATA_DIR/sb0125/28.g.vcf.gz > $SCRATCH_DIR/28.g.vcf
gunzip -c $DATA_DIR/sb0125/29.g.vcf.gz > $SCRATCH_DIR/29.g.vcf
gunzip -c $DATA_DIR/sb0125/30.g.vcf.gz > $SCRATCH_DIR/30.g.vcf
gunzip -c $DATA_DIR/sb0125/31.g.vcf.gz > $SCRATCH_DIR/31.g.vcf
gunzip -c $DATA_DIR/sb0125/32.g.vcf.gz > $SCRATCH_DIR/32.g.vcf
gunzip -c $DATA_DIR/sb0125/33.g.vcf.gz > $SCRATCH_DIR/33.g.vcf
gunzip -c $DATA_DIR/sb0125/34.g.vcf.gz > $SCRATCH_DIR/34.g.vcf
gunzip -c $DATA_DIR/sb0125/35.g.vcf.gz > $SCRATCH_DIR/35.g.vcf
gunzip -c $DATA_DIR/sb0125/36.g.vcf.gz > $SCRATCH_DIR/36.g.vcf
gunzip -c $DATA_DIR/sb0125/37.g.vcf.gz > $SCRATCH_DIR/37.g.vcf
gunzip -c $DATA_DIR/sb0125/38.g.vcf.gz > $SCRATCH_DIR/38.g.vcf
gunzip -c $DATA_DIR/sb0125/39.g.vcf.gz > $SCRATCH_DIR/39.g.vcf
gunzip -c $DATA_DIR/sb0125/40.g.vcf.gz > $SCRATCH_DIR/40.g.vcf
gunzip -c $DATA_DIR/sb0125/41.g.vcf.gz > $SCRATCH_DIR/41.g.vcf
gunzip -c $DATA_DIR/sb0125/42.g.vcf.gz > $SCRATCH_DIR/42.g.vcf
gunzip -c $DATA_DIR/sb0125/43.g.vcf.gz > $SCRATCH_DIR/43.g.vcf
gunzip -c $DATA_DIR/sb0125/44.g.vcf.gz > $SCRATCH_DIR/44.g.vcf
gunzip -c $DATA_DIR/sb0125/45.g.vcf.gz > $SCRATCH_DIR/45.g.vcf
gunzip -c $DATA_DIR/sb0125/46.g.vcf.gz > $SCRATCH_DIR/46.g.vcf
gunzip -c $DATA_DIR/sb0125/47.g.vcf.gz > $SCRATCH_DIR/47.g.vcf
gunzip -c $DATA_DIR/sb0125/48.g.vcf.gz > $SCRATCH_DIR/48.g.vcf
gunzip -c $DATA_DIR/sb0125/49.g.vcf.gz > $SCRATCH_DIR/49.g.vcf
gunzip -c $DATA_DIR/sb0125/50.g.vcf.gz > $SCRATCH_DIR/50.g.vcf
gunzip -c $DATA_DIR/sb0125/51.g.vcf.gz > $SCRATCH_DIR/51.g.vcf
gunzip -c $DATA_DIR/sb0125/52.g.vcf.gz > $SCRATCH_DIR/52.g.vcf
gunzip -c $DATA_DIR/sb0125/53.g.vcf.gz > $SCRATCH_DIR/53.g.vcf
gunzip -c $DATA_DIR/sb0125/54.g.vcf.gz > $SCRATCH_DIR/54.g.vcf
gunzip -c $DATA_DIR/sb0125/55.g.vcf.gz > $SCRATCH_DIR/55.g.vcf
gunzip -c $DATA_DIR/sb0125/56.g.vcf.gz > $SCRATCH_DIR/56.g.vcf
gunzip -c $DATA_DIR/sb0125/57.g.vcf.gz > $SCRATCH_DIR/57.g.vcf
gunzip -c $DATA_DIR/sb0125/58.g.vcf.gz > $SCRATCH_DIR/58.g.vcf
gunzip -c $DATA_DIR/sb0125/59.g.vcf.gz > $SCRATCH_DIR/59.g.vcf
gunzip -c $DATA_DIR/sb0125/60.g.vcf.gz > $SCRATCH_DIR/60.g.vcf
gunzip -c $DATA_DIR/sb0125/61.g.vcf.gz > $SCRATCH_DIR/61.g.vcf
gunzip -c $DATA_DIR/sb0125/62.g.vcf.gz > $SCRATCH_DIR/62.g.vcf
gunzip -c $DATA_DIR/sb0125/63.g.vcf.gz > $SCRATCH_DIR/63.g.vcf
gunzip -c $DATA_DIR/sb0125/64.g.vcf.gz > $SCRATCH_DIR/64.g.vcf
gunzip -c $DATA_DIR/sb0125/65.g.vcf.gz > $SCRATCH_DIR/65.g.vcf
gunzip -c $DATA_DIR/sb0125/66.g.vcf.gz > $SCRATCH_DIR/66.g.vcf
gunzip -c $DATA_DIR/sb0125/67.g.vcf.gz > $SCRATCH_DIR/67.g.vcf
gunzip -c $DATA_DIR/sb0125/68.g.vcf.gz > $SCRATCH_DIR/68.g.vcf
gunzip -c $DATA_DIR/sb0125/69.g.vcf.gz > $SCRATCH_DIR/69.g.vcf
gunzip -c $DATA_DIR/sb0125/70.g.vcf.gz > $SCRATCH_DIR/70.g.vcf
gunzip -c $DATA_DIR/sb0125/71.g.vcf.gz > $SCRATCH_DIR/71.g.vcf
gunzip -c $DATA_DIR/sb0125/72.g.vcf.gz > $SCRATCH_DIR/72.g.vcf
gunzip -c $DATA_DIR/sb0125/73.g.vcf.gz > $SCRATCH_DIR/73.g.vcf
gunzip -c $DATA_DIR/sb0125/74.g.vcf.gz > $SCRATCH_DIR/74.g.vcf
gunzip -c $DATA_DIR/sb0125/75.g.vcf.gz > $SCRATCH_DIR/75.g.vcf
gunzip -c $DATA_DIR/sb0125/76.g.vcf.gz > $SCRATCH_DIR/76.g.vcf
gunzip -c $DATA_DIR/sb0125/77.g.vcf.gz > $SCRATCH_DIR/77.g.vcf
gunzip -c $DATA_DIR/sb0125/78.g.vcf.gz > $SCRATCH_DIR/78.g.vcf
gunzip -c $DATA_DIR/sb0125/79.g.vcf.gz > $SCRATCH_DIR/79.g.vcf
gunzip -c $DATA_DIR/sb0125/80.g.vcf.gz > $SCRATCH_DIR/80.g.vcf
gunzip -c $DATA_DIR/sb0125/81.g.vcf.gz > $SCRATCH_DIR/81.g.vcf
gunzip -c $DATA_DIR/sb0125/82.g.vcf.gz > $SCRATCH_DIR/82.g.vcf
gunzip -c $DATA_DIR/sb0125/83.g.vcf.gz > $SCRATCH_DIR/83.g.vcf
gunzip -c $DATA_DIR/sb0125/84.g.vcf.gz > $SCRATCH_DIR/84.g.vcf
gunzip -c $DATA_DIR/sb0125/85.g.vcf.gz > $SCRATCH_DIR/85.g.vcf
gunzip -c $DATA_DIR/sb0125/86.g.vcf.gz > $SCRATCH_DIR/86.g.vcf
gunzip -c $DATA_DIR/sb0125/87.g.vcf.gz > $SCRATCH_DIR/87.g.vcf
gunzip -c $DATA_DIR/sb0125/88.g.vcf.gz > $SCRATCH_DIR/88.g.vcf
gunzip -c $DATA_DIR/sb0125/89.g.vcf.gz > $SCRATCH_DIR/89.g.vcf
gunzip -c $DATA_DIR/sb0125/90.g.vcf.gz > $SCRATCH_DIR/90.g.vcf
gunzip -c $DATA_DIR/sb0125/91.g.vcf.gz > $SCRATCH_DIR/91.g.vcf
gunzip -c $DATA_DIR/sb0125/92.g.vcf.gz > $SCRATCH_DIR/92.g.vcf
gunzip -c $DATA_DIR/sb0125/93.g.vcf.gz > $SCRATCH_DIR/93.g.vcf
gunzip -c $DATA_DIR/sb0125/94.g.vcf.gz > $SCRATCH_DIR/94.g.vcf
gunzip -c $DATA_DIR/sb0125/95.g.vcf.gz > $SCRATCH_DIR/95.g.vcf
gunzip -c $DATA_DIR/sb0125/96.g.vcf.gz > $SCRATCH_DIR/96.g.vcf
gunzip -c $DATA_DIR/sb0125/97.g.vcf.gz > $SCRATCH_DIR/97.g.vcf
gunzip -c $DATA_DIR/sb0125/98.g.vcf.gz > $SCRATCH_DIR/98.g.vcf
gunzip -c $DATA_DIR/sb0125/99.g.vcf.gz > $SCRATCH_DIR/99.g.vcf
gunzip -c $DATA_DIR/sb0125/100.g.vcf.gz > $SCRATCH_DIR/100.g.vcf
gunzip -c $DATA_DIR/sb0125/101.g.vcf.gz > $SCRATCH_DIR/101.g.vcf
gunzip -c $DATA_DIR/sb0125/102.g.vcf.gz > $SCRATCH_DIR/102.g.vcf
gunzip -c $DATA_DIR/sb0125/103.g.vcf.gz > $SCRATCH_DIR/103.g.vcf
gunzip -c $DATA_DIR/sb0125/104.g.vcf.gz > $SCRATCH_DIR/104.g.vcf
gunzip -c $DATA_DIR/sb0125/105.g.vcf.gz > $SCRATCH_DIR/105.g.vcf
gunzip -c $DATA_DIR/sb0125/106.g.vcf.gz > $SCRATCH_DIR/106.g.vcf
gunzip -c $DATA_DIR/sb0125/107.g.vcf.gz > $SCRATCH_DIR/107.g.vcf
gunzip -c $DATA_DIR/sb0125/108.g.vcf.gz > $SCRATCH_DIR/108.g.vcf
gunzip -c $DATA_DIR/sb0125/109.g.vcf.gz > $SCRATCH_DIR/109.g.vcf
gunzip -c $DATA_DIR/sb0125/110.g.vcf.gz > $SCRATCH_DIR/110.g.vcf
gunzip -c $DATA_DIR/sb0125/111.g.vcf.gz > $SCRATCH_DIR/111.g.vcf
gunzip -c $DATA_DIR/sb0125/112.g.vcf.gz > $SCRATCH_DIR/112.g.vcf
gunzip -c $DATA_DIR/sb0125/113.g.vcf.gz > $SCRATCH_DIR/113.g.vcf
gunzip -c $DATA_DIR/sb0125/114.g.vcf.gz > $SCRATCH_DIR/114.g.vcf
gunzip -c $DATA_DIR/sb0125/115.g.vcf.gz > $SCRATCH_DIR/115.g.vcf
gunzip -c $DATA_DIR/sb0125/116.g.vcf.gz > $SCRATCH_DIR/116.g.vcf
gunzip -c $DATA_DIR/sb0125/117.g.vcf.gz > $SCRATCH_DIR/117.g.vcf
gunzip -c $DATA_DIR/sb0125/118.g.vcf.gz > $SCRATCH_DIR/118.g.vcf
gunzip -c $DATA_DIR/sb0125/119.g.vcf.gz > $SCRATCH_DIR/119.g.vcf
gunzip -c $DATA_DIR/sb0125/120.g.vcf.gz > $SCRATCH_DIR/120.g.vcf
gunzip -c $DATA_DIR/sb0125/121.g.vcf.gz > $SCRATCH_DIR/121.g.vcf
gunzip -c $DATA_DIR/sb0125/122.g.vcf.gz > $SCRATCH_DIR/122.g.vcf
gunzip -c $DATA_DIR/sb0125/123.g.vcf.gz > $SCRATCH_DIR/123.g.vcf
gunzip -c $DATA_DIR/sb0125/124.g.vcf.gz > $SCRATCH_DIR/124.g.vcf
gunzip -c $DATA_DIR/sb0125/125.g.vcf.gz > $SCRATCH_DIR/125.g.vcf
gunzip -c $DATA_DIR/sb0125/126.g.vcf.gz > $SCRATCH_DIR/126.g.vcf
gunzip -c $DATA_DIR/sb0125/127.g.vcf.gz > $SCRATCH_DIR/127.g.vcf
gunzip -c $DATA_DIR/sb0125/128.g.vcf.gz > $SCRATCH_DIR/128.g.vcf
gunzip -c $DATA_DIR/sb0125/129.g.vcf.gz > $SCRATCH_DIR/129.g.vcf
gunzip -c $DATA_DIR/sb0125/130.g.vcf.gz > $SCRATCH_DIR/130.g.vcf
gunzip -c $DATA_DIR/sb0125/131.g.vcf.gz > $SCRATCH_DIR/131.g.vcf
gunzip -c $DATA_DIR/sb0125/132.g.vcf.gz > $SCRATCH_DIR/132.g.vcf
gunzip -c $DATA_DIR/sb0125/133.g.vcf.gz > $SCRATCH_DIR/133.g.vcf
gunzip -c $DATA_DIR/sb0125/134.g.vcf.gz > $SCRATCH_DIR/134.g.vcf
gunzip -c $DATA_DIR/sb0125/135.g.vcf.gz > $SCRATCH_DIR/135.g.vcf
gunzip -c $DATA_DIR/sb0125/136.g.vcf.gz > $SCRATCH_DIR/136.g.vcf
gunzip -c $DATA_DIR/sb0125/137.g.vcf.gz > $SCRATCH_DIR/137.g.vcf
gunzip -c $DATA_DIR/sb0125/138.g.vcf.gz > $SCRATCH_DIR/138.g.vcf
gunzip -c $DATA_DIR/sb0125/139.g.vcf.gz > $SCRATCH_DIR/139.g.vcf
gunzip -c $DATA_DIR/sb0125/140.g.vcf.gz > $SCRATCH_DIR/140.g.vcf
gunzip -c $DATA_DIR/sb0125/141.g.vcf.gz > $SCRATCH_DIR/141.g.vcf
gunzip -c $DATA_DIR/sb0125/142.g.vcf.gz > $SCRATCH_DIR/142.g.vcf
gunzip -c $DATA_DIR/sb0125/143.g.vcf.gz > $SCRATCH_DIR/143.g.vcf
gunzip -c $DATA_DIR/sb0125/144.g.vcf.gz > $SCRATCH_DIR/144.g.vcf
gunzip -c $DATA_DIR/sb0125/145.g.vcf.gz > $SCRATCH_DIR/145.g.vcf
gunzip -c $DATA_DIR/sb0125/146.g.vcf.gz > $SCRATCH_DIR/146.g.vcf
gunzip -c $DATA_DIR/sb0125/147.g.vcf.gz > $SCRATCH_DIR/147.g.vcf
gunzip -c $DATA_DIR/sb0125/148.g.vcf.gz > $SCRATCH_DIR/148.g.vcf
gunzip -c $DATA_DIR/sb0125/149.g.vcf.gz > $SCRATCH_DIR/149.g.vcf
gunzip -c $DATA_DIR/sb0125/150.g.vcf.gz > $SCRATCH_DIR/150.g.vcf
gunzip -c $DATA_DIR/sb0125/151.g.vcf.gz > $SCRATCH_DIR/151.g.vcf
gunzip -c $DATA_DIR/sb0125/152.g.vcf.gz > $SCRATCH_DIR/152.g.vcf
gunzip -c $DATA_DIR/sb0125/153.g.vcf.gz > $SCRATCH_DIR/153.g.vcf
gunzip -c $DATA_DIR/sb0125/154.g.vcf.gz > $SCRATCH_DIR/154.g.vcf
gunzip -c $DATA_DIR/sb0125/155.g.vcf.gz > $SCRATCH_DIR/155.g.vcf
gunzip -c $DATA_DIR/sb0125/156.g.vcf.gz > $SCRATCH_DIR/156.g.vcf
gunzip -c $DATA_DIR/sb0125/157.g.vcf.gz > $SCRATCH_DIR/157.g.vcf
gunzip -c $DATA_DIR/sb0125/158.g.vcf.gz > $SCRATCH_DIR/158.g.vcf
gunzip -c $DATA_DIR/sb0125/159.g.vcf.gz > $SCRATCH_DIR/159.g.vcf
gunzip -c $DATA_DIR/sb0125/160.g.vcf.gz > $SCRATCH_DIR/160.g.vcf
gunzip -c $DATA_DIR/sb0125/161.g.vcf.gz > $SCRATCH_DIR/161.g.vcf
gunzip -c $DATA_DIR/sb0125/162.g.vcf.gz > $SCRATCH_DIR/162.g.vcf
gunzip -c $DATA_DIR/sb0125/163.g.vcf.gz > $SCRATCH_DIR/163.g.vcf
gunzip -c $DATA_DIR/sb0125/164.g.vcf.gz > $SCRATCH_DIR/164.g.vcf
gunzip -c $DATA_DIR/sb0125/165.g.vcf.gz > $SCRATCH_DIR/165.g.vcf
gunzip -c $DATA_DIR/sb0125/166.g.vcf.gz > $SCRATCH_DIR/166.g.vcf
gunzip -c $DATA_DIR/sb0125/167.g.vcf.gz > $SCRATCH_DIR/167.g.vcf
gunzip -c $DATA_DIR/sb0125/168.g.vcf.gz > $SCRATCH_DIR/168.g.vcf
gunzip -c $DATA_DIR/sb0125/169.g.vcf.gz > $SCRATCH_DIR/169.g.vcf
gunzip -c $DATA_DIR/sb0125/170.g.vcf.gz > $SCRATCH_DIR/170.g.vcf
gunzip -c $DATA_DIR/sb0125/171.g.vcf.gz > $SCRATCH_DIR/171.g.vcf
gunzip -c $DATA_DIR/sb0125/172.g.vcf.gz > $SCRATCH_DIR/172.g.vcf
gunzip -c $DATA_DIR/sb0125/173.g.vcf.gz > $SCRATCH_DIR/173.g.vcf
gunzip -c $DATA_DIR/sb0125/174.g.vcf.gz > $SCRATCH_DIR/174.g.vcf
gunzip -c $DATA_DIR/sb0125/175.g.vcf.gz > $SCRATCH_DIR/175.g.vcf
gunzip -c $DATA_DIR/sb0125/176.g.vcf.gz > $SCRATCH_DIR/176.g.vcf
gunzip -c $DATA_DIR/sb0125/177.g.vcf.gz > $SCRATCH_DIR/177.g.vcf
gunzip -c $DATA_DIR/sb0125/178.g.vcf.gz > $SCRATCH_DIR/178.g.vcf
gunzip -c $DATA_DIR/sb0125/179.g.vcf.gz > $SCRATCH_DIR/179.g.vcf
gunzip -c $DATA_DIR/sb0125/180.g.vcf.gz > $SCRATCH_DIR/180.g.vcf
gunzip -c $DATA_DIR/sb0125/181.g.vcf.gz > $SCRATCH_DIR/181.g.vcf
gunzip -c $DATA_DIR/sb0125/182.g.vcf.gz > $SCRATCH_DIR/182.g.vcf
gunzip -c $DATA_DIR/sb0125/183.g.vcf.gz > $SCRATCH_DIR/183.g.vcf
gunzip -c $DATA_DIR/sb0125/184.g.vcf.gz > $SCRATCH_DIR/184.g.vcf
gunzip -c $DATA_DIR/sb0125/185.g.vcf.gz > $SCRATCH_DIR/185.g.vcf
gunzip -c $DATA_DIR/sb0125/186.g.vcf.gz > $SCRATCH_DIR/186.g.vcf
gunzip -c $DATA_DIR/sb0125/187.g.vcf.gz > $SCRATCH_DIR/187.g.vcf
gunzip -c $DATA_DIR/sb0125/188.g.vcf.gz > $SCRATCH_DIR/188.g.vcf
gunzip -c $DATA_DIR/sb0125/189.g.vcf.gz > $SCRATCH_DIR/189.g.vcf
gunzip -c $DATA_DIR/sb0125/190.g.vcf.gz > $SCRATCH_DIR/190.g.vcf
gunzip -c $DATA_DIR/sb0125/191.g.vcf.gz > $SCRATCH_DIR/191.g.vcf
gunzip -c $DATA_DIR/sb0125/192.g.vcf.gz > $SCRATCH_DIR/192.g.vcf
gunzip -c $DATA_DIR/sb0125/193.g.vcf.gz > $SCRATCH_DIR/193.g.vcf
gunzip -c $DATA_DIR/sb0125/194.g.vcf.gz > $SCRATCH_DIR/194.g.vcf
gunzip -c $DATA_DIR/sb0125/195.g.vcf.gz > $SCRATCH_DIR/195.g.vcf
gunzip -c $DATA_DIR/sb0125/196.g.vcf.gz > $SCRATCH_DIR/196.g.vcf
gunzip -c $DATA_DIR/sb0125/197.g.vcf.gz > $SCRATCH_DIR/197.g.vcf
gunzip -c $DATA_DIR/sb0125/198.g.vcf.gz > $SCRATCH_DIR/198.g.vcf
gunzip -c $DATA_DIR/sb0125/199.g.vcf.gz > $SCRATCH_DIR/199.g.vcf
gunzip -c $DATA_DIR/sb0125/200.g.vcf.gz > $SCRATCH_DIR/200.g.vcf
gunzip -c $DATA_DIR/sb0125/201.g.vcf.gz > $SCRATCH_DIR/201.g.vcf
gunzip -c $DATA_DIR/sb0125/202.g.vcf.gz > $SCRATCH_DIR/202.g.vcf
gunzip -c $DATA_DIR/sb0125/203.g.vcf.gz > $SCRATCH_DIR/203.g.vcf
gunzip -c $DATA_DIR/sb0125/204.g.vcf.gz > $SCRATCH_DIR/204.g.vcf
gunzip -c $DATA_DIR/sb0125/205.g.vcf.gz > $SCRATCH_DIR/205.g.vcf
gunzip -c $DATA_DIR/sb0125/206.g.vcf.gz > $SCRATCH_DIR/206.g.vcf
gunzip -c $DATA_DIR/sb0125/207.g.vcf.gz > $SCRATCH_DIR/207.g.vcf
gunzip -c $DATA_DIR/sb0125/208.g.vcf.gz > $SCRATCH_DIR/208.g.vcf
gunzip -c $DATA_DIR/sb0125/209.g.vcf.gz > $SCRATCH_DIR/209.g.vcf
gunzip -c $DATA_DIR/sb0125/210.g.vcf.gz > $SCRATCH_DIR/210.g.vcf
gunzip -c $DATA_DIR/sb0125/211.g.vcf.gz > $SCRATCH_DIR/211.g.vcf
gunzip -c $DATA_DIR/sb0125/212.g.vcf.gz > $SCRATCH_DIR/212.g.vcf
gunzip -c $DATA_DIR/sb0125/213.g.vcf.gz > $SCRATCH_DIR/213.g.vcf
gunzip -c $DATA_DIR/sb0125/214.g.vcf.gz > $SCRATCH_DIR/214.g.vcf
gunzip -c $DATA_DIR/sb0125/215.g.vcf.gz > $SCRATCH_DIR/215.g.vcf
gunzip -c $DATA_DIR/sb0125/216.g.vcf.gz > $SCRATCH_DIR/216.g.vcf
gunzip -c $DATA_DIR/sb0125/217.g.vcf.gz > $SCRATCH_DIR/217.g.vcf
gunzip -c $DATA_DIR/sb0125/218.g.vcf.gz > $SCRATCH_DIR/218.g.vcf
gunzip -c $DATA_DIR/sb0125/219.g.vcf.gz > $SCRATCH_DIR/219.g.vcf
gunzip -c $DATA_DIR/sb0125/220.g.vcf.gz > $SCRATCH_DIR/220.g.vcf
gunzip -c $DATA_DIR/sb0125/221.g.vcf.gz > $SCRATCH_DIR/221.g.vcf
gunzip -c $DATA_DIR/sb0125/222.g.vcf.gz > $SCRATCH_DIR/222.g.vcf
gunzip -c $DATA_DIR/sb0125/223.g.vcf.gz > $SCRATCH_DIR/223.g.vcf
gunzip -c $DATA_DIR/sb0125/224.g.vcf.gz > $SCRATCH_DIR/224.g.vcf
gunzip -c $DATA_DIR/sb0125/225.g.vcf.gz > $SCRATCH_DIR/225.g.vcf
gunzip -c $DATA_DIR/sb0125/226.g.vcf.gz > $SCRATCH_DIR/226.g.vcf
gunzip -c $DATA_DIR/sb0125/227.g.vcf.gz > $SCRATCH_DIR/227.g.vcf
gunzip -c $DATA_DIR/sb0125/228.g.vcf.gz > $SCRATCH_DIR/228.g.vcf
gunzip -c $DATA_DIR/sb0125/229.g.vcf.gz > $SCRATCH_DIR/229.g.vcf
gunzip -c $DATA_DIR/sb0125/230.g.vcf.gz > $SCRATCH_DIR/230.g.vcf
gunzip -c $DATA_DIR/sb0125/231.g.vcf.gz > $SCRATCH_DIR/231.g.vcf
gunzip -c $DATA_DIR/sb0125/232.g.vcf.gz > $SCRATCH_DIR/232.g.vcf
gunzip -c $DATA_DIR/sb0125/233.g.vcf.gz > $SCRATCH_DIR/233.g.vcf
gunzip -c $DATA_DIR/sb0125/234.g.vcf.gz > $SCRATCH_DIR/234.g.vcf
gunzip -c $DATA_DIR/sb0125/235.g.vcf.gz > $SCRATCH_DIR/235.g.vcf
gunzip -c $DATA_DIR/sb0125/236.g.vcf.gz > $SCRATCH_DIR/236.g.vcf
gunzip -c $DATA_DIR/sb0125/237.g.vcf.gz > $SCRATCH_DIR/237.g.vcf
gunzip -c $DATA_DIR/sb0125/238.g.vcf.gz > $SCRATCH_DIR/238.g.vcf
gunzip -c $DATA_DIR/sb0125/239.g.vcf.gz > $SCRATCH_DIR/239.g.vcf
gunzip -c $DATA_DIR/sb0125/240.g.vcf.gz > $SCRATCH_DIR/240.g.vcf
gunzip -c $DATA_DIR/sb0125/241.g.vcf.gz > $SCRATCH_DIR/241.g.vcf
gunzip -c $DATA_DIR/sb0125/242.g.vcf.gz > $SCRATCH_DIR/242.g.vcf
gunzip -c $DATA_DIR/sb0125/243.g.vcf.gz > $SCRATCH_DIR/243.g.vcf
gunzip -c $DATA_DIR/sb0125/244.g.vcf.gz > $SCRATCH_DIR/244.g.vcf
gunzip -c $DATA_DIR/sb0125/245.g.vcf.gz > $SCRATCH_DIR/245.g.vcf
gunzip -c $DATA_DIR/sb0125/246.g.vcf.gz > $SCRATCH_DIR/246.g.vcf
gunzip -c $DATA_DIR/sb0125/247.g.vcf.gz > $SCRATCH_DIR/247.g.vcf
gunzip -c $DATA_DIR/sb0125/248.g.vcf.gz > $SCRATCH_DIR/248.g.vcf
gunzip -c $DATA_DIR/sb0125/249.g.vcf.gz > $SCRATCH_DIR/249.g.vcf
gunzip -c $DATA_DIR/sb0125/250.g.vcf.gz > $SCRATCH_DIR/250.g.vcf
gunzip -c $DATA_DIR/sb0125/251.g.vcf.gz > $SCRATCH_DIR/251.g.vcf
gunzip -c $DATA_DIR/sb0125/252.g.vcf.gz > $SCRATCH_DIR/252.g.vcf
gunzip -c $DATA_DIR/sb0125/253.g.vcf.gz > $SCRATCH_DIR/253.g.vcf
gunzip -c $DATA_DIR/sb0125/254.g.vcf.gz > $SCRATCH_DIR/254.g.vcf
gunzip -c $DATA_DIR/sb0125/255.g.vcf.gz > $SCRATCH_DIR/255.g.vcf
gunzip -c $DATA_DIR/sb0125/256.g.vcf.gz > $SCRATCH_DIR/256.g.vcf
gunzip -c $DATA_DIR/sb0125/257.g.vcf.gz > $SCRATCH_DIR/257.g.vcf
gunzip -c $DATA_DIR/sb0125/258.g.vcf.gz > $SCRATCH_DIR/258.g.vcf
gunzip -c $DATA_DIR/sb0125/259.g.vcf.gz > $SCRATCH_DIR/259.g.vcf
gunzip -c $DATA_DIR/sb0125/260.g.vcf.gz > $SCRATCH_DIR/260.g.vcf
gunzip -c $DATA_DIR/sb0125/261.g.vcf.gz > $SCRATCH_DIR/261.g.vcf
gunzip -c $DATA_DIR/sb0125/262.g.vcf.gz > $SCRATCH_DIR/262.g.vcf
gunzip -c $DATA_DIR/sb0125/263.g.vcf.gz > $SCRATCH_DIR/263.g.vcf
gunzip -c $DATA_DIR/sb0125/264.g.vcf.gz > $SCRATCH_DIR/264.g.vcf
gunzip -c $DATA_DIR/sb0125/265.g.vcf.gz > $SCRATCH_DIR/265.g.vcf
gunzip -c $DATA_DIR/sb0125/266.g.vcf.gz > $SCRATCH_DIR/266.g.vcf
gunzip -c $DATA_DIR/sb0125/267.g.vcf.gz > $SCRATCH_DIR/267.g.vcf
gunzip -c $DATA_DIR/sb0125/268.g.vcf.gz > $SCRATCH_DIR/268.g.vcf
gunzip -c $DATA_DIR/sb0125/269.g.vcf.gz > $SCRATCH_DIR/269.g.vcf
gunzip -c $DATA_DIR/sb0125/270.g.vcf.gz > $SCRATCH_DIR/270.g.vcf
gunzip -c $DATA_DIR/sb0125/271.g.vcf.gz > $SCRATCH_DIR/271.g.vcf
gunzip -c $DATA_DIR/sb0125/272.g.vcf.gz > $SCRATCH_DIR/272.g.vcf
gunzip -c $DATA_DIR/sb0125/273.g.vcf.gz > $SCRATCH_DIR/273.g.vcf
gunzip -c $DATA_DIR/sb0125/274.g.vcf.gz > $SCRATCH_DIR/274.g.vcf
gunzip -c $DATA_DIR/sb0125/275.g.vcf.gz > $SCRATCH_DIR/275.g.vcf
gunzip -c $DATA_DIR/sb0125/276.g.vcf.gz > $SCRATCH_DIR/276.g.vcf
gunzip -c $DATA_DIR/sb0125/277.g.vcf.gz > $SCRATCH_DIR/277.g.vcf
gunzip -c $DATA_DIR/sb0125/278.g.vcf.gz > $SCRATCH_DIR/278.g.vcf
gunzip -c $DATA_DIR/sb0125/279.g.vcf.gz > $SCRATCH_DIR/279.g.vcf
gunzip -c $DATA_DIR/sb0125/280.g.vcf.gz > $SCRATCH_DIR/280.g.vcf
gunzip -c $DATA_DIR/sb0125/281.g.vcf.gz > $SCRATCH_DIR/281.g.vcf
gunzip -c $DATA_DIR/sb0125/282.g.vcf.gz > $SCRATCH_DIR/282.g.vcf
gunzip -c $DATA_DIR/sb0125/283.g.vcf.gz > $SCRATCH_DIR/283.g.vcf
gunzip -c $DATA_DIR/sb0125/284.g.vcf.gz > $SCRATCH_DIR/284.g.vcf
gunzip -c $DATA_DIR/sb0125/285.g.vcf.gz > $SCRATCH_DIR/285.g.vcf
gunzip -c $DATA_DIR/sb0125/286.g.vcf.gz > $SCRATCH_DIR/286.g.vcf
gunzip -c $DATA_DIR/sb0125/287.g.vcf.gz > $SCRATCH_DIR/287.g.vcf
gunzip -c $DATA_DIR/sb0125/288.g.vcf.gz > $SCRATCH_DIR/288.g.vcf
gunzip -c $DATA_DIR/sb0125/289.g.vcf.gz > $SCRATCH_DIR/289.g.vcf
gunzip -c $DATA_DIR/sb0125/290.g.vcf.gz > $SCRATCH_DIR/290.g.vcf
gunzip -c $DATA_DIR/sb0125/291.g.vcf.gz > $SCRATCH_DIR/291.g.vcf
gunzip -c $DATA_DIR/sb0125/292.g.vcf.gz > $SCRATCH_DIR/292.g.vcf
gunzip -c $DATA_DIR/sb0125/293.g.vcf.gz > $SCRATCH_DIR/293.g.vcf
gunzip -c $DATA_DIR/sb0125/294.g.vcf.gz > $SCRATCH_DIR/294.g.vcf
gunzip -c $DATA_DIR/sb0125/295.g.vcf.gz > $SCRATCH_DIR/295.g.vcf
gunzip -c $DATA_DIR/sb0125/296.g.vcf.gz > $SCRATCH_DIR/296.g.vcf
gunzip -c $DATA_DIR/sb0125/297.g.vcf.gz > $SCRATCH_DIR/297.g.vcf
gunzip -c $DATA_DIR/sb0125/298.g.vcf.gz > $SCRATCH_DIR/298.g.vcf
gunzip -c $DATA_DIR/sb0125/299.g.vcf.gz > $SCRATCH_DIR/299.g.vcf
gunzip -c $DATA_DIR/sb0125/300.g.vcf.gz > $SCRATCH_DIR/300.g.vcf
gunzip -c $DATA_DIR/sb0125/301.g.vcf.gz > $SCRATCH_DIR/301.g.vcf
gunzip -c $DATA_DIR/sb0125/302.g.vcf.gz > $SCRATCH_DIR/302.g.vcf
gunzip -c $DATA_DIR/sb0125/303.g.vcf.gz > $SCRATCH_DIR/303.g.vcf
gunzip -c $DATA_DIR/sb0125/304.g.vcf.gz > $SCRATCH_DIR/304.g.vcf
gunzip -c $DATA_DIR/sb0125/305.g.vcf.gz > $SCRATCH_DIR/305.g.vcf
gunzip -c $DATA_DIR/sb0125/306.g.vcf.gz > $SCRATCH_DIR/306.g.vcf
gunzip -c $DATA_DIR/sb0125/307.g.vcf.gz > $SCRATCH_DIR/307.g.vcf
gunzip -c $DATA_DIR/sb0125/308.g.vcf.gz > $SCRATCH_DIR/308.g.vcf
gunzip -c $DATA_DIR/sb0125/309.g.vcf.gz > $SCRATCH_DIR/309.g.vcf
gunzip -c $DATA_DIR/sb0125/310.g.vcf.gz > $SCRATCH_DIR/310.g.vcf
gunzip -c $DATA_DIR/sb0125/311.g.vcf.gz > $SCRATCH_DIR/311.g.vcf
gunzip -c $DATA_DIR/sb0125/312.g.vcf.gz > $SCRATCH_DIR/312.g.vcf
gunzip -c $DATA_DIR/sb0125/313.g.vcf.gz > $SCRATCH_DIR/313.g.vcf
gunzip -c $DATA_DIR/sb0125/314.g.vcf.gz > $SCRATCH_DIR/314.g.vcf
gunzip -c $DATA_DIR/sb0125/315.g.vcf.gz > $SCRATCH_DIR/315.g.vcf
gunzip -c $DATA_DIR/sb0125/316.g.vcf.gz > $SCRATCH_DIR/316.g.vcf
gunzip -c $DATA_DIR/sb0125/317.g.vcf.gz > $SCRATCH_DIR/317.g.vcf
gunzip -c $DATA_DIR/sb0125/318.g.vcf.gz > $SCRATCH_DIR/318.g.vcf
gunzip -c $DATA_DIR/sb0125/319.g.vcf.gz > $SCRATCH_DIR/319.g.vcf
gunzip -c $DATA_DIR/sb0125/320.g.vcf.gz > $SCRATCH_DIR/320.g.vcf
gunzip -c $DATA_DIR/sb0125/321.g.vcf.gz > $SCRATCH_DIR/321.g.vcf
gunzip -c $DATA_DIR/sb0125/322.g.vcf.gz > $SCRATCH_DIR/322.g.vcf
gunzip -c $DATA_DIR/sb0125/323.g.vcf.gz > $SCRATCH_DIR/323.g.vcf
gunzip -c $DATA_DIR/sb0125/324.g.vcf.gz > $SCRATCH_DIR/324.g.vcf
gunzip -c $DATA_DIR/sb0125/325.g.vcf.gz > $SCRATCH_DIR/325.g.vcf
gunzip -c $DATA_DIR/sb0125/326.g.vcf.gz > $SCRATCH_DIR/326.g.vcf
gunzip -c $DATA_DIR/sb0125/327.g.vcf.gz > $SCRATCH_DIR/327.g.vcf
gunzip -c $DATA_DIR/sb0125/328.g.vcf.gz > $SCRATCH_DIR/328.g.vcf
gunzip -c $DATA_DIR/sb0125/329.g.vcf.gz > $SCRATCH_DIR/329.g.vcf
gunzip -c $DATA_DIR/sb0125/330.g.vcf.gz > $SCRATCH_DIR/330.g.vcf
gunzip -c $DATA_DIR/sb0125/331.g.vcf.gz > $SCRATCH_DIR/331.g.vcf
gunzip -c $DATA_DIR/sb0125/332.g.vcf.gz > $SCRATCH_DIR/332.g.vcf
gunzip -c $DATA_DIR/sb0125/333.g.vcf.gz > $SCRATCH_DIR/333.g.vcf
gunzip -c $DATA_DIR/sb0125/334.g.vcf.gz > $SCRATCH_DIR/334.g.vcf
gunzip -c $DATA_DIR/sb0125/335.g.vcf.gz > $SCRATCH_DIR/335.g.vcf
gunzip -c $DATA_DIR/sb0125/336.g.vcf.gz > $SCRATCH_DIR/336.g.vcf
gunzip -c $DATA_DIR/sb0125/337.g.vcf.gz > $SCRATCH_DIR/337.g.vcf
gunzip -c $DATA_DIR/sb0125/338.g.vcf.gz > $SCRATCH_DIR/338.g.vcf
gunzip -c $DATA_DIR/sb0125/339.g.vcf.gz > $SCRATCH_DIR/339.g.vcf
gunzip -c $DATA_DIR/sb0125/340.g.vcf.gz > $SCRATCH_DIR/340.g.vcf
gunzip -c $DATA_DIR/sb0125/341.g.vcf.gz > $SCRATCH_DIR/341.g.vcf
gunzip -c $DATA_DIR/sb0125/342.g.vcf.gz > $SCRATCH_DIR/342.g.vcf
gunzip -c $DATA_DIR/sb0125/343.g.vcf.gz > $SCRATCH_DIR/343.g.vcf
gunzip -c $DATA_DIR/sb0125/344.g.vcf.gz > $SCRATCH_DIR/344.g.vcf
gunzip -c $DATA_DIR/sb0125/345.g.vcf.gz > $SCRATCH_DIR/345.g.vcf
gunzip -c $DATA_DIR/sb0125/346.g.vcf.gz > $SCRATCH_DIR/346.g.vcf
gunzip -c $DATA_DIR/sb0125/347.g.vcf.gz > $SCRATCH_DIR/347.g.vcf
gunzip -c $DATA_DIR/sb0125/348.g.vcf.gz > $SCRATCH_DIR/348.g.vcf
gunzip -c $DATA_DIR/sb0125/349.g.vcf.gz > $SCRATCH_DIR/349.g.vcf
gunzip -c $DATA_DIR/sb0125/350.g.vcf.gz > $SCRATCH_DIR/350.g.vcf

cd $SCRATCH_DIR || exit 1
gatk --java-options "-Xmx10G" CombineGVCFs -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -V 1.g.vcf -V 2.g.vcf -V 3.g.vcf -V 4.g.vcf -V 5.g.vcf -V 6.g.vcf -V 7.g.vcf -V 8.g.vcf -V 9.g.vcf -V 10.g.vcf -V 11.g.vcf -V 12.g.vcf -V 13.g.vcf -V 14.g.vcf -V 15.g.vcf -V 16.g.vcf -V 17.g.vcf -V 18.g.vcf -V 19.g.vcf -V 20.g.vcf -V 21.g.vcf -V 22.g.vcf -V 23.g.vcf -V 24.g.vcf -V 25.g.vcf -V 26.g.vcf -V 27.g.vcf -V 28.g.vcf -V 29.g.vcf -V 30.g.vcf -V 31.g.vcf -V 32.g.vcf -V 33.g.vcf -V 34.g.vcf -V 35.g.vcf -V 36.g.vcf -V 37.g.vcf -V 38.g.vcf -V 39.g.vcf -V 40.g.vcf -V 41.g.vcf -V 42.g.vcf -V 43.g.vcf -V 44.g.vcf -V 45.g.vcf -V 46.g.vcf -V 47.g.vcf -V 48.g.vcf -V 49.g.vcf -V 50.g.vcf -V 51.g.vcf -V 52.g.vcf -V 53.g.vcf -V 54.g.vcf -V 55.g.vcf -V 56.g.vcf -V 57.g.vcf -V 58.g.vcf -V 59.g.vcf -V 60.g.vcf -V 61.g.vcf -V 62.g.vcf -V 63.g.vcf -V 64.g.vcf -V 65.g.vcf -V 66.g.vcf -V 67.g.vcf -V 68.g.vcf -V 69.g.vcf -V 70.g.vcf -V 71.g.vcf -V 72.g.vcf -V 73.g.vcf -V 74.g.vcf -V 75.g.vcf -V 76.g.vcf -V 77.g.vcf -V 78.g.vcf -V 79.g.vcf -V 80.g.vcf -V 81.g.vcf -V 82.g.vcf -V 83.g.vcf -V 84.g.vcf -V 85.g.vcf -V 86.g.vcf -V 87.g.vcf -V 88.g.vcf -V 89.g.vcf -V 90.g.vcf -V 91.g.vcf -V 92.g.vcf -V 93.g.vcf -V 94.g.vcf -V 95.g.vcf -V 96.g.vcf -V 97.g.vcf -V 98.g.vcf -V 99.g.vcf -V 100.g.vcf -V 101.g.vcf -V 102.g.vcf -V 103.g.vcf -V 104.g.vcf -V 105.g.vcf -V 106.g.vcf -V 107.g.vcf -V 108.g.vcf -V 109.g.vcf -V 110.g.vcf -V 111.g.vcf -V 112.g.vcf -V 113.g.vcf -V 114.g.vcf -V 115.g.vcf -V 116.g.vcf -V 117.g.vcf -V 118.g.vcf -V 119.g.vcf -V 120.g.vcf -V 121.g.vcf -V 122.g.vcf -V 123.g.vcf -V 124.g.vcf -V 125.g.vcf -V 126.g.vcf -V 127.g.vcf -V 128.g.vcf -V 129.g.vcf -V 130.g.vcf -V 131.g.vcf -V 132.g.vcf -V 133.g.vcf -V 134.g.vcf -V 135.g.vcf -V 136.g.vcf -V 137.g.vcf -V 138.g.vcf -V 139.g.vcf -V 140.g.vcf -V 141.g.vcf -V 142.g.vcf -V 143.g.vcf -V 144.g.vcf -V 145.g.vcf -V 146.g.vcf -V 147.g.vcf -V 148.g.vcf -V 149.g.vcf -V 150.g.vcf -V 151.g.vcf -V 152.g.vcf -V 153.g.vcf -V 154.g.vcf -V 155.g.vcf -V 156.g.vcf -V 157.g.vcf -V 158.g.vcf -V 159.g.vcf -V 160.g.vcf -V 161.g.vcf -V 162.g.vcf -V 163.g.vcf -V 164.g.vcf -V 165.g.vcf -V 166.g.vcf -V 167.g.vcf -V 168.g.vcf -V 169.g.vcf -V 170.g.vcf -V 171.g.vcf -V 172.g.vcf -V 173.g.vcf -V 174.g.vcf -V 175.g.vcf -V 176.g.vcf -V 177.g.vcf -V 178.g.vcf -V 179.g.vcf -V 180.g.vcf -V 181.g.vcf -V 182.g.vcf -V 183.g.vcf -V 184.g.vcf -V 185.g.vcf -V 186.g.vcf -V 187.g.vcf -V 188.g.vcf -V 189.g.vcf -V 190.g.vcf -V 191.g.vcf -V 192.g.vcf -V 193.g.vcf -V 194.g.vcf -V 195.g.vcf -V 196.g.vcf -V 197.g.vcf -V 198.g.vcf -V 199.g.vcf -V 200.g.vcf -V 201.g.vcf -V 202.g.vcf -V 203.g.vcf -V 204.g.vcf -V 205.g.vcf -V 206.g.vcf -V 207.g.vcf -V 208.g.vcf -V 209.g.vcf -V 210.g.vcf -V 211.g.vcf -V 212.g.vcf -V 213.g.vcf -V 214.g.vcf -V 215.g.vcf -V 216.g.vcf -V 217.g.vcf -V 218.g.vcf -V 219.g.vcf -V 220.g.vcf -V 221.g.vcf -V 222.g.vcf -V 223.g.vcf -V 224.g.vcf -V 225.g.vcf -V 226.g.vcf -V 227.g.vcf -V 228.g.vcf -V 229.g.vcf -V 230.g.vcf -V 231.g.vcf -V 232.g.vcf -V 233.g.vcf -V 234.g.vcf -V 235.g.vcf -V 236.g.vcf -V 237.g.vcf -V 238.g.vcf -V 239.g.vcf -V 240.g.vcf -V 241.g.vcf -V 242.g.vcf -V 243.g.vcf -V 244.g.vcf -V 245.g.vcf -V 246.g.vcf -V 247.g.vcf -V 248.g.vcf -V 249.g.vcf -V 250.g.vcf -V 251.g.vcf -V 252.g.vcf -V 253.g.vcf -V 254.g.vcf -V 255.g.vcf -V 256.g.vcf -V 257.g.vcf -V 258.g.vcf -V 259.g.vcf -V 260.g.vcf -V 261.g.vcf -V 262.g.vcf -V 263.g.vcf -V 264.g.vcf -V 265.g.vcf -V 266.g.vcf -V 267.g.vcf -V 268.g.vcf -V 269.g.vcf -V 270.g.vcf -V 271.g.vcf -V 272.g.vcf -V 273.g.vcf -V 274.g.vcf -V 275.g.vcf -V 276.g.vcf -V 277.g.vcf -V 278.g.vcf -V 279.g.vcf -V 280.g.vcf -V 281.g.vcf -V 282.g.vcf -V 283.g.vcf -V 284.g.vcf -V 285.g.vcf -V 286.g.vcf -V 287.g.vcf -V 288.g.vcf -V 289.g.vcf -V 290.g.vcf -V 291.g.vcf -V 292.g.vcf -V 293.g.vcf -V 294.g.vcf -V 295.g.vcf -V 296.g.vcf -V 297.g.vcf -V 298.g.vcf -V 299.g.vcf -V 300.g.vcf -V 301.g.vcf -V 302.g.vcf -V 303.g.vcf -V 304.g.vcf -V 305.g.vcf -V 306.g.vcf -V 307.g.vcf -V 308.g.vcf -V 309.g.vcf -V 310.g.vcf -V 311.g.vcf -V 312.g.vcf -V 313.g.vcf -V 314.g.vcf -V 315.g.vcf -V 316.g.vcf -V 317.g.vcf -V 318.g.vcf -V 319.g.vcf -V 320.g.vcf -V 321.g.vcf -V 322.g.vcf -V 323.g.vcf -V 324.g.vcf -V 325.g.vcf -V 326.g.vcf -V 327.g.vcf -V 328.g.vcf -V 329.g.vcf -V 330.g.vcf -V 331.g.vcf -V 332.g.vcf -V 333.g.vcf -V 334.g.vcf -V 335.g.vcf -V 336.g.vcf -V 337.g.vcf -V 338.g.vcf -V 339.g.vcf -V 340.g.vcf -V 341.g.vcf -V 342.g.vcf -V 343.g.vcf -V 344.g.vcf -V 345.g.vcf -V 346.g.vcf -V 347.g.vcf -V 348.g.vcf -V 349.g.vcf -V 350.g.vcf -O GATKv4_Genotyping.g.vcf
rm -r {1..350}.g.vcf
gatk --java-options "-Xmx10G" GenotypeGVCFs -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -V GATKv4_Genotyping.g.vcf -O GATKv4_Genotyping.raw.vcf
gatk --java-options "-Xmx10G" SelectVariants -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -V GATKv4_Genotyping.raw.vcf -O GATKv4_Genotyping.raw.snp.vcf -select-type SNP
gatk --java-options "-Xmx10G" VariantFiltration -R /srv/GT/reference/Finger_millet/KEN/DENOVO_v2.0_B_subgenome/Sequence/WholeGenomeFasta/genome.fa -V GATKv4_Genotyping.raw.snp.vcf --filter-expression "! vc.hasAttribute('QD') || QD < 2.0" --filter-name "QD" --filter-expression "vc.isSNP() && (MQ < 30.0 || (vc.hasAttribute('MQRankSum') && MQRankSum < -15.0))" --filter-name "MQ" --genotype-filter-expression "GQ < 20 || DP == 0" --genotype-filter-name "GQ" -O GATKv4_Genotyping.filtered.vcf
mv GATKv4_Genotyping.raw.snp.vcf GATKv4_Genotyping.raw.vcf
gzip GATKv4_Genotyping.raw.vcf
gzip GATKv4_Genotyping.filtered.vcf

