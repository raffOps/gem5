import re
import os
import json


for file_name in os.listdir():
    if file_name.startswith("stats") and file_name.endswith(".txt"):
        with open(file_name) as file:
            linhas = file.readlines()
            stats = dict([re.findall("([^ ]*) *([0-9]*[.]?[0-9]*).*#",linha)[0] for linha in linhas[2:-2]])
        with open(file_name.replace("txt","json"), "w") as file:
            json.dump(stats, file)







