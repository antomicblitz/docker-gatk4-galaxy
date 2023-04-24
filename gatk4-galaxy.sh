#!/bin/bash

REFERENCE_FASTA="$1"
INPUT_BAM="$2"
DBSNP="$3"
EMIT_REF_CONFIDENCE="$4"
MAX_ALTERNATE_ALLELES="$5"
MIN_BASE_QUALITY_SCORE="$6"
OUTPUT_VCF="$7"
GALAXY_JOB_HOME_DIR="$8"

# Copy input files to the temporary directory
#cp "$INPUT_BAM" "$TMP"/reference_fasta.fa"
cp "$INPUT_BAM" "$TMPDIR"/input_bam.bam
#cp "$DBSNP" "$TMP"/dbsnp.vcf

docker run --platform=linux/amd64 -v "$TMPDIR":/data galaxy_gatk:4.1.3.0 ValidateSamFile -I /data/input_bam.bam

#docker run -v "$TMP":/data galaxy_gatk:4.1.3.0 HaplotypeCaller \
# -R "$REFERENCE_FASTA" \
# -I /data/input_bam.bam \
# -O "$OUTPUT_VCF" \
# --dbsnp "$DBSNP" \
# --emit-ref-confidence "$EMIT_REF_CONFIDENCE" \
# --max-alternate-alleles "$MAX_ALTERNATE_ALLELES" \
# --min-base-quality-score "$MIN_BASE_QUALITY_SCORE"