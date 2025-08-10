DB_FILE="/mnt/sharedlocal/home/finance/finance.db"
sqlite3 "DB_FILE" <<EOF
.read /mnt/sharedlocal/home/finance/expenses.sql
SELECT * FROM expenses
.show
EOF
