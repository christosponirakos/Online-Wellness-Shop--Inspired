
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
                        <h2 class="section-heading text-uppercase">This Killer Workout Torches Calories ? About 500 in 45 Minutes</h2>
                        <h3 class="section-subheading text-muted" href="member.html"> Fitness</h3>
                    </div>



                    <p>One of the top workouts in the world. Burning approximately 500 calories during 45 intense training. We brought it to you, excusively. Enjoy!</p>

                    <div class="embed-responsive embed-responsive-21by9">
                       
                  
                   

                      <iframe width="560" height="315" src="https://www.youtube.com/embed/_Zem0_qsDg0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
<br>
<br>

<p>It's time to break a sweat! This 45-minute workout from celebrity trainer Jeanette Jenkins, who trains Pink and Alicia Keys, will help you burn up to 500 calories. How, you might ask? Because Jeanette keeps you moving the entire time! It's a wonderfully intense workout, but we offer modifications for all the moves too. Grab a towel to mop your brow, a bottle of water to hydrate during the workout, and press play. </p>





































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