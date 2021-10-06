for chr in {4..19};
do
	echo "cd chr${chr}"
	cd chr${chr}
	cp ../chr1/compare_meth_SV_bppos.py .
	rm compare_final.py
	rm analyze.sh
	rm pos*_merged.csv
	cp ../chr2/compare_final.py .
	cp ../analyze.sh .
	./analyze.sh ${chr}
	#cp /u/project/cluo/heffel/pseudobulk/cluster_allc/hpc/chr${chr}/*.tsv.gz .
	cd ..
done
