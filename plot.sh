for chr in {2..19};
do
	echo "cd chr${chr}"
	cd chr${chr}
	cp ../plot_all.py .
        for f in IA,C_merged*.csv*; do mv "$f" "IAC${f#IA,C_merged}"; done
	for f in IAC.*.csv_stats.csv; do mv $f meh$fmeh; done
	cat *position_0.csv_stats.csv > pos0_merged.csv
	cat *position_-1.csv_stats.csv > pos-1_merged.csv
	cat *position_1.csv_stats.csv > pos1_merged.csv
	cat *position_2.csv_stats.csv > pos2_merged.csv
	cat *position_-2.csv_stats.csv > pos-2_merged.csv
	cat *position_-3.csv_stats.csv > pos-3_merged.csv
	cat *position_3.csv_stats.csv > pos3_merged.csv
	cat *position_4.csv_stats.csv > pos4_merged.csv
	cat *position_-4.csv_stats.csv > pos-4_merged.csv
	wc -l *merged.position_1.csv | awk '{print $1}' > total_chr.csv
	sed -i 's/$/,1/' pos1_merged.csv
	sed -i 's/$/,2/' pos2_merged.csv
	sed -i 's/$/,3/' pos3_merged.csv
	sed -i 's/$/,4/' pos4_merged.csv
	sed -i 's/$/,-3/' pos-3_merged.csv
	sed -i 's/$/,-2/' pos-2_merged.csv
	sed -i 's/$/,-1/' pos-1_merged.csv
	sed -i 's/$/,0/' pos0_merged.csv
	sed -i 's/$/,-4/' pos-4_merged.csv
	python3 plot_all.py chr${chr}.pdf
	cd ..
done
