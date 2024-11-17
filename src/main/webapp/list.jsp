<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    com.example.jsp_crud_db.dao.BoardDAO dao = new com.example.jsp_crud_db.dao.BoardDAO();
%>
<h1>Post List</h1>
<a href="write.jsp">Write a New Post</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>writer</th>
        <th>Reg Date</th>
    </tr>
</table>