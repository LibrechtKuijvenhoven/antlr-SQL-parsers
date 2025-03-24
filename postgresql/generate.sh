#!/bin/sh

alias antlr4='java -Xmx500M -cp "../antlr-4.13.0-complete.jar" org.antlr.v4.Tool'
echo "[info] Tranforming grammar for go"
python3 ./transformGrammar.py
echo "[info] Generating Go file from grammar files"
antlr4 -Dlanguage=Go -no-visitor  *.g4
