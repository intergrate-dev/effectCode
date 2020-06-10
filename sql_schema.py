
class FieldDef:
    field = ""
    define = ""

    def __init__(self, field, define):
        self.field = field
        self.define = define

class SqlDef:
    tableName = ""
    schema = []

    def __init__(self, tableName, schema):
        self.tableName = tableName
        self.schema = schema

fd1 = FieldDef("f1", "name1")
fd2 = FieldDef("f2", "name2")

arr = [fd1, fd2]
o1 = SqlDef("t1", arr)

print(o1.schema[0].define)

