<%@ page contentType="text/html;charset=utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
</head>
<body>
	<!-- 1930~2020년도까지 출력 -->
	<%for(int i=2020;i>=1930;i--){%>
		<option><%=i%></option>			
	<%}%>

</body>
</html>