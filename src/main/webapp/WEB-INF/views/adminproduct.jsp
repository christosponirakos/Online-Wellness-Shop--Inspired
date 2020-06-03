<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>


        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>



        <title>Products' List</title>
        <style>

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
                                                    <a href="<c:url value='${editurl}/${product.id}' />" class="btn btn-primary">
                                                        <span class="fa fa-pencil"></span> Edit
                                                    </a>
                                                    <a href="<c:url value='${deleteurl}/${product.id}' />" class="btn btn-danger">
                                                        <span class="fa fa-trash"></span> Delete
                                                    </a>

                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table> 
                            </div>
                                <a href="<c:url value='/products/${newurl}' />" class="btn btn-info">
                                    <span class="fa fa-plus"></span>ADD</a>


                           




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



