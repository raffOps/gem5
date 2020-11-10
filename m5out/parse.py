#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import re
import os
import json
import pandas as pd
import numpy as np
import sys


# In[ ]:


def txt_to_dataframe(algoritmo):
    csv = []
    for file_name in sorted(os.listdir()):
        if file_name.startswith(algoritmo) and file_name.endswith(".txt"):
            with open(file_name) as file:
                linhas = file.readlines()
                metricas = dict([re.findall("([^ ]*) *([0-9]*[.]?[0-9]*).*#",linha)[0] for linha in linhas[2:-2]])
                parametro = re.findall("(.*)_(.*)_(.*).txt", file_name)[0]
                #print(parametro)
                metricas[parametro[1]] = int(parametro[2])
                csv.append(metricas)
    df = pd.DataFrame(csv)
    df.sort_values(parametro[1], ascending=True, inplace=True)
    return df[[ parametro[1],
                "sim_seconds", 
                "system.cpu.ipc", 
                "system.cpu.dcache.overall_miss_rate::total", 
                "system.l2cache.overall_miss_rate::total", 
                "system.l3cache.overall_miss_rate::total" ]].sort_values(parametro[1])


# In[ ]:


if __name__ == "__main__":
    algoritmo = sys.argv[1]
    df = txt_to_dataframe(algoritmo)
    df.to_csv(sys.argv[1]+".csv")

