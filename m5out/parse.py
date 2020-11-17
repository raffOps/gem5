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
    if algoritmo == "MatrixMultiplication" and parametro == "branch predictor":
        segundo_parametro = "system.cpu.branchPred.condIncorrect"
    elif algoritmo == "MatrixMultiplication" and parametro == "l1 associatividade":
        segundo_parametro = "system.cpu.dcache.overall_miss_rate::total"
    elif algoritmo == "MatrixMultiplication" and parametro == "l1 size":
        segundo_parametro = "sim_seconds"
    elif algoritmo == "CustoMinimo" and parametro == "branch predictor":
        segundo_parametro = "system.cpu.branchPred.condIncorrect"
    elif algoritmo == "CustoMinimo" and parametro == "l1 associatividade":
        segundo_parametro = "system.cpu.dcache.overall_miss_rate::total"
    elif algoritmo == "CustoMinimo" and parametro == "l1 size":
        segundo_parametro = "sim_seconds"
    elif algoritmo == "Mergesort" and parametro == "branch predictor":
        segundo_parametro = "system.cpu.branchPred.condIncorrect"
    elif algoritmo == "Mergesort" and parametro == "l1 associatividade":
        segundo_parametro = "system.cpu.dcache.overall_miss_rate::total"
    elif algoritmo == "Mergesort" and parametro == "l1 size":
        segundo_parametro = "sim_seconds"

    return df[[ parametro, segundo_parametro]].sort_values(parametro)


# In[ ]:


if __name__ == "__main__":
    algoritmo = sys.argv[1]
    parametro = sys.argv[2]
    df = txt_to_dataframe(algoritmo, parametro)
    df.to_csv(algoritmo+"_"+parametro+".csv")

