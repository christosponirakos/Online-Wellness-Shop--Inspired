



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
                background-image:none;
                background-repeat: no-repeat;
                background-attachment: scroll;
                background-position: center center;
                background-size: cover;
                background-color:lightsteelblue;
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
                            <h2 class="section-heading text-uppercase">30 MINUTES FULL BODY WORKOUT</h2>
                            <h3 class="section-subheading text-muted" href="member.html"> Fitness</h3>
                        </div>



                        <p>A 30 minute, intense, full body, fat burning workout with weights! You can do this one at home with household items or some light dumbbells. Warm up and cool down are also included! Enjoy!</p>

                        <div class="embed-responsive embed-responsive-21by9">




                            <iframe width="560" height="315" src="https://www.youtube.com/embed/p2fFOsLdHwQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        <br>
                        <br>

                        <p>A good warm up is essential to limit your chances of injury. With swimming using large groups of muscles it is essential that you use efficient movements and maintain a low heart rate so as not to fatigue the body. These 5 tips will give you a good routine to ensure the right outcome.

                            Warming up helps the body to deliver oxygen to the exercising muscle groups.
                            Warming up increases body temperature, which reduces the chance for muscle and tendon injuries.
                            A 5 minute warm-up increases blood flow to the exercising muscles. A greater level of blood reaching the muscles involved in the activity aids in the delivery of the important fuels (e.g., glucose and free fatty acids) required for energy production.
                            Warming up increases the suppleness of the muscle, thereby enhancing the mechanical efficiency and power of the exercising muscles.
                            An appropriate warm-up prepares the cardiovascular system for the upcoming (more strenuous) physical activity. Warming up helps to ensure that the cardiovascular system (heart and blood vessels) is given time to adjust to the body?s increased demands for blood and oxygen. </p>











                        <div class="jumbotron jumbotron-fluid">
                            <div class="container">
                                <h2 class="display-6">DO YOU WANT TO DISCOVER MORE?</h2>
                                <p class="lead">Get enrolled in our classes</p> 
                                <br>
                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">Discover</a>
                            </div>
                        </div>






                    </div>
                </section>
            </div>
        </header>
        <br>
        <br>




        <br>
        <br>

        <%@include file="footer.jsp" %>
        <%@include file="scripts.jsp" %>
    </body>
</html>