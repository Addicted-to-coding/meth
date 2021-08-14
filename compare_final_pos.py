
# coding: utf-8

# In[2]:

import pandas as pd
import sys
import matplotlib.pyplot as plt


# In[20]:

meth=pd.read_csv(sys.argv[1],names="P")


# In[21]:

variants=pd.read_csv(sys.argv[2],names="P")


# In[25]:

col1 = meth["P"].tolist()
col2 = variants["P"].tolist()


# In[29]:

print((set(col1).intersection(col2)),sys.argv[1])
print(str(len(set(col1).intersection(col2)))+","+sys.argv[1])


# In[ ]:



