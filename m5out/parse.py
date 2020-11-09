#!/usr/bin/env python
# coding: utf-8

# In[251]:


import re
import os
import json
import pandas as pd
import numpy as np
import sys


# In[249]:


def txt_to_dataframe(algoritmo):
    csv = []
    for file_name in sorted(os.listdir()):
        if file_name.startswith(algoritmo) and file_name.endswith(".txt"):
            with open(file_name) as file:
                linhas = file.readlines()
                metricas = dict([re.findall("([^ ]*) *([0-9]*[.]?[0-9]*).*#",linha)[0] for linha in linhas[2:-2]])
                parametro = re.findall("(.*)_(.*)_(.*).txt", file_name)[0]
                metricas[parametro[1]] = parametro[2]
                csv.append(metricas)
    df = pd.DataFrame(csv)
    df[parametro[1]]= df[parametro[1]].astype(np.uint8)
    df.sort_values(parametro[1], ascending=True, inplace=True)
    return df[[ parametro[1],
                "sim_seconds", 
                "system.cpu.ipc", 
                "system.cpu.dcache.overall_miss_rate::total", 
                "system.l2cache.overall_miss_rate::total", 
                "system.l3cache.overall_miss_rate::total" ]].sort_values(parametro[1])


# In[250]:


if __name__ == "__main__":
    df = txt_to_dataframe(sys.argv[1])
    df.to_csv(sys.argv[1]+".csv")


# In[ ]:




