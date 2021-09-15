<%-- 
    Document   : response
    Created on : Sep 6, 2021, 6:00:55 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="clock" class="java.util.Date"/>
        <c:choose>
            <c:when test="${clock.hours<12}">
                Buenos días
            </c:when>
            <c:when test="${clock.hours>12 && clock.hours<18}">
                Buenas tardes
            </c:when>
            <c:when test="${ clock.hours>18&& clock.hours<24}">
                Buenas noches
            </c:when>
        </c:choose>
        <jsp:useBean id="myBean" scope="session" class="co.edu.unipiloto.userHandler" />
        <jsp:setProperty name="myBean" property="name"/>
        <jsp:getProperty name="myBean" property="name" />
        <jsp:useBean id="ageBean" scope="session" class="co.edu.unipiloto.userHandler" />
        <jsp:setProperty name="ageBean" property="date" />
        tu edad es : 
        <jsp:getProperty name="ageBean" property="date" />




    </body>
</html>
