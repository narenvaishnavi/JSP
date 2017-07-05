<%-- 
    Document   : main
    Author     : Naren Vaishnavi
--%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display items in List --%>
<nav id="menu">
    <ul>
        <li>Coins (<span class="count">${sessionScope.theUser.numCoins}</span>) </li>
        <li>Participants (<span class="count">${sessionScope.theUser.numPostedStudies}</span>) </li>
        <li>Participation (<span class="count">${sessionScope.theUser.numParticipation}</span>) </li>
        <li><br></li>
        <li><a href="UserController?action=main">Home</a></li>
        <li><a href="StudyController?action=participate">Participate</a></li>
        <li><a href="StudyController?action=studies">My Studies</a></li>
        <li><a href="recommend.jsp">Recommend</a></li>
        <li><a href="contact.jsp">Contact</a></li>
    </ul>
</nav>
<%-- Code to Display Question--%>
<section class="question_section">
    <h3><span id="studies">Question</span></h3>
    <%-- Img tag to display image--%>
    <img src="${requestScope.study.getImageURL(study.studentID)}" id="question_page_image" alt="Tree"/>

    <%--Code to rating the Question --%>
    <form action="StudyController?action=answer&AMP;studentID=${study.studentID}" method="Post">
        <div id="question_select"><p>${requestScope.study.question}</p>
            <input type="radio" name="ans" value="3">3<br>
            <input type="radio" name="ans" value="4">4<br>
            <input type="radio" name="ans" value="5">5<br>

        </div>
        <%-- Code to submit the Rating  --%>
        <div id="question_submit_div">
            <button type="submit" id="question_submit">Submit</button>   
        </div>
    </form>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>