l = " CREATE TABLE `s_1` ("
if l.strip().startswith('CREATE TABLE') and l.index("(") > 0:
    # st = l.split("CREATE TABLE")[1].split("(")[0]
    # print(st)
    # st = "`999`"
    # ss = st.strip("`")
    ss = l.split("`")[1].split("`")[0]
    # print(ss)


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

if __name__ == '__main__':
    arr = [0] * 5
    line = "`id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,\r"
    # print(proc_line(line))

    line = "`coner_tel` varchar(20) COMMENT '联系人电话', "
    # print(proc_line(line))

    recs = [
        [1, '11', 'aa'],
        [1, '22', 'bb'],
        [1, '33', 'cc']
    ]
    # for id, f, f_name in recs:
        # print('id: %d, f: %s, f_name: s%'.format(id, f, f_name))
        # print(id)
        # print(f)
        # print(f_name)

    ss = 'PRIMARY KEY (`id`)'        
    print('PRIMARY KEY' in ss) 