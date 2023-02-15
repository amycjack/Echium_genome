
# trimming short reads

trimmomatic PE -threads 16 \
-phred33 \
-trimlog trim.log \
HolEw3-1a_S1_L001_R1_001.fastq.gz HolEw3-1a_S1_L001_R2_001.fastq.gz \
reads_trim_R1.fastq reads_unpair_R1.fastq \
reads_trim_R2.fastq reads_unpair_R2.fastq \
LEADING:10 TRAILING:10

# trimming long reads

filtlong --min_length 1000 --keep_percent 90 all_pacbio_echium.fastq | gzip > all_pacbio_echium.trimmed.fastq &&
flye \
--pacbio-hifi all_pacbio_echium.trimmed.fastq \
--out-dir assembly_hifi \
--genome-size 509m \
--threads 20 \
--scaffold \

#flye assembly

flye \
--pacbio-hifi all_pacbio_echium.trimmed.fastq \
--out-dir assembly_hifi \
--genome-size 509m \
--threads 20 \
--scaffold \






