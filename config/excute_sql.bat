::@echo off 表示关闭回显，就是说不会把输出显示在屏幕上，就连echo off这条命令本身也不显示
@echo off
:: 指定MySQL安装路径
cd C:\Program Files\MySQL\MySQL Server 5.7
:: 数据库名称
@set db=smartdb
:: 用户名
@set userName=root
:: 密码
@set password=breakingbad
:: 要执行的sql脚本
@set sqlpath=D:\IDEA_Repo\chapter2\config\sql\create_customer.sql
:: 连接MySQL数据库并执行sql脚本 -f 脚本执行过程中，出现错误继续执行 --default-character-set指定导入数据的编码（与数据库编码相同）
mysql -f -u %userName% --password=%password% %db% < %sqlpath% --default-character-set=utf8
:: 执行完成后，不立刻关闭dos窗口
pause