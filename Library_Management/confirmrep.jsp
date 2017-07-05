<%-- 
    Document   : Confirmation
    Author     : Naren Vaishnavi
--%>
<%-- Include tag is used to import header page --%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@ include file="header.jsp" %>
<%-- Code to go back to Main page  --%>
<br>
<a href="StudyController?action=return" id="back_to_page">&laquo;Back to the Main Page</a>
<%-- Section tag is used to display Question Reported  --%>
<section id="confirmc">
    <h3>Returned By ${requestScope.study.creatorEmail} Dated <%
                    Date dNow = new Date( );
                    SimpleDateFormat ft = 
                    new SimpleDateFormat ("MM/dd/YYYY");
                    out.print( "<span align=\"center\">" + ft.format(dNow)+ "</span>");
                 %>
    </h3>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>