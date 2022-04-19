#!/bin/bash
wc -c < $1
wc -l < $1
wc -w < $1
awk '$0="Line No:<"NR"> - Count of Words:["NF"]"' < $1
awk '{for(i = 1; i <= NF; i++) {a[$i]++}} END {for(k in a) if(a[k] > 1) {print "Word :" "<" k ">","- Count of repetition :" "[" a[k] "]"}}' $1