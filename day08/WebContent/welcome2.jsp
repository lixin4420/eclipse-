<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL表达式简单判断</title>
</head>
<body>
EL表达式简单判断　　
> gt <br>
< lt <br>
== eq <br>
>= ge <br>
<= le <br>
!= ne <br>
&& and <br>
|| or <br>
! not <br>
空有""，null 集合为null，集合中的元素个数为0 很多种空，用下面这个判断<br>
empty 变量 判断是否为空 ，如果是空，返回true，如果不是空，返回为false
<br>
<h1>判断结果</h1>
num1>num2 结果 ${num1>num2 } 结果${num1 gt num2 }
<br>
num1 < num2 结果${num1<num2 } 结果${num1 lt num2 }
<br>
num1 == num2 结果${num1 == num2 }结果${num1 eq num2 }
<br>
num1 >= num2 结果${num1 >= num2 } 结果${num1 ge num2 }	
<br>

flag1 && flag2 结果${flag1 && flag2 } 结果${flag1 and flag2 }
<br>
flag1 || flag2 结果${flag1 || flag2 } 结果${flag2 or flag2 }
<br>
flag1取反，结果${!flag1 } 结果${not flag1 }
<br>
empty x 结果${empty x }
<br>
empty arr 结果${empty applicationScope.arr }
<br>
empty str1 结果${empty str1 }
<br>
empty str2 结果${empty str2 }
<br>
empty list 结果${empty list }
<br>


</body>
</html>