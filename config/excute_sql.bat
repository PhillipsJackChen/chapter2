::@echo off ��ʾ�رջ��ԣ�����˵����������ʾ����Ļ�ϣ�����echo off���������Ҳ����ʾ
@echo off
:: ָ��MySQL��װ·��
cd C:\Program Files\MySQL\MySQL Server 5.7
:: ���ݿ�����
@set db=smartdb
:: �û���
@set userName=root
:: ����
@set password=breakingbad
:: Ҫִ�е�sql�ű�
@set sqlpath=D:\IDEA_Repo\chapter2\config\sql\create_customer.sql
:: ����MySQL���ݿⲢִ��sql�ű� -f �ű�ִ�й����У����ִ������ִ�� --default-character-setָ���������ݵı��루�����ݿ������ͬ��
mysql -f -u %userName% --password=%password% %db% < %sqlpath% --default-character-set=utf8
:: ִ����ɺ󣬲����̹ر�dos����
pause