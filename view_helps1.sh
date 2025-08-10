#!/bin/sh

clear
echo "===== PDF LIST ====="
count=1
for pdf in .local/share/images/pdf/*.pdf; do
	echo "$count. $(basename "$pdf")"
	count=$((count + 1))
done

echo "Enter number:"
read num

# Validate with POSIX [ ]
[ "$num" -ge 1 ] && [ "$num" -lt "$count" ] || {
echo "Invalid!" >&2
exit 1
}

# Open PDF
i=1
for pdf in .local/share/images/pdf/*.pdf; do
[ "$i" -eq "$num" ] && {
 internalbrowser "$pdf"
								  break
							  }
							  i=$((i + 1))
						  done
