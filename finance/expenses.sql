.mode csv
.headers ON
CREATE TABLE IF NOT EXISTS expenses (
        logs_id INTEGER 'PRIMARY KEY AUTOINCREMENT,'
        date TEXT,
	category TEXT,
	description TEXT,
	amount INTEGER,
	item TEXT,
	client TEXT
);



