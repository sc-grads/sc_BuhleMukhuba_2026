import json
from typing import TextIO

file_path: str = 'data.json'

with open(file_path, 'r') as f:
    data: dict = json.load(f)
    print(data)

    