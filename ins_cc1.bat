# ins_cc1.bat
#
# Этот сценарий выполняется ежедневно. Он вводмт записи в базу данных СС1
# регистрируя использование пространства базами данных перечисленных в файле inserts.sql
# обращение к которому осуществляется из указанного файла. Для новых БД должны быть
# созданы новые связи а в сценарии должны быть заданы новые поля
#

set ORACLE_SID=cc1
set ORACLE_HOME=

cd %ORACLE_HOME%\bin
sqlplus << EOF
connect system /manager as SYSDBA
start inserts
exit
EOF
