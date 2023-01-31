# hybrid genome assembly using DGB2OLC

# trimming short-reads 

trimmomatic PE -threads 16 \
-phred33 \
-trimlog trim.log \
HolEw3-1a_S1_L001_R1_001.fastq.gz HolEw3-1a_S1_L001_R2_001.fastq.gz \
reads_trim_R1.fastq reads_unpair_R1.fastq \
reads_trim_R2.fastq reads_unpair_R2.fastq \
LEADING:10 TRAILING:10

&&

SparseAssembler GS 509000000 \ # est genome size 509 Mb
NodeCovTh 1 \ # coverage threshold for spurious k-mers
EdgeCovTh 0 \ # coverage threshold for spurious links
k 50 \ # est k-mer for illumina reads
g 10 \ # number of skipped intermediate k-mers
f reads_trim_R1.fastq \
f reads_trim_R2.fastq \
