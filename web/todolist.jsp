<%-- 
    Document   : todolist
    Created on : 09.11.2015, 23:13:49
    Author     : UKO
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ToDo-Liste</title>
    </head>
    <body>
        <h1>ToDo-Liste</h1>
        <form method="post" action="todo">
            <input type="text" name="item">
            <input type="submit" value="Hinzufügen">
            <%
                List<String> items = (List<String>) session.getAttribute("items");
                if (items.isEmpty()) {
            %>
            <h2>keine Einträge</h2>
            <% } else {%>
            <h2>Auf der Liste</h2>
            <table>
                <% for (String item : items) {%>
                <tr><td><%= item%></td></tr>
                <% }%>
            </table>
            <%}%>
        </form>
    </body>
</html>
