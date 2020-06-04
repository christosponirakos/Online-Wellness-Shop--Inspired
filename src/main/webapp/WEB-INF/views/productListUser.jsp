<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>


        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>



        <title>Products' List</title>
        <style>

            body {
                height: 100%;
                background-color:rgb(245, 245, 245);
            }

            body, .form-control{
                font-size:12px!important;
            }

            .has-error{
                color:red;
            }

            .generic-container {
                position: fixed;
                width:80%;
                margin-left: 50px;
                margin-top: 20px;
                margin-bottom: 20px;
                padding: 20px;
                background-color: #EAE7E7;
                border: 1px solid #ddd;
                border-radius: 4px;
            }

            .custom-width {
                width: 80px !important;
            }
            #error
            {
                color: red;
            }

            #thead{
                font-size: 15px;
            }

            .panel-heading{
                text-align: center;
            }

            .table{
                font-size: 15px;
            }

            #form{
                font-size: 15px;
            }
            header.masthead {
                padding-top: 10.5rem;
                padding-bottom: 6rem;
                text-align: center;
                color: rgb(13, 27, 32);
                background-image: url("${pageContext.request.contextPath}/static/img/healthy-eating-ingredients-1296x728-header.jpg");
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
        <!--Navigation-->
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
                    </div>


                    <!--Search filter-->
                    <form className ="border border-primary p-3" onkeyup ="searchTable()">
                        <input type ="text" id ="myInput"  name = "myInput" placeholder="Fitness/Nutrition..." />
                        <button  >Search</button>
                    </form>
                    <br>


                    <!--    <div class="container-fluid" id="navbarid">
                        </div>
                        <div id="includedContent"></div>
                        <h1>Products' List</h1>
                    <!--<h1>Products</h1>-->
                    <div class="container mb-4">

                        <div class="row">

                            <div class="table-responsive">
                                <table class="table table-striped" id="myTable">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="text-center">Title</th>
                                            <th scope="col" class="text-center">Price</th>
                                            <th scope="col" class="text-center">Short Description</th>
                                            <th scope="col" class="text-center">Details</th>
                                            <th scope="col" class="text-center">Duration</th>
                                            <th scope="col" class="text-center">Category</th>
                                            <th scope="col" class="text-center"> Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${products}" var="product">
                                            <tr>
                                                <td scope="col" class="text-center">${product.title}</td>
                                                <td scope="col" class="text-center">${product.price}</td>
                                                <td scope="col" class="text-center">${product.shortDescription}</td>
                                                <td scope="col" class="text-center">${product.details}</td>
                                                <td scope="col" class="text-center">${product.duration}</td>
                                                <td scope="col" class="text-center">${product.category}</td>

                                                <td align="right">
                                                    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                                                        <input type="hidden" name="cmd" value="_xclick">
                                                        <input type="hidden" name="business" value="cponirakos@gmail.com">
                                                        <input type="hidden" name="lc" value="US">
                                                        <input type="hidden" name="item_name" value="Nutrition diet">
                                                        <input type="hidden" name="item_number" value="101">
                                                        <input type="hidden" name="amount" value="50.00">
                                                        <input type="hidden" name="currency_code" value="EUR">
                                                        <input type="hidden" name="button_subtype" value="services">
                                                        <input type="hidden" name="no_note" value="0">
                                                        <input type="hidden" name="tax_rate" value="24.000">
                                                        <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHostedGuest">
                                                        <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                                                        <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
                                                    </form>

                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>

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

