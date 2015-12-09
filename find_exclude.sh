#!/bin/bash

PATH1=`pwd`
find $PATH1  \( -iname \*.zip -o -iname \*.sql \) -not -path "*naina/*" > output.txt


