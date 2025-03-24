#!/bin/sh

alias antlr4='java -Xmx500M -cp "../antlr-4.13.0-complete.jar" org.antlr.v4.Tool'
antlr4 -Dlanguage=Go -no-visitor -package postgresqlparser *.g4
