<%-- 
    Document   : EditRoom
    Author     : Naren Vaishnavi
--%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display Page Name --%>
<h3 id="page_name">Current Reservation</h3>
<%-- Code to go back to Main page  --%>
<a href="UserController?action=main" id="back_to_page">&laquo;&nbsp;Back to the Main Page</a>
<%-- Section to input study details --%>
<section id="newstudy_form">
    <form action="StudyController?action=update&AMP;studentID=${study.studentID}" method="post">
        <label>NinerNET ID: *</label>
        <input type="text" name="studentID" value="${requestScope.study.studentID}"required /><br>
        <label>Department *</label>
        <input type="text" name="journal" value="${requestScope.study.journal}" required/><br>
        <label>Study Room *</label>  
        <input type="text" name="studyRoom" value="${requestScope.study.studyRoom}" required/><br>
        <%-- Adding answers dropdown and answers text boxes dynamically--%>
        <label>Description *</label>  
        <textarea name="description"  required>${requestScope.study.description}</textarea><br>
        <button type="submit"  id="submit_button">Update</button>
    </form>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>