<%-- 
    Document   : participate
    Author     : Naren Vaishnavi
--%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display items in List --%>
<nav id="menu">
    <ul>
        <li><a href="UserController?action=main">Home</a></li>
        <li><a href="StudyController?action=return" class="active">Engineering Journals</a></li>
        <li><a href="StudyController?action=room">Book a Room</a></li>
        <li><a href="UserController?action=email">Send a Mail</a></li>
        
    </ul>

</nav>
<%-- Section to display studies and participate in that study--%>
<section class="participate">
    <table id="studies_table" >
        <%--Column Names --%>
        <tr>
            		
            <th>NinerNET ID:</th>
            <th>Engineering Journal</th>
            <th>Research Area</th>
            <th>Return</th>
        </tr>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:forEach var="study" items="${study}">
            <tr>
                <td>${study.studentID}</td>
                <td>${study.journal}</td>
                <td>${study.studyName}</td>
                <td><form action="StudyController?action=return_Journal&AMP;studentID=${study.studentID}&AMP;journal=${study.studyName}" method="post"><input type="submit" class="participate_button" value="Return"/></form></td>                                                
            </tr>
        </c:forEach>
    </table>

</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>