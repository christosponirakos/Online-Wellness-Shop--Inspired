

<%@include file="setup.jsp" %>

<html>
    <head>
        <style>
        #inspired{
    background-image: url("${pageContext.request.contextPath}/static/img/header.jpg");
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
                            <a class="btn btn-outline-primary btn-md text-uppercase" href="${pageContext.request.contextPath}/about">Our story</a>
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
                    <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/products/list"> View All</a>

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
                                                <p class="card-text">It encorporates the traditional healthy living habits of people from countries bordering the Mediterranean Sea, including France, Greece, Italy and Spain.</p>
                                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 clearfix d-none d-md-block">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/steak2.jpg"
                                                 alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Protein diet</h4>
                                                <p class="card-text">A high-protein diet encourages eating more protein and fewer carbohydrates or fat to boost weight loss, improve energy, and enhance athletic performance.</p>
                                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 clearfix d-none d-md-block">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/finalketo.jpg"
                                                 alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Keto diet</h4>
                                                <p class="card-text">Keep your appetite in check with our lowest carb meal plan.It promotes weight loss with satiating healthy fats, grass fed meats, and wild caught seafood.</p>
                                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
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
                                                <p class="card-text">The aim is to return to a way of eating that's more like what early humans ate. The diet's reasoning is that the human body is genetically mismatched to the modern diet that emerged with farming practices.</p>
                                                <a class="btn btn-primary" href="${pageContext.request.contextPath}//products/list">MORE</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 clearfix d-none d-md-block">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/finalmacro.jpg"
                                                 alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Macrobiotic diet</h4>
                                                <p class="card-text">A macrobiotic diet isn't just about your weight -- it's about achieving balance in your life. It promises a healthier, more holistic long-term lifestyle for men, women, and children that encompasses mental outlook as well as food choices.</p>
                                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 clearfix d-none d-md-block">
                                        <div class="card mb-2">
                                            <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/mush.jpg"
                                                 alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Homemade diet</h4>
                                                <p class="card-text">Every time you look up there seems to be some new diet regime promising miracle results. If you are tired of the dieting treadmill - losing weight then gaining it all back again - then say goodbye to dieting and calorie counting for good.</p>
                                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
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
                                <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/Wellness/products/list"> View All</a>
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
                                                            <p class="card-text">By focusing our attention on the breath, on various senses and on the inner-body, in meditation classes we withdraw from our busy life. We step out of the fast stream of thoughts to find a quiet place within ourselves.</p>
                                                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 clearfix d-none d-md-block">
                                                    <div class="card mb-2">
                                                        <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/boot.jpg"
                                                             alt="Card image cap">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Bootcamp classes</h4>
                                                            <p class="card-text">Boot camp workouts can vary. They generally include a fairly intense mix of aerobic, strength training and speed elements within each class session. One boot camp workout might stress calisthenics while another stresses military-style drills.</p>
                                                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 clearfix d-none d-md-block">
                                                    <div class="card mb-2">
                                                        <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/weight.jpg"
                                                             alt="Card image cap">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Weight training</h4>
                                                            <p class="card-text">How Strength Training Helps Your Health. Strength training makes you stronger and fitter. Strength training protects bone health and muscle mass. Strength training helps keep the weight off for good. Strength training helps you develop better body mechanics. Strength training can help with chronic disease management.</p>
                                                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
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
                                                            <p class="card-text">Whether you are working toward a goal, feeling stuck or wanting more balance, personal coaching with a certified life coach can help you be more fulfilled!</p>
                                                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 clearfix d-none d-md-block">
                                                    <div class="card mb-2">
                                                        <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/ccc.jpeg"
                                                             alt="Card image cap">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Crossfit</h4>
                                                            <p class="card-text">It is a lifestyle characterized by safe, effective exercise and sound nutrition.It can be used to accomplish any goal, from improved health to weight loss to better performance. The program works for everyone?people who are just starting out and people who have trained for years.</p>
                                                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 clearfix d-none d-md-block">
                                                    <div class="card mb-2">
                                                        <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/box.jpg"
                                                             alt="Card image cap">
                                                        <div class="card-body">
                                                            <h4 class="card-title">Boxing</h4>
                                                            <p class="card-text">It is not just an arm workout. When done properly, it is a full body workout? Legs, core, back, shoulders, and arms as well as a cardiovascular workout.</p>
                                                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">MORE</a>
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
                        
                    <br>
                    <br>
                     <!---Footer--->   
                    <%@include file="footer.jsp" %>       
                        
               
        <%@include file="scripts.jsp" %>
    </body>
</html>
