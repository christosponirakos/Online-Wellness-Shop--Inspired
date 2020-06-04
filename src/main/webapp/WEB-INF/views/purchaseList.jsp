<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>
     
        
        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
       
      
      
        <title>Purchases' List</title>
        <style>
       

            header.masthead {
                padding-top: 10.5rem;
                padding-bottom: 6rem;
                text-align: center;
                color: rgb(13, 27, 32);

                background-image: url("${pageContext.request.contextPath}/static/img/color2.jpg");
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
                            <h2 class="section-heading text-uppercase">All purchases</h2>
                             <h3 class="section-subheading text-muted">made by inspired clients </h3>
                           
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
                                    <th scope="col" class="text-center">Purchase id</th>
                                    <th scope="col" class="text-center">User id</th>
                                    <th scope="col" class="text-center">Date</th>
                                    <th scope="col" class="text-center">Pending</th>
                                    <th scope="col" class="text-center"> Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${purchases}" var="purchase">
                                    <tr>
                                        <td scope="col" class="text-center">${purchase.id}</td>
                                        <td scope="col" class="text-center">${purchase.user.id}</td>
                                        <td scope="col" class="text-center">${purchase.date}</td>
                                        <td scope="col" class="text-center">${purchase.pending}</td>

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
                                 <a href="<c:url value='/purchases/${newurl}' />" class="btn btn-info">
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



