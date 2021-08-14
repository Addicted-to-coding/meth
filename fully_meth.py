import pandas as pd
import matplotlib.pyplot as plt
import sys


bl6=pd.read_csv(sys.argv[1],sep='\t', names=["chr", "position", "orientation", "nucleotide","methylated","coverage"])


bl6 = bl6[bl6["coverage"] > 5 ] # more than min bound
bl6 = bl6[bl6["coverage"] < 50 ] # less than upper bound



bl6['fraction_bl6'] = bl6['methylated'] / bl6['coverage']


result= bl6.loc[(bl6['fraction_bl6'] ==1)]
result.to_csv(sys.argv[2], index=False)

