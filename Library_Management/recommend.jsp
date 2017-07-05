<%-- 
    Document   : Mail
    Author     : Naren Vaishnavi
--%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display Page Name --%>

<%-- Code to display Page Name --%>
<a href="UserController?action=main" id="back_to_page">&laquo;Back to the Main Page</a>
<%-- Section to input Contact details and Send Message --%>
<section id="recommend_form">
    <form action="UserController?action=send" method="post">
        <p>The mail functionality takes current "from Address" email from current login in the session </p>
        <p>"To Address" is hard coded along with the subject</p>
        <label>To *</label>
        <input type="email" name="to" value=<%=session.getAttribute("to")%> required /><br><br>
     
        <button type="submit"  id="submit_button">Mail</button>

    </form>
</section>

<%@ include file="footer.jsp" %>