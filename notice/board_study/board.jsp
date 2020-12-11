<%@ page contentType="text/html;charset=utf-8"%>
<%@ import="db.DBManager"%>
<%@ import="java.sql.PreparedStatement"%>
<%@ import="java.sql.Connection"%>
<%@ import="java.sql.ResultSet"%>
<%
	Connection con=db.getConnection();
	PreparedStatement pstmt=null;
	Result rs=null;

	String sql="select * from notice";
	pstmt=con.prepareStatement(sql);
	rs=pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	"button".on("click",function(){
		location.href="/board_study/regist.jsp";
	});
});
</script>
</head>
<body>
<table>
  <tr>
    <th>No</th>
    <th>제목</th>
    <th>작성자</th>
	<th>등록일</th>
	<th>조회수</th>
  </tr>
  	<%while(rs.next){%>
  <tr>
    <td>
		<a href="/board_study/detail.jsp?notice_id=<%=rs.getInt("notice_id")%>"><%=rs.getString("title")%></a>
	</td>
    <td><%=rs.getString("author")%></td>
    <td><%=rs.getString("regdate")%></td>
	<td><%=rs.getInt("hit")%></td>
	<%}%>
  </tr colspan="5">
	<td>
		<button>등록</button>
	</td>
  </tr>
  <tr>
  	<td>
		<%@ page include file="/inc/footer.jsp"%>
	</td>
  </tr>
</table>

</body>
</html>