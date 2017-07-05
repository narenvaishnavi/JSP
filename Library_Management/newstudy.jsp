<%-- 
    Document   : New Room
    Author     : Naren Vaishnavi
--%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display Page Name --%>
<h3 id="page_name">Adding a study</h3>
<%-- Code to go Back to the Main Page  --%>
<a href="UserController?action=main" id="back_to_page">&laquo;Back to the Main Page</a>
<%-- Section to create new study --%>
<section id="newstudy_form">
    <form action="StudyController?action=add" method="post">
        <label>NinerNET ID: *</label>
        <input type="text" name="studentID" required /><br>
        <label>Study Room *</label>  
        <input type="text" name="studyRoom" required /><br>
        <label>Study Name *</label>
        <input type="text" name="study_name" required /><br>
         <label>Department *</label>
        <input type="text" name="journal" required/><br>
        <label>Description *</label>  
        <textarea name="description" required></textarea><br>
        <button type="submit"  id="submit_button">Submit</button>
    </form>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>