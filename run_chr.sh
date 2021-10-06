echo "cd chr${1}"
cd chr${1}
cp ../chr1/compare_meth_SV_bppos.py .
rm compare_final.py
rm analyze.sh
rm pos*_merged.csv
cp ../chr2/compare_final.py .
cp ../analyze.sh .
./analyze.sh ${1}
cd ..
