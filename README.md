
This tutorial will help you get started with GenoClone by demonstrating how to perform subclone inference from exome or whole genome sequencing. If you experience any problems following these steps, please don't hesitate to contact us.

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

