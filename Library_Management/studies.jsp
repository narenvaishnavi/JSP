<%-- 
    Document   : studies
    Author     : Naren vaishnavi
--%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display Page Name --%>
<h3 id="page_name">My Studies</h3>
<%-- Code to add new study   --%>
<h3 id="add_new_study"><a href="newstudy.jsp" >Book New Room</a></h3>

<%-- Code to go Back to the Main Page  --%>
<a href="UserController?action=main" id="back_to_page">&laquo; &nbsp;Home</a>
<%-- Section to display studies details --%> 
<%-- Clicking on Start, Stop to Participate in that study and  Edit button to display edit page and edit study details in it--%>
<section id="studies_section">


    <table id="my_studies_table" >
        <tr>
            <th>NinerNET ID:</th>
            <th>Study Room</th>		
            <th>Department</th>
            <th>Action</th>
        </tr>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:forEach var="study" items="${study}">
            <tr>
                <td>${study.studentID}</td>
                <td>${study.studyRoom}</td>
                <td>${study.journal}</td>
                <td><form action="StudyController?action=edit&AMP;studentID=${study.studentID}" method="post"><input type="submit" class="participate_button" value="Edit" /></form></td>                                                
            </tr>
        </c:forEach>
    </table>

</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>