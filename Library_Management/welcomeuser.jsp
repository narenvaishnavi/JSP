<%-- 
    Document   : welcomeuser
    Created on : 28 April, 2017, 4:39:45 PM
    Author     : Naren Vaishnavi
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>     
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome <%=session.getAttribute("name")%></title>
<link rel="stylesheet" href="styles/welcomeuserstyling.css">
<jsp:include page="/header.jsp" /> 
</head>
<body>
        <a href="UserController?action=main" id="back_to_page">&laquo;Back to the Main Page</a>
       <div class="imgwrapper">
           <h4> From: <%=session.getAttribute("from")%> </h4>
           <h4> To: <%=session.getAttribute("to")%> </h4>
           <h4> subject: <%=session.getAttribute("subject")%> </h4>
           <h4> <%=session.getAttribute("body")%> </h4>  
       </div>
     </body>
<jsp:include page="/footer.jsp" /> 
</html>
