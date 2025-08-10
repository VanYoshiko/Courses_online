
#!/bin/sh

# Open PDF help files using internalbrowser for A-shell !
clear
pdf_list=$(find /mnt/sharedlocal/homesharedlocal/home/.local/share/images/pdf -name *.pdf  ) | awk -F "/" '{print $14,"\t" $15}' | sort | awk '{print NR "\t" $0}'

echo "===== PDF LIST ====="


echo "Enter number:"
read num

[ $num -ge 1 ] && [ $num -le $count ] || {
	echo "Invalid!" >&2
	exit 1
}

i=1
for pdf in $pdf_list; do
	[ "$i" -eq "$num" ] && {
		internalbrowser $pdf
			break
		}
		i=$((i + 1))
	done
	echo "internalbrowser $pdf"

