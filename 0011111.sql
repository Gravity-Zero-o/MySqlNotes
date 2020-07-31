#进阶1：基础查询
/*
语法
select 查询列表
from 表名
*/

SELECT  last_name FROM employees;#查单个
SELECT last_name,salary,email FROM employees;#查多个，还可以用鼠标双击
SELECT * FROM employees;  #查全部（不过是按照顺序

SELECT 100;  #查询数字
SELECT 'john'; #查询字符
SELECT 100*6; #查询表达式
SELECT  VERSION(); #查询函数返回值

#别名
/*
1.便于理解
2.如果要查询的字段有重复，便于区分
*/
#方式一（as）
SELECT 100*65 AS 结果;
SELECT last_name AS 姓 ,first_name AS 名 FROM employees;
#方式二(空格)
 SELECT last_name 姓 ,first_name 名1 FROM employees;
 #如果别名里有特殊符号，把别名加上双引号
 
 #去重
 SELECT DISTINCT department_id FROM employees;
 
 # +号作用  连接
 /*java中，+ 作为运算符和连接符
 在mysql中，只是运算符，100+90是加法
                                        而’12‘+50字符加数值，转换成数值再加法，
                                         ’john'+50转换失败，则转化为0+50，
                                         只要有一方为null，结果一定为null
 */
 
 #函数 CONCAT 用于拼接
 SELECT CONCAT('a','b') AS 结果;
 