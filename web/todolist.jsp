<%-- 
    Document   : todolist
    Created on : 09.11.2015, 23:13:49
    Author     : UKO
--%>

<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
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

        <input type="text" name="item">
        <input type="submit" value="Hinzufügen">
        <!--
        <!--%
            List<String> items = (List<String>) session.getAttribute("items");
            if (items.isEmpty()) {
        %>-->
        <c:choose>
            <c:when test="${empty items}">
                <h2>keine Einträge</h2>
            </c:when>
            <c:otherwise>
                <!--% } else {%-->
                <h2>Auf der Liste</h2>
                <table> 
                    <c:forEach items="items" var="item">
                        <tr>
                            <td>
                                ${item}
                                <!--%= item%-->
                            </td>
                        </tr>
                    </c:forEach>
                    <!--% for (String item : items) {%-->

                    <% }%>
                </table>
            </c:otherwise>
        </c:choose>
        <!--%}%-->

    </body>
</html>
