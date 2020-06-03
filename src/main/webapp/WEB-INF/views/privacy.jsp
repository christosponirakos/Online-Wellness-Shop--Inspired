
<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>


        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
     <style>
         

        header.masthead {
            padding-top: 10.5rem;
            padding-bottom: 6rem;
            text-align: center;
            color: rgb(13, 27, 32);
            
            background-image: url("${pageContext.request.contextPath}/static/img/ccc.jpeg");
            background-repeat: no-repeat;
            background-attachment: scroll;
            background-position: center center;
            background-size: cover;
        }
    </style>

    </head>

    <body>  
        <!--Navigation-->
        <%@include file="nav.jsp" %>


 <header class="masthead">
        <div class="container"> 
            <section class="page-section bg-light" id="services">
                <div class="container">
                    <div class="text-center">
                        <h2 class="section-heading text-uppercase">TERMS</h2>
                        <h3 class="section-subheading text-muted"><p>
                            We are committed to recognizing and respecting your privacy rights by keeping you informed and processing and protecting your personal data in compliance with applicable data protection laws and regulations ("Data Protection Laws").
                            Account Data You Directly and Voluntarily Provide to Us. We may collect and process some or all of the following information you make available to us if you register, download or use the Services, such as your:

Name
Email Address
Mailing Address
Phone Number
Interests
User Name
Password
Other Registration Information
Customer Support or Technical Information you provide when you contact us with questions about your use of the Services
Details of transactions you carry out through the Services, your purchases, and the fulfillment of orders we provide to you
Other information you may provide to us through promotions or surveys/
                        
                        </p> </h3>
                     </div>







</div>
</section>
</div>
</header>


        <br>
        <br>

        <%@include file="footer.jsp" %>
        <%@include file="scripts.jsp" %>
    </body>
</html>