#!/bin/sh

#PBS -lwalltime=72:00:00
#PBS -lselect=1:ncpus=32:mem=124gb:avx2=true

module load freebayes

freebayes -f /rds/general/project/fisher-aspergillus-reference/live/Aspergillus_fumigatus.CADRE.12.dna.toplevel.fa --ploidy 2 --bam-list /rds/general/project/fisher-aspergillus-results/live/Weird_paper_analyses/AirSampling/BAMs/bams.list > /rds/general/project/fisher-aspergillus-results/live/Weird_paper_analyses/AirSampling/BAMs/air.vcf
