

<%@include file="setup.jsp" %>

<html>
    <head>
        <style>
        header.masthead {
    background-image: url("${pageContext.request.contextPath}/static/img/gymn.jpg");
    background-repeat: no-repeat;
  background-attachment: scroll;
background-position: center center;
 
        }
        </style>
        <%@include file="head.jsp" %>
          
             <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/wellness.png" />

    </head>
    <body>
        <%@include file="nav_fluid.jsp" %>
     
                <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">We work for your mind, body and spirit</div>
                <div class="masthead-heading text-uppercase">Start the journey with us! </div>
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#team">About us</a>
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Explore</a>
            </div>
        </header>
           
            

                
        <!-- Service-->
        <section class="page-section bg-light" id="team">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">INSPIRED</h2>
                    <h3 class="section-subheading text-muted">We are committed to a holistic and complex approach to your health.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/static/img/rate.png" alt="" />
                            <h4>Consultation</h4>
                            <p class="text-muted">The human body is a complex organism with the innate ability to heal itself when we learn how to listen to it and respond by supporting its needs.Our experts offer recommendations on herbs, nutritional supplements, lifestyle modification, exercise, detoxification and the concept of food-as-medicine to help put your health back on track.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/static/img/nutricon.jpg" alt="" />
                            <h4>Nutrition</h4>
                            <p class="text-muted">Diet and exercise go hand-in-hand when it comes to health and fitness.Nutrition services can include programs to help with:
                                weight loss, muscle building, supplementation, increasing performance, diabetes management, or even kids and family meal planning</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/static/img/icon yogA.png" alt="" />
                            <h4>Fitness</h4>
                            <p class="text-muted">Getting the best results from your fitness routine takes more than hard work.With our specialists on your side, you will not only work out harder, but smarter.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">
                            </button>
                            <a class="btn btn-outline-primary btn-md text-uppercase" href="/Wellness/about">Our story</a>
                    </div>
                </div>
            </div>
        </section>


        <!-- Nutrition Grid-->
        <section class="page-section bg-light" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Nutrition</h2>
                    <h3 class="section-subheading text-muted">To eat is a necessity, but to eat intelligently is an art </h3>
                    <a class="btn btn-outline-primary" href="/Wellness/products"> View All</a>

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
                                            <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/medit.jpg"
                                                 alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Mediterranean diet</h4>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a class="btn btn-primary">Purchase</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 clearfix d-none d-md-block">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/steak2.jpg"
                                                 alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Protein diet</h4>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a class="btn btn-primary">Purchase</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 clearfix d-none d-md-block">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/finalketo.jpg"
                                                 alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Keto diet</h4>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a class="btn btn-primary">Purchase</a>
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
                                            <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/thispaleo.jpg"
                                                 alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Paleo diet</h4>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a class="btn btn-primary">Purchase</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 clearfix d-none d-md-block">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/finalmacro.jpg"
                                                 alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Macrobiotic diet</h4>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a class="btn btn-primary">Purchase</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 clearfix d-none d-md-block">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/mush.jpg"
                                                 alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Homemade diet</h4>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a class="btn btn-primary">Purchase</a>
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
                    </section>


                    <!--Fitness grid-->
                    <section class="page-section bg-light" id="service">
                        <div class="container">
                            <div class="text-center">
                                <h2 class="section-heading text-uppercase">Fitness</h2>
                                <h3 class="section-subheading text-muted">Only a healthy and strong body creates a healthy mind and soul</h3>
                                <a class="btn btn-outline-primary" href="/Wellness/products"> View All</a>
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
                                                            <a class="btn btn-primary">Purchase</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 clearfix d-none d-md-block">
                                                    <div class="card mb-2">
                                                        <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/boot.jpg"
                                                             alt="Card image cap">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Bootcamp classes</h4>
                                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                                card's content.</p>
                                                            <a class="btn btn-primary">Purchase</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 clearfix d-none d-md-block">
                                                    <div class="card mb-2">
                                                        <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/weight.jpg"
                                                             alt="Card image cap">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Weight training</h4>
                                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                                card's content.</p>
                                                            <a class="btn btn-primary">Purchase</a>
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
                                                        <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/ptr.jpg"
                                                             alt="Card image cap">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Personal coaching</h4>
                                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                                card's content.</p>
                                                            <a class="btn btn-primary">Purchase</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 clearfix d-none d-md-block">
                                                    <div class="card mb-2">
                                                        <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/ccc.jpeg"
                                                             alt="Card image cap">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Crossfit</h4>
                                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                                card's content.</p>
                                                            <a class="btn btn-primary">Purchase</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 clearfix d-none d-md-block">
                                                    <div class="card mb-2">
                                                        <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/box.jpg"
                                                             alt="Card image cap">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Boxing</h4>
                                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                                card's content.</p>
                                                            <a class="btn btn-primary">Purchase</a>
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
                    </section>

                    <!-- Contact-->
                    <section class="page-section" id="contact">
                        <div class="container">
                            <div class="text-center">
                                <h2 class="section-heading text-uppercase">Leave us a message!</h2>
                                <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                            </div>
                            <form id="contactForm" name="sentMessage" novalidate="novalidate">
                                <div class="row align-items-stretch mb-5">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input class="form-control" id="name" type="text" placeholder="Your Name *" required="required" data-validation-required-message="Please enter your name." />
                                            <p class="help-block text-danger"></p>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" id="email" type="email" placeholder="Your Email *" required="required" data-validation-required-message="Please enter your email address." />
                                            <p class="help-block text-danger"></p>
                                        </div>
                                        <div class="form-group mb-md-0">
                                            <input class="form-control" id="phone" type="tel" placeholder="Your Phone *" required="required" data-validation-required-message="Please enter your phone number." />
                                            <p class="help-block text-danger"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group form-group-textarea mb-md-0">
                                            <textarea class="form-control" id="message" placeholder="Your Message *" required="required" data-validation-required-message="Please enter a message."></textarea>
                                            <p class="help-block text-danger"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <div id="success"></div>
                                    <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Send Message</button>
                                </div>
                            </form>
                        </div>
                    </section>  
                        
                   </     
                     <!---Footer--->   
                    <%@include file="footer.jsp" %>       
                        
               
        <%@include file="scripts.jsp" %>
    </body>
</html>
