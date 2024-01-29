#!/bin/bash

/opt/alt/python311/bin/python3.11 -m venv venv

$(pwd)/venv/bin/pip install supervisor
echo "$(pwd)" > path.txt
