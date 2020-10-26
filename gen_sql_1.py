import json
import os

fd={}
data_dir = './forsql/'
data_json = data_dir + 'source.txt'
out_sql = data_dir + 'target.sql'
data = {}


def load_data(file):
    # pk_def =  '`' + data['pkField'] + '` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,\r' 
    pk_def = ''
    list_data = []
    # list_data.append(pk_def)
    for l in open(file, 'r', encoding='utf-8'):
        if l.startswith('['):
            # TODO trime
            data = {'tableName': l.split(', ')[0][1:], 'pkField': l.split(', ')[1][:-2]}
            print(data['tableName'] + ', ' + data['pkField'])
            pk_def =   '`' + data['pkField'] + '` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,\r' 
            list_data.append(pk_def)
        elif l.isspace():
            create_table(data, list_data) 
            list_data = []
        else:
            arr = proc(l)        
            list_data.append('`' + arr[0] + '` ' + arr[2][:-1] + " COMMENT '" + arr[1] + "', \r") 
    # return list_data
           
def proc(line):
    arr = line.split('\t')
    arr[0] = arr[0].lower()
    if len(arr) == 1:
        arr = ''.join(arr).split(' ')
        # TODO filter
        arr[2] = arr[len(arr) - 1]
    elif len(arr) == 2:
        if ' ' in arr[1]:
            arr[1] = arr[1].split(' ')[0]
            arr[2] = arr[1].split(' ')[1]
    return arr

def write_sql(file, content):
      file.write(content)

def create_table(data, inner):
    tableName = data["tableName"]
    pk_field = data["pkField"]
    head = "DROP TABLE IF EXISTS `" + tableName + "`;\n CREATE TABLE `" + tableName + "` (\n"

    inner.append("PRIMARY KEY (`")
    inner.append(pk_field)
    inner.append("`)\n")
    tail = ") ENGINE=InnoDB DEFAULT CHARSET=utf8;"

    create_sql = head + ''.join(inner) + tail + '\r\r\n'
    # print("table: {}, create sql: {}".format(tableName, create_sql))
    write_sql(out, create_sql)

if __name__ == '__main__':
    with open(out_sql, 'w+', encoding='utf-8') as out:
        load_data(data_json)


