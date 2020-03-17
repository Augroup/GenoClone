
This tutorial will help you get started with GenoClone by demonstrating how to perform subclone inference from exome or whole genome sequencing. If you experience any problems following these steps, please don't hesitate to contact us by email: kinfai.au@osumc.edu.

# Requirements
GenoClone aims to provide useful tool to infer the tumor subclones and study tumor heterogeneity. If any of the following requirements conflict with your lab's set up, please contact us.

* System Requirements:Linux operating system

* Software Requirements:
  Python 2.7+,
  MATLAB 2014+,
  samtools 1.3.1,
  VarScan 2.4.2

**Notes: Python, MATLAB, and samtools are available through your path environment variable.**

* Alignment file: BAM alignment - You need the tumor and matched normal bam file from exome or whole genome sequencing.
* Reference files: --reference - genome FASTA file (Input for VarScan to detect the mutations)

# Download

You need to download:

Uncompress and extract the directory in a location of your choice to get a directory containing GenoClone executable files:

```
   $ tar -xzvf GenoClone-0.1.tar.gz
	 $ ls GenoClone/bin/
	 GenoClone
```
Then check the commond of GenoClone:

```
$ GenoClone/bin/GenoClone -h usage: GenoClone [-h] -o OUTPUT [--tempdir TEMPDIR | --specific_tempdir SPECIFIC_TEMPDIR] varscan bam Detect the linkage information between somatic mutation(SNV) and germline mutation(SNP) positional arguments: varscan REQUIRED Input the output file from Varscan bam REQUIRED Input the alignment tumor bam file optional arguments: -h, --help show this help message and exit -o OUTPUT, --output OUTPUT REQUIRED Output filename, totally it produce two files, one '.csv' file for the composition of subclone and the other '.pdf' file for the evaluation of different number of subclones (default: None) --tempdir TEMPDIR The temporary directory is made and destroyed here. (default: /tmp) --specific_tempdir SPECIFIC_TEMPDIR This temporary directory will be used, but will remain after executing. (default: None)

```

# Input data:

GenoClone depends on the output of VarScan, the two softwares require:
1. Reference.fasta: the indexed reference genome FASTA file.
2. Tumor.bam and Normal.bam : the binary sequence alignment/map formatted (BAM) sequence data from tumor and matched normal DNA sample.

VarScan needs the BAM file of tumor and matched normal and reference genome to obtain the total mutations (germline and somatic mutations). Then GenoClone uses the tumor bam file and total mutations to infer the subclones.

The bam files for tumor and matched normal could be downloaded from National Cancer Institute and corresponding Reference.fasta

# Example commonds:

**Step 1.** Use VarScan to obtain the total mutations:
```
$ samtools mpileup -q 1 -f Reference.fasta Tumor.bam >tumor.pileup $ samtools mpileup -q 1 -f Reference.Genome Normal.bam >tumor.pileup $ java -jar varScan somatic normal.pileup tumor.pileup --output-vcf 1 --output-snp total_mutations.vcf
```
**Step 2.** Use GenoClone to infer subclones:

```
$ /GenoClone/bin/GenoClone total_mutations.vcf Tumor.bam -o Tumor
```

# Output files: 

GenoClone output two files:

**Tumor.csv**: the number of subclones and the compositon of each subclones and the goodness value varies with number of subclones.
**Tumor.pdf**: the difference between true and observed VAF and goodness varies with number of subclones.
