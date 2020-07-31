#进阶2 条件查询
/*select 查询列表  from 表名 where 条件； 
1.按条件表达式筛选
    >   <   !=    <>   >=   <+  
2.按逻辑表达式筛选
   &&    ||  ！  
   and or not 
 3. 模糊查询
    like 
    between and
    in 
    is null
 */

#1.表达式
 #查工资大于12000
 SELECT * FROM employees WHERE salary>12000;
 #查部门编号不为90
 SELECT 
             last_name,
             department_id
   FROM 
             employees
    WHERE 
    department_id <>90;
    
    #2.逻辑表达式
    # 查询工资10000-20000员工名字 工资 奖金
    SELECT 
               last_name,
               salary,
               commission_pct
      FROM 
              employees
        WHERE 
               salary>10000 AND salary <20000;
       
      #3.模糊查询
       /* like 
                一般和通配符一起使用  
                 % 任意多个字符
                 —任意单个字符
           between  a  and b
                 相当于大于等于和小于等于
                 注意不要调换临界值顺序
            in   
                   用于判断某字段值是否属于in列表中的某一项
                   提高了简洁度
                   注意（）内的值类型统一或兼容
             is null
                   不用=null  !=null
                   用 is null 或 is not null
           */
          SELECT *
          FROM employees
          WHERE last_name LIKE '%a%';
          
          SELECT *
          FROM employees
          WHERE employee_id BETWEEN 100 AND 120;
          
          SELECT   last_name,job_id
          FROM employees
          WHERE job_id IN ('IT_PROG','AD_VP');
          
          
#安全等于   <=>      
  /*正常  = 不能判断null,只能判断数值 ，但 安全等于可以判断null 和数值  
  缺点  有点像大于等于这类的，所以用处较少*/
          
                    
           