#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import sys
import matplotlib.pyplot as plt


# In[6]:


meth=pd.read_csv(sys.argv[1])


# In[3]:


variants=pd.read_csv("chr1_tab.txt",names=["position","ref","alt"])


# In[8]:


df_plus = meth[meth['orientation_aj'] == "+"]


# In[9]:


df_minus=meth[meth['orientation_aj'] == "-"]


# In[14]:


df_plus["position"].astype(int)
df_minus["position"].astype(int)
df_plus["one_plus"]=df_plus["position"]+ 1
df_minus["one_minus"]=df_minus["position"]- 1


# In[29]:


data = [df_plus["one_plus"]]
headers = ["position"]
df1 = pd.concat(data, axis=1, keys=headers)


# In[30]:


data = [df_minus["one_minus"]]
headers = ["position"]
df2 = pd.concat(data, axis=1, keys=headers)


# In[31]:


df_new=pd.concat([df1, df2], axis=0, ignore_index=True)


# In[43]:


# df_new


# In[33]:


df_new=df_new.drop_duplicates()


# In[37]:


df_new=df_new.sort_values(by="position")


# In[38]:


df=pd.merge(variants,df_new,on="position")


# In[44]:


# df


# In[40]:


df["nuc"] = df["ref"] + df["alt"]
# df_0["nuc"] = df_0["ref"] + df_0["alt"]


# In[41]:


print(df['nuc'].value_counts().to_string())

# In[ ]:




