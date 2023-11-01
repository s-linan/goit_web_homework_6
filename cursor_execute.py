import psycopg2

# Підключення до бази даних
conn = psycopg2.connect(host="localhost", database="hw_6", user="postgres", password="mysecretpassword")
cur = conn.cursor()

# Відкриваємо файл SQL та виконуємо його
with open("sql_queries/query_1.sql", "r") as sql_file:
    sql = sql_file.read()
    cur.execute(sql)

# Отримуємо результати запиту
results = cur.fetchall()

# Виводимо результати на екран
for row in results:
    print(row)

# Зберігаємо зміни і закриваємо підключення
conn.commit()
cur.close()
conn.close()
