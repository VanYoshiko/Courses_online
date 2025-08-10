#!/bin/sh

echo "==============================================="
echo " VIEW DOCS "
echo "==============================================="
find .local/share/images/ -name *.pdf  | awk -F "/" '{print $5"\t" $6}'| awk '{print NR "\t" $0}'
echo "==============================================="
echo "Select number of doc to view"
read number
pdf_path=$(find .local/share/images/ -name *.pdf  | awk -F "/" '{print $5"\t" $6}'| awk '{print NR "\t" $0}' | sed -n "${number}p")

internalbrowser ".local/share/images/pdf/$pdf_path"
