for chr in {1..19};
do
	echo "cd chr${chr}"
	cd chr${chr}
	ln -s /u/project/cluo/heffel/pseudobulk/cluster_allc/hpc/chr${chr}/*.tsv.gz .
	cp ../chr1/sample.txt .
	cp ../chr1/merge.py .
	cp ../chr1/myFuncFastWrapper.sh .
	while read line; do echo "python3 merge.py ${line}_aj.tsv.gz ${line}_balb.tsv.gz ${line}_blk6.tsv.gz ${line}_cast.tsv.gz ${line}_dba.tsv.gz ${line}_fvb.tsv.gz  ${line}_pwk.tsv.gz ${line}_wsb.tsv.gz ${line}_merged_chr${chr}.tsv" > run_chr${chr}_${line}.sh ; done < sample.txt
	ls run_*sh | awk '{i+=1;print "if [ $1 == "i" ];then ./"$1" ;fi"}' > myFunc.sh
	echo "qsub -cwd -V -N chr${chr}_fract_meth -l h_data=150G,h_rt=12:00:00,highp -t 1-23:1 myFuncFastWrapper.sh"
	qsub -cwd -V -N chr${chr}_fract_meth -l h_data=150G,h_rt=12:00:00,highp -t 1-23:1 myFuncFastWrapper.sh
	chmod 755 *.sh
	cd ..
done
