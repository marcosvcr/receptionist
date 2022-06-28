#!/usr/bin/env python3
import os
script_dir = os.path.dirname(__file__)
parent_path = os.path.abspath(os.path.join(script_dir, os.pardir))
print(parent_path)
#print(parent_path)

os.system('/bin/bash  --rcfile ' + parent_path +'venv/bin/activate')