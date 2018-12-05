<config.mk

%.done.ok:	$FASTA
	set -x
	mkdir -p $stem
	STAR \
		--runThreadN $NT \
		--runMode genomeGenerate \
		--genomeDir $stem \
		--genomeFastaFiles $prereq \
		--sjdbGTFfile $GTF \
	&& touch $target

