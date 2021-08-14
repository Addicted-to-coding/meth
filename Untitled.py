#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import numpy as np


# In[13]:


df_chrom=pd.read_csv('chr1-ChromHmmForebrain.bed',names=['chr','start','end','id','rand','a','b','c','d'],sep='\t')


# In[14]:


df_chrom


# In[15]:


df_meth=pd.read_csv('Astro_merged.position.csv')


# In[16]:


df_meth


# In[26]:


df_chrom.dtypes


# In[28]:


df_meth["position"] = df_meth["position"].astype(int)


# In[ ]:


for i in range (0,1507):
    for j in range (0,15400):
#         print(df_chrom.start[i])
#         print(df_chrom.end[i])
#         print(df_meth.position[i])
        if (df_meth.position[i]>df_chrom.start[i] and df_meth.position[i]<df_chrom.end[i]):
            df_meth.flag[i]=df_chrom.id[i]
            print("match")
    print(i)

# In[34]:


df_meth


# In[ ]:




