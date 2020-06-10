# effectCode

activate dev
python gen_sql.py

```python

db = pymysql.connect(host='localhost', user='root', password='root111', port=3306, db='temp_my')
cursor = db.cursor()
#
table = 'daili_company'
keys = ','.join(data.keys())
values = ','.join(['%s'] * len(data))
sql = 'INSERT INTO {table}({keys}) VALUES ({values})'.format(table=table,keys=keys,values=values)
try:
    if cursor.execute(sql,tuple(a.values())):
        print('成功')
        db.commit()
except:
    print('失败')
    db.rollback()

```