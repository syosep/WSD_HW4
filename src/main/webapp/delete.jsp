<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="top.jsp" %>
<%
    com.example.jsp_crud_db.dao.BoardDAO dao = new com.example.jsp_crud_db.dao.BoardDAO();
    int seq = Integer.parseInt(request.getParameter("seq"));

    int result = dao.deleteBoard(seq);
    if (result > 0) {
        System.out.println("<h3>Post deleted!</h3>");
    } else {
        System.out.println("<h3>Post not deleted!</h3>");
    }
%>
<a href="list.jsp">Back to List</a>
<%@ include file="bottom.jsp" %>