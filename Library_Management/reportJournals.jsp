<%-- 
    Document   : Report
    Author     : Naren Vaishnavi
--%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<h3><span id="studies">Returned Journals</span></h3>
<%-- Code to go back to Main page  --%>
<br>
<%-- Code to Display Reported Questions--%>
<section class="participate">
    <a href="admin.jsp?user=Admin" id="back_to_page">&laquo;Back to Library Admin</a>
    <table class="journal">
        <%--Column Names --%>
        <tr>
            <th>Issue Date</th>
            <th>Journal</th>
            <th>Return Date</th>
            <th>Action</th>
            
        </tr>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:forEach var="study" items="${study}">
            <tr>
                <td>${study.dateCreated}</td>
                <td>${study.journal}</td>
                <td> <%
                    Date dNow = new Date( );
                    SimpleDateFormat ft = 
                    new SimpleDateFormat ("MM/dd/YYYY");
                    out.print( "<span align=\"center\">" + ft.format(dNow) + "</span>");
                 %>  </td>
                <td><form action="StudyController?action=approve&AMP;studentID=${study.studentID}" method="post" class="loginAdmin_form">
                    <input type="submit" class="participate_button" value="Approve" /></form>
            </tr>
        </c:forEach>
        
    </table>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>