# DBMS20_examples

## Convert database from latin1 to utf8

after create a database
```sql
mysql> ALTER DATABASE DB_name CHARACTER SET utf8 COLLATE utf8_general_ci;
```
go back to terminal
```sql
$ sudo mysqldump --add-drop-table _DB_name_ | sed -e 's/CHARSET\=latin1/CHARSET\=utf8\ COLLATE\=utf8_general_ci/g' | iconv -f latin1 -t utf8 | sudo mysql _DB_name_
```
drop tables and reconstruct them
