<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>
     
        
        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
       
       <link href="<c:url value='/resources/css/styles.css' />" rel="stylesheet"></link>
      <!-- <script src="<c:url value="https://use.fontawesome.com/releases/v5.12.1/js/all.js"/>"</script> SHOWS BLANK PAGE?--> 
        
        <title>Purchases' List</title>
        <style>
            
        header.masthead {
            padding-top: 10.5rem;
            padding-bottom: 6rem;
            text-align: center;
            color: rgb(13, 27, 32);
            
            background-image: url("https://piraeuspress.gr/wp-content/uploads/2020/02/healthy-eating-ingredients-1296x728-header.jpg");
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
                                            <a href="<c:url value='${detailsULR}/${purchase.id}' />" class="btn btn-wanring">
                                                <span class="fa fa-plus"></span> View details
                                            </a>
                                            
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






    <%@include file="footer.jsp" %>
            <%@include file="scripts.jsp" %>
    </body>
</html>
