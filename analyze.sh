#for f in *merged.csv; do cat $f | cut -d ',' -f3 > ${f%.*}.position.csv; done
#for f in *position.csv; do sed  -i '1i position' $f; done
#for f in *position.csv; do python3 compare_meth_SV_bppos.py $f -4 ${f%.*}_-4.csv; done
#for f in *position.csv; do python3 compare_meth_SV_bppos.py $f -3 ${f%.*}_-3.csv; done
#for f in *position.csv; do python3 compare_meth_SV_bppos.py $f -2 ${f%.*}_-2.csv; done
#for f in *position.csv; do python3 compare_meth_SV_bppos.py $f -1 ${f%.*}_-1.csv; done
#for f in *position.csv; do python3 compare_meth_SV_bppos.py $f 0 ${f%.*}_0.csv; done
#for f in *position.csv; do python3 compare_meth_SV_bppos.py $f 1 ${f%.*}_1.csv; done
#for f in *position.csv; do python3 compare_meth_SV_bppos.py $f 2 ${f%.*}_2.csv; done
#for f in *position.csv; do python3 compare_meth_SV_bppos.py $f 3 ${f%.*}_3.csv; done
#for f in *position.csv; do python3 compare_meth_SV_bppos.py $f 4 ${f%.*}_4.csv; done

for f in *_-4.csv; do python3 compare_final.py $f /u/home/v/vsarwal/project-jflint/amy/variants/variants_chr${1}_pos.txt > ${f}_stats.csv; done
for f in *_-3.csv; do python3 compare_final.py $f /u/home/v/vsarwal/project-jflint/amy/variants/variants_chr${1}_pos.txt > ${f}_stats.csv; done
for f in *_-2.csv; do python3 compare_final.py $f /u/home/v/vsarwal/project-jflint/amy/variants/variants_chr${1}_pos.txt > ${f}_stats.csv; done
for f in *_-1.csv; do python3 compare_final.py $f /u/home/v/vsarwal/project-jflint/amy/variants/variants_chr${1}_pos.txt > ${f}_stats.csv; done
for f in *_0.csv; do python3 compare_final.py $f /u/home/v/vsarwal/project-jflint/amy/variants/variants_chr${1}_pos.txt > ${f}_stats.csv; done
for f in *_1.csv; do python3 compare_final.py $f /u/home/v/vsarwal/project-jflint/amy/variants/variants_chr${1}_pos.txt > ${f}_stats.csv; done
for f in *_2.csv; do python3 compare_final.py $f /u/home/v/vsarwal/project-jflint/amy/variants/variants_chr${1}_pos.txt > ${f}_stats.csv; done
for f in *_3.csv; do python3 compare_final.py $f /u/home/v/vsarwal/project-jflint/amy/variants/variants_chr${1}_pos.txt > ${f}_stats.csv; done
for f in *_4.csv; do python3 compare_final.py $f /u/home/v/vsarwal/project-jflint/amy/variants/variants_chr${1}_pos.txt > ${f}_stats.csv; done


