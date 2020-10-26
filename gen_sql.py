import json

data_dir = './forsql/'
data_json = data_dir + 'data.json'
out_sql = data_dir + 'table.sql'

def load_data(file):
    with open(file, 'r', encoding='utf-8') as load_f:
        tale_list = json.load(load_f)
        # print(table_list[0]["schema"][0]["define"])
    return tale_list
    

# with open(out_sql, "w", encoding='utf-8') as dump_f:
#     json.dump(load_dict, dump_f)

def create_table(data):
    tableName = data["tableName"]
    pk_field = data["pkField"]
    sch_list = data["schema"]
    print("tableName: ", tableName)
    # DROP TABLE IF EXISTS `qrtz_job_details`;
    # CREATE TABLE `qrtz_job_details` (
    head = "DROP TABLE IF EXISTS `" + tableName + "`\r\n" + "CREATE TABLE `" + tableName + "` (\r\n"

    inner = []
    split_str = "|"
    for sch in sch_list:
        field = sch["field"]
        print("field: ", field)
        if split_str in sch["define"]:
            split_list = sch["define"].split(split_str)
            # `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
            # `description` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '描述',
            inner.append("`").append(field).append("`").append(" ")
            # inner.append(split_list[1]).append(" CHARACTER SET utf8mb4 ")
            inner.append(split_list[1]).append(" ")
            if "y" == split_list[2]:
                inner.append("NOT NULL ")
            inner.append("COMMENT '").append(split_list[0]).append(split_list[3]).append("'")
            inner.append(",\r\n")
            # if "varchar" not in split_list[1]:
                # split_list[0]
            # for sp in split_list:
                # print("sp: ", sp.strip())

    inner.append("PRIMARY KEY (`").append("`)\r\n")
    tail = ") ENGINE=InnoDB DEFAULT CHARSET=utf8;"

    create_sql = head + ''.join(inner) + tail
    print("table: {}, create sql: {} \r\n").format(tableName, create_sql)

if __name__ == '__main__':
    tale_list = load_data(data_json)
    for table in tale_list:
        create_table(table)    