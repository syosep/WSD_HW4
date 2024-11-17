<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="top.jsp" %>
<%
    com.example.jsp_crud_db.dao.BoardDAO dao = new com.example.jsp_crud_db.dao.BoardDAO();
    com.example.jsp_crud_db.bean.BoardVO post = new com.example.jsp_crud_db.bean.BoardVO();

    post.setId(Integer.parseInt(request.getParameter("seq")));
    post.setTitle(request.getParameter("title"));
    post.setWriter(request.getParameter("writer"));
    post.setContent(request.getParameter("content"));

    int result = dao.updateBoard(post);
    if (result > 0) {
        System.out.println("<h3>Post updated!</h3>");
    } else {
        System.out.println("<h3>Post not updated!</h3>");
    }
%>
<a href="list.jsp">Back to List</a>
<%@ include file="bottom.jsp" %>