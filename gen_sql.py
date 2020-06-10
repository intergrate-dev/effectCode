import json
import os

data_dir = './forsql/'
data_json = data_dir + 'data.json'
out_sql = data_dir + 'table.sql'

def load_data(file):
    with open(file, 'r', encoding='utf-8') as load_f:
        tale_list = json.load(load_f)
        # print(table_list[0]["schema"][0]["define"])
    return tale_list

def write_sql(file, content):
      file.write(content)

def create_table(data):
    tableName = data["tableName"]
    pk_field = data["pkField"]
    sch_list = data["schema"]
    # print("tableName: ", tableName)
    # DROP TABLE IF EXISTS `qrtz_job_details`;
    # CREATE TABLE `qrtz_job_details` (
    head = "DROP TABLE IF EXISTS `" + tableName + "`;\n" + "CREATE TABLE `" + tableName + "` (\n"

    inner = [" "]
    split_str = "|"
    for sch in sch_list:
        field = sch["field"]
        # print("field: ", field)
        if split_str in sch["define"]:
            split_list = sch["define"].split(split_str)
            # `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
            # `description` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '描述',
            s = ""
            s += "`" + field + "` " + split_list[1] + " "
            if "y" == split_list[2]:
                s += "NOT NULL "
            s += "COMMENT '" + split_list[0] + split_list[3] + "',\n"
            inner.append(s)
    inner.append("PRIMARY KEY (`")
    inner.append(pk_field)
    inner.append("`)\n")
    tail = ") ENGINE=InnoDB DEFAULT CHARSET=utf8;"

    create_sql = head + ''.join(inner) + tail + '\r\r\n'
    # print("table: {}, create sql: {}".format(tableName, create_sql))
    write_sql(out, create_sql)

if __name__ == '__main__':
    tale_list = load_data(data_json)
    # 删除sql文件
    if os.path.exists(out_sql):
        print("remove out_sql")
        os.remove(out_sql)

    with open(out_sql, 'w+', encoding='utf-8') as out:        
        for table in tale_list:
            create_table(table)    

    print("gen sql complete")
