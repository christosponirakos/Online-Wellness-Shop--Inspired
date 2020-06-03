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
            
           background-color: #fed136;
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
                        <h2 class="section-heading text-uppercase">ARE YOU EATING ENOUGHT PROTEINS?</h2>
                        <h3 class="section-subheading text-muted"><p>
                            What Are Daily Protein Requirements?
                        
                        </p> </h3>
                     </div>
        <p>Current guidelines, established by the Institute of Medicine in 2002, recommend adults 19 years of age and older
    consume 10 to 35 percent of their daily calories from protein. That's about 200 to 700 calories from protein for a
    2,000-calorie diet. Another way to calculate how much protein you need each day is to multiply 0.8 grams of protein
    per kilogram of your body weight. With a little math, this translates to 54 grams of protein for a 150-pound woman,
    or 65 grams for a 180-pound man.

    Here are some examples of what 10 grams of protein looks like:</p>



        <p> 2 small eggs </p>
        <p> 2 1/2 tablespoons peanut butter </p>
        <p>   1 cup cooked quinoa </p>
        <p> 3/4 cup cooked black beans</p>
        <p> 1 cup uncooked oats </p>
        <p> 1/2 cup Greek yogurt </p>

        <p><strong>Ideally you should follow this table:</strong></p>
        
        <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/calculator.png"
                                                 alt="Card image cap">
        
        
        
        <br>
        <br>
         <div class="jumbotron jumbotron-fluid">
                            <div class="container">
                              <h2 class="display-6">DO YOU WANT TO DISCOVER MORE?</h2>
                              <p class="lead">Take a look at our offers!</p> 
                              <br>
                              <a class="btn btn-primary" href="fitness.html">Discover</a>
                            </div>
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