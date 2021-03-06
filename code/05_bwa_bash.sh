#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:30:00
#SBATCH -J bwa_analysis
#SBATCH --mail-typ=ALL
#SBATCH --mail-user erikhedman2@gmail.com

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.6

# Your commands
bwa index -p index_BWA /home/erwehe/github/ga18/analyses/02_genome_assembly/leptospirillum_assembly_result.contigs.fasta;\
bwa mem index_BWA \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*30_P1*.gz \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*30_P2*.gz | samtools view -bS - > 30out.bam;\
bwa mem index_BWA \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*31_P1*.gz \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*31_P2*.gz | samtools view -bS - > 31out.bam;\
bwa mem index_BWA \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*32_P1*.gz \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*32_P2*.gz | samtools view -bS - > 32out.bam;\
bwa mem index_BWA \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*33_P1*.gz \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*33_P2*.gz | samtools view -bS - > 33out.bam;\
bwa mem index_BWA \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*88_P1*.gz \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*88_P2*.gz | samtools view -bS - > 88out.bam;\
bwa mem index_BWA \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*89_P1*.gz \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*89_P2*.gz | samtools view -bS - > 89out.bam;\
bwa mem index_BWA \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*90_P1*.gz \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*90_P2*.gz | samtools view -bS - > 90out.bam;\
bwa mem index_BWA \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*91_P1*.gz \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*91_P2*.gz | samtools view -bS - > 91out.bam;\
bwa mem index_BWA \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*92_P1*.gz \
/proj/g2018003/nobackup/private/christel_2017/RNA_trimmed_reads/*92_P2*.gz | samtools view -bS - > 92out.bam
