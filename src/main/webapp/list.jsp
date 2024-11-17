<%@ page import="com.example.jsp_crud_db.bean.BoardVO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="top.jsp" %>
<%
    com.example.jsp_crud_db.dao.BoardDAO dao = new com.example.jsp_crud_db.dao.BoardDAO();
    List<BoardVO> posts = dao.getBoardList();
%>
<head>
    <title>Post List</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<h1>Post List</h1>
<a href="write.jsp">Write a New Post</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Reg Date</th>
        <th>Actions</th>
    </tr>
    <% for (com.example.jsp_crud_db.bean.BoardVO post : posts) { %>
    <tr>
        <td><%= post.getId() %></td>
        <td><%= post.getTitle() %></td>
        <td><%= post.getWriter() %></td>
        <td><%= post.getRegdate() %></td>
        <td>
            <a href="view.jsp?seq=<%= post.getId() %>">View</a> |
            <a href="edit.jsp?seq=<%= post.getId() %>">Edit</a> |
            <a href="delete.jsp?seq=<%= post.getId() %>">Delete</a>
        </td>
    </tr>
    <% } %>
</table>
<%@ include file="bottom.jsp" %>