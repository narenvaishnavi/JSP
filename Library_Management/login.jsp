<%-- 
    Document   : login
    Author     : Naren Vaishnavi
--%>
<%-- Include tag is used to import header page --%>
<%@include file="header.jsp" %>
<%-- Section to input login details --%>

<section id="login_form">
    <%-- Code to create login form--%>
    
    <img class="book" src="images/books-300x281.jpg" alt="Home" />
    <form action="UserController?action=login" method="post" class="loginAdmin_form">
        <input type="hidden" name="action" value="login">
        <label >NinerNET ID: *</label>
        <input typeNinerNET ID: ="email" name="email" required/> <br><br>
        <label >Password *</label>
        <input type="password" name="password" required/><br>
        <label>&nbsp;</label>
        <input type="submit" value="Log On" id="login_button">
        <h1 align="center">${requestScope.msg}</h1>
        </form>
   

</section>
    <%-- Include tag is used to import footer page --%>
<%@include file="footer.jsp" %>