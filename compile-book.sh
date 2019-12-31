#!/bin/bash
current_path=`pwd`
cd ansi-common-lisp-code-book
python3 gen.py
cd ${current_path}
open ansi-common-lisp-practice.pdf
