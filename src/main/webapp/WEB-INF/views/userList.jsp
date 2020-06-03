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
            
            background-image: url("${pageContext.request.contextPath}/static/img/header-bg1.jpg");
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
                        <h2 class="section-heading text-uppercase">Users</h2>
                       <h3 class="section-subheading text-muted">Inpired - healthier - happier</h3>
                    </div>
                </div>
    
       <!--<h1 style="text-align:center;text-shadow:0 0 3px black; color:lightgoldenrodyellow;">Customers</h1>
       --> <div class="container mb-4">

                    <div class="row">

                        <div class="table-responsive">
                            <table class="table table-striped" id="myTable">
                            <thead>
                                
                                <th>Username</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>Address</th>
                                <th>Phone Number</th>
                                <th>Actions</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <td>${user.userName}</td>
                                    <td>${user.firstName}</td>
                                    <td>${user.lastName}</td>
                                    <td>${user.email}</td>
                                    <td>${user.address}</td>
                                    <td>${user.telephone}</td>
                                   
                                        <td align="right">
                                             <a href="<c:url value='${editurl}/${user.id}' />" class="btn btn-warning">
                                                        <span class="fa fa-pencil"></span>Update
                                                    </a>
                                                    <a href="<c:url value='${deleteurl}/${user.id}' />" class="btn btn-danger">
                                                        <span class="fa fa-trash"></span> Delete
                                                    </a>
                                        </td>
                                            </tr>
                                        
                                        
                                        
                                        <!--<a href="/Wellness/admin/customers/update/${user.id}" class="update btn btn-warning btn-sm"></a>
                                        <c:if test="${user.id==1}">
                                        </td><td><a id="deletebtn" href="/Wellness/admin/customers/delete/${user.id}" class="delete btn btn-danger btn-sm disabled"></a></td>
                                        </c:if>
                                        <c:if test="${user.id!=1}">
                                    </td><td><button href="/Wellness/admin/customers/delete/${user.id}" class="delete btn btn-danger btn-sm"></button></td>
                                </c:if>-->
                       
                         </c:forEach>
        
                            </tbody>
                            </table>
  <a href="<c:url value='${addurl}/${purchase.id}' />" class="btn btn-info">
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