
# coding: utf-8

# In[1]:

import pandas as pd
import matplotlib.pyplot as plt
import sys


# In[40]:

df=pd.read_csv(sys.argv[1])


# In[64]:

# df


# In[42]:
df["position"].astype(int)
num1=(int(sys.argv[2]))
#df["one_plus"]=df["position"]+ 1
df["one_plus"]=df["position"]+ num1
df["one_minus"]=df["position"]- num1


# In[65]:

# df


# In[48]:

data = [df["one_plus"]]
headers = ["Position"]
df3 = pd.concat(data, axis=1, keys=headers)


# In[49]:

data = [df["one_minus"]]
headers = ["Position"]
df4 = pd.concat(data, axis=1, keys=headers)


# In[66]:

# df4


# In[54]:

df_new=pd.concat([df3, df4], axis=0, ignore_index=True)


# In[67]:

df_new=df_new.drop_duplicates()


# In[61]:

df_new=df_new.sort_values(by="Position")


# In[63]:

df_new.to_csv(sys.argv[3],index=False, header=False)


# In[ ]:



