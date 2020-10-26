import json
import os

fd={}
data_dir = './forsql/'
data_json = data_dir + 'target.sql'
out_sql = data_dir + 'table.txt'
data = {}
arr = [0] * 5


def load_data(file):
    # pk_def =  '`' + data['pkField'] + '` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,\r' 
    pk_def = ''
    list_data = []
    NO = 1
    # list_data.append(pk_def)
    for l in open(file, 'r', encoding='utf-8'):
        if l.strip().startswith('CREATE TABLE') and l.index("(") > 0:
            data["tableName"] = l.split("`")[1].split("`")[0]
        # elif l.find("PRIMARY KEY") > 0:
        # elif l.isspace():
        elif l.find("ENGINE=") > 0:
            # TODO table's comment
            create_table(data, list_data) 
            list_data = []
            NO = 1
        elif l.startswith("`") and l.find(",") > 0:
            arr = proc_line(l)        
            list_data.append(str(NO) + "\t" + arr[0]+ "\t"  + arr[1]+ "\t"  + arr[2]+ "\t"  + arr[3]+ "\t"  + arr[4] +"\t" + "\r") 
            NO = NO + 1
    # return list_data
           
def proc_line(line):
    arr[0] = extr_midd(line.split(' ')[0], "`")
    arr[1] = " "
    if line.find("COMMENT") > 0:
        arr[1] = extr_midd(line.split("COMMENT")[1], "'")
    arr[2] = line.split(" ")[1]
    arr[3] = "否"
    if line.find("NOT NULL") > 0:
        arr[3] = "是"
    arr[4] = " "
    return arr

def extr_midd(str, flag):
    return str.split(flag)[1].split(flag)[0]

def write_table(file, head, content):
      file.write(head)
      file.write(content)


def create_table(data, inner):
    tableName = data["tableName"]
    # pk_field = data["pkField"]
    head = "表名：" + tableName + "\n"
    tab_title = "序号\t 字段\t 名称\t 数据类型\t 是否必填\t 注释\n"

    create_line = tab_title + ''.join(inner) + '\r\r\n'
    # print("table: {}, create sql: {}".format(tableName, create_line))
    write_table(out, head, create_line)

if __name__ == '__main__':
    with open(out_sql, 'w+', encoding='utf-8') as out:
        load_data(data_json)
    print("complete")        


