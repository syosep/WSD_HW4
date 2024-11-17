<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<h1>Add New Post</h1>
<form action="addpost.jsp" method="post">
    <table>
        <tr>
            <td>Title:</td>
            <td><input type="text" name="title"/></td>
        </tr>
        <tr>
            <td>Writer:</td>
            <td><input type="text" name="writer"/></td>
        </tr>
        <tr>
            <td>Content:</td>
            <td><textarea cols="50" rows="5" name="content"></textarea></td>
        </tr>
        <tr>
            <td><a href="posts.jsp">View All Records</a></td>
            <td><input type="submit" value="Add Post"/></td>
        </tr>
    </table>
</form>
<%@ include file="bottom.jsp" %>