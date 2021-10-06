for chr in {2..19};
do
	echo "cd chr${chr}"
	cd chr${chr}
	cp ../chr1/*.txt .
	cp ../chr1/*.sh .
	cp ../chr1/*.py .
	rm chr${chr}.o*
	rm chr${chr}.e*
	qsub -cwd -V -N chr${chr}_amy -l h_data=150G,h_rt=2:00:00,highp -t 1-56:1 myFuncFastWrapper.sh 
	cd ..
done
