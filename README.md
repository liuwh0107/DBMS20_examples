# DBMS20_examples

## Convert database from latin1 to utf8

```sql
mysql> ALTER DATABASE _DB\_name_ CHARACTER SET utf8 COLLATE utf8\_general\_ci;
```
go back to terminal
```sql
$ sudo mysqldump --add-drop-table _DB\_name_ | sed -e 's/CHARSET\=latin1/CHARSET\=utf8\ COLLATE\=utf8_general_ci/g' | iconv -f latin1 -t utf8 | sudo mysql _DB\_name_
```
