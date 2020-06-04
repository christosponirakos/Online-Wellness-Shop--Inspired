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
                background-color:wheat;
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
                        <h2 class="section-heading text-uppercase">Abs Exercises: 10 of the Best To Add to Your Workout</h2>
                        <h3 class="section-subheading text-muted" href="member.html"> Fitness</h3>
                    </div>



                    <p>Want washboard abs? Then you need to get to grips with these moves.Simply follow the videos. Enjoy!</p>
                  
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/uUKAYkQZXko" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>













                    <br>
                    <br>



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
</html>          </div>