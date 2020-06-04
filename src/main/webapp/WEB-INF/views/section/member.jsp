
<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>


        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>



        <title>Member section</title>
        <style>

header.masthead {
            padding-top: 10.5rem;
            padding-bottom: 6rem;
            text-align: center;
            color: rgb(13, 27, 32);
            background-image: none;
            background-color: #fed136;
            background-repeat: no-repeat;
            background-attachment: scroll;
            background-position: center center;
            background-size: cover;
        }


</style>
 </head>
    <body>
        <%@include file="nav.jsp" %>

<header class="masthead">
    <div class="container" >
        <section class="page-section bg-light" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Nutrition</h2>
                    <h3 class="section-subheading text-muted">Tips-Recipes-Videos</h3>
                </div>

     <div class="container my-4">

           
        <!--Carousel Wrapper-->
        <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
    
          <!--Controls-->
          <div class="controls-top">
              

            <a class="btn-floating" href="#multi-item-example" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
            <a class="btn-floating" href="#multi-item-example" data-slide="next"><i class="fa fa-chevron-right"></i></a>
          </div>
          <!--/.Controls-->
    
          <!--Indicators-->
          <ol class="carousel-indicators">
            <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
            <li data-target="#multi-item-example" data-slide-to="1"></li>
            <li data-target="#multi-item-example" data-slide-to="2"></li>
          </ol>
          <!--/.Indicators-->
    
          <!--Slides-->
          <div class="carousel-inner" role="listbox">
    
            <!--First slide-->
            <div class="carousel-item active">
    
              <div class="row">
              

                <div class="col-md-4">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/high_protein.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">Are you eating enough proteins?</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                       <a href = "${pageContext.request.contextPath}/Wellness/proteins" class ="btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
    
                <div class="col-md-4 clearfix d-none d-md-block">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/letcook.jpeg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">Veggie Burger</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                      <a href = "boxing.html" class ="btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
    
                <div class="col-md-4 clearfix d-none d-md-block">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/ketoarticle2.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">Keto diet</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                      <a href = "boxing.html" class ="btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
              </div>
    
            </div>
            <!--/.First slide-->
    
            <!--Second slide-->
            <div class="carousel-item">
    
              <div class="row">
                <div class="col-md-4">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/age.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">Eating Well as You Age</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                     <a href = "boxing.html" class ="btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
    
                <div class="col-md-4 clearfix d-none d-md-block">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/post.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">Post and pre workout nutrition</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                      <a href = "boxing.html" class ="btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
    
                <div class="col-md-4 clearfix d-none d-md-block">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/nosugar.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">What happens to your boyd when you quit sugar?</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                      <a href = "boxing" class ="btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
              </div>
    
            </div>
            <!--/.Second slide-->
    
            
    
          </div>
          <!--/.Slides-->
    
        </div>
        <!--/.Carousel Wrapper-->
    



<div class="container">
  <section class="page-section bg-light" id="services">
      <div class="container">
          <div class="text-center">
              <h2 class="section-heading text-uppercase">Fitness</h2>
              <h3 class="section-subheading text-muted">Tips-Exercises-Videos</h3>
          </div>


        </div> 
      

     <div class="container my-4">

                    
        <!--Carousel Wrapper-->
        <div id="multi-item-example2" class="carousel slide carousel-multi-item" data-ride="carousel">
    
          <!--Controls-->
          <div class="controls-top">
            <a class="btn-floating" href="#multi-item-example2" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
            <a class="btn-floating" href="#multi-item-example2" data-slide="next"><i class="fa fa-chevron-right"></i></a>
          </div>
          <!--/.Controls-->
    
          <!--Indicators-->
          <ol class="carousel-indicators">
            <li data-target="#multi-item-example2" data-slide-to="0" class="active"></li>
            <li data-target="#multi-item-example2" data-slide-to="1"></li>
            <li data-target="#multi-item-example2" data-slide-to="2"></li>
          </ol>
          <!--/.Indicators-->
    
          <!--Slides-->
          <div class="carousel-inner" role="listbox">
    
            <!--First slide-->
            <div class="carousel-item active">
    
              <div class="row">
                <div class="col-md-4">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/yoga.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">Yoga</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                      <a href = "boxing.html" class ="btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
    
                <div class="col-md-4 clearfix d-none d-md-block">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/abs.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">10 exercises for killer abs</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                      <a href = "abs.html" class="btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
    
                <div class="col-md-4 clearfix d-none d-md-block">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/full.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">30 min full body workout</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                      <a href = "fullbody.html" class = "btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
              </div>
    
            </div>
            <!--/.First slide-->
    
            <!--Second slide-->
            <div class="carousel-item">
    
              <div class="row">
                <div class="col-md-4">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/killer.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title"> Killer Workout Torches Calories ? About 500 calories in 45 Minutes</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                      <a href = "calories.html" class = "btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
    
                <div class="col-md-4 clearfix d-none d-md-block">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/planart.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">30-DAY BULLETPROOF BODY WORKOUT PLAN</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                      <a href ="plan.html" class="btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
    
                <div class="col-md-4 clearfix d-none d-md-block">
                  <div class="card mb-2">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/boxbox.jpg"
                      alt="Card image cap">
                    <div class="card-body">
                      <h4 class="card-title">Boxing tips from our experts</h4>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                      <a href = "boxing.html" class ="btn btn-primary">Discover</a>
                    </div>
                  </div>
                </div>
              </div>
    
            </div>
            <!--/.Second slide-->
    
            
    
          </div>
          <!--/.Slides-->
    
        </div>
        <!--/.Carousel Wrapper-->
    
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