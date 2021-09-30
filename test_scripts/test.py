#!/usr/bin/python3

import re

print("hello")
files_missing_ = []

with open('files_missing.txt', 'rt') as file_in:
    for line in file_in:
        files_missing_.append(line)


files_missing = [x.replace('\n', '') for x in files_missing_]
files_missing.sort(key=lambda f: int(re.sub('\D', '', f)))

print(files_missing[175])


