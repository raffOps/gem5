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


def txt_to_dataframe(algoritmo, parametro):
    csv = []
    for file_name in sorted(os.listdir()):
        if file_name.startswith(algoritmo+"_"+parametro) and file_name.endswith(".txt"):
            with open(file_name) as file:
                linhas = file.readlines()
                metricas = dict([re.findall("([^ ]*) *([0-9]*[.]?[0-9]*).*#",linha)[0] for linha in linhas[2:-2]])
                variavel = file_name[len(algoritmo+"_"+parametro+"_"):-4]
                try:
                    metricas[parametro] = int(variavel)
                except:
                    metricas[parametro] = variavel
                csv.append(metricas)
    df = pd.DataFrame(csv)
    df.sort_values(parametro, ascending=True, inplace=True)
    df.reset_index(drop=True, inplace=True)
    return df[[parametro, "sim_seconds", "system.cpu.branchPred.condIncorrect",
               "system.cpu.dcache.overall_miss_rate::total", "system.cpu.ipc"]]


# In[ ]:


if __name__ == "__main__":
    algoritmo = sys.argv[1]
    parametro = sys.argv[2]
    df = txt_to_dataframe(algoritmo, parametro)
    df.to_excel(algoritmo+"_"+parametro+".xlsx")

