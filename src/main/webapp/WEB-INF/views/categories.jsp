


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
        
        background-image: url("../../static/img/healthy-eating-ingredients-1296x728-header.jpg");
        background-repeat: no-repeat;
        background-attachment: scroll;
        background-position: center center;
        background-size: cover;
    }

    .bloc_left_ {
        color: #c01508;
        text-align: center;
        font-weight: bold;
        font-size: 150%;
    }

    .category_block li:hover {
        background-color: #007bff;
    }

    .category_block li:hover a {
        color: #ffffff;
    }

    .category_block li a {
        color: #343a40;
    }
</style>
</head>

    <body>
        <%@include file="nav.jsp" %>
     
<!-- Masthead-->
<header class="masthead">
    <div class="container">
        <section class="page-section bg-light">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Our products</h2>
                    <h3 class="section-subheading text-muted">To eat and exercise is a necessity, but to do them intelligently is an
                        art </h3>
                </div>
            
                    <div class="col-md-12">
                        <div class="card-deck">
                            <div class="card">
                                <img src="${pageContext.request.contextPath}/static/img/category.jpg" class="card-img-top" style="" alt="fitness">
                                <div class="card-body">
                                    <h5 class="card-title">Nutrition</h5>
                                    <p class="card-text">We are here for you in your every step of transforming your body. Either to lose weight, or to explore new diets, you can count on us!</p>

                                </div>
                                <div class="card-footer">
                                    <small class="text-muted"> <a href="/Wellness/products/nutrition" class="btn btn-outline-warning "> See More</a></small>
                                </div>
                            </div>
                            <div class="card">
                                <img src="${pageContext.request.contextPath}/static/img/category2.jpg" class="card-img-top" alt="Fitness ">
                                <div class="card-body">
                                    <h5 class="card-title">Fitness</h5>
                                    <p class="card-text">Lacking motivation to get back into the gym? Back in the gym already but feel stagnated? Or maybe you?re just looking for new inspiration for a the new year. We are here for you offering the best deals!
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted"> <a href="/Wellness/products/fitness" class="btn btn-outline-warning "> See More</a></small>
                                </div>
                            </div>
                        </div>
                    </div>
                               
                                </div>
        </section>
                            </div>
                    
                 
             
</header>



        <%@include file="footer.jsp" %>
            <%@include file="scripts.jsp" %>
    </body>
</html>
