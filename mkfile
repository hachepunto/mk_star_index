<config.mk

STEM = `{basename $FASTA | sed -e 's#.fa$##g' }
DIRNAME = `{dirname $FASTA }

$STEM.done.ok:	$DIRNAME"/"$STEM.fa
	set -x
	mkdir -p $STEM
	STAR \
		--runThreadN $NT \
		--runMode genomeGenerate \
		--genomeDir $STEM \
		--genomeFastaFiles $FASTA \
		--sjdbGTFfile $GTF \
	&& touch $target

