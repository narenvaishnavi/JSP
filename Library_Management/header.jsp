<%-- 
    Document   : header
    Author     : Naren
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%-- title of the Page--%>
        <title>J. Murrey Atkins Library</title>
        <%-- importing CSS stylesheet --%>
        <link rel="stylesheet" href="styles/main.css">
        <script src="scripts/script.js" type="text/javascript"></script>
    </head>
    <body>
        <%-- Code to specify Header section of the page--%>
        <div id="header">
            <nav id="header_menu">
                <ul  class="left" >
                    <li>J. Murrey Atkins Library</li>
                </ul>
                <ul class="right">
                    <c:if test="${sessionScope.theUser == null && sessionScope.theAdmin == null }">
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="login.jsp">Login</a></li>
                       
                        </c:if>
                        <c:if test="${sessionScope.theAdmin.type == 'admin'}">
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="UserController?action=about">About Us</a></li>
                        <li>${sessionScope.theAdmin.name} </li>
                        <li><a href="UserController?action=logout">(Logout)</a></li>
                        
                        </c:if>
                        <c:if test="${sessionScope.theUser.name != null}">
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="UserController?action=about">About Us</a></li>
                        <li>${sessionScope.theUser.name} </li>
                        <li><a href="UserController?action=logout">(Logout)</a></li>
                       
                        </c:if>
                </ul>

            </nav>
        </div>

