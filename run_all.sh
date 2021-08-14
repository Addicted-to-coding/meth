for chr in {8..19};
do
	echo "cd chr${chr}"
	cd chr${chr}
	cp /u/project/cluo/heffel/pseudobulk/cluster_allc/hpc/chr${chr}/*.tsv.gz .
	cd ..
done
