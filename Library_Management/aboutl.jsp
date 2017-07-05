<%-- 
    document   : aboutUs
    Author     : Naren Vaishnavi
--%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display items in List --%>
<nav id="menu">
    <ul>
         <li><a href="UserController?action=main" class="active">Home</a></li>
        <li><a href="StudyController?action=participate">Engineering Journals</a></li>
        <li><a href="StudyController?action=studies">Book a Room</a></li>
        <li><a href="UserController?action=email">Send a mail</a></li>      
    </ul>
</nav>
<%-- Section tag is used to write description  --%>
<section class="main">
     <h3>University of North Carolina at Charlotte</h3>
    <p>The Atkins Library Department of Special Collections and University Archives is responsible for the inventory and disposition of all artwork owned by or on long-term loan to UNC Charlotte. This collection encompasses thousands of works found throughout the grounds and buildings of both the main campus and Center City.</p>
    <p>Comprising pieces both ancient and modern, the University Art Collection includes paintings, woodcarvings, prints, ceramics, photographs, large steel and stone sculptures, and many textiles as well as a variety of mixed and modern media by both local and international artists. Among these items can be found works by such notable artists as Nicholas Roerich, Giovanni Battista Piranesi, as well as both Andrew and NC Wyeth. Works with particular UNC Charlotte connections include pieces by both Maud Gatewood and illustrator Gail Haley. (Left: detail of Roerich's The Last Path,1922).</p>
    
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>