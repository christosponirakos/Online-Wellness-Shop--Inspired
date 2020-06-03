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

                                                <td align="right">
                                                    <a href="<c:url value='${editurl}/${purchase.id}' />" class="btn btn-primary">
                                                        <span class="fa fa-pencil"></span> Edit
                                                    </a>
                                                    <a href="<c:url value='${deleteurl}/${purchase.id}' />" class="btn btn-danger">
                                                        <span class="fa fa-trash"></span> Delete


                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                             <a href="<c:url value='/products/${newurl}' />" class="btn btn-info">
                                    <span class="fa fa-plus"></span>ADD</a>



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

