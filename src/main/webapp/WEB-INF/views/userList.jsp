<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>
        <!-- Our CSS -->
        <!--<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script> -->
<link href="css/styles.css" rel="stylesheet" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<link rel="icon" type="image/x-icon" href="assets/img/wellness.png" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<!--<link href="<c:url value="/resources/css/bootstrap.min.css" />"
rel="stylesheet"> 
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>-->
        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
        <style>
            header.masthead {
            padding-top: 10.5rem;
            padding-bottom: 6rem;
            text-align: center;
            color: rgb(13, 27, 32);
            
            background-image: url("../assets/img/healthy-eating-ingredients-1296x728-header.jpg");
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
                       
                    </div>
                </div>
    
       <!--<h1 style="text-align:center;text-shadow:0 0 3px black; color:lightgoldenrodyellow;">Customers</h1>
       -->  <div class="container">
          <div class="row">
              <div class="col">
                    <table class="table table-hover">
                        <thead class="bg-primary text-light">
                            <tr>
                                <th>Username</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>Address</th>
                                <th>Phone Number</th>
                                <th>Edit</th>
                                <th>Delete</th>
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
                                    <td><a href="/Wellness/admin/customers/update/${user.id}" class="update btn btn-warning btn-sm"></a>
                                        <c:if test="${user.id==1}">
                                        </td><td><a id="deletebtn" href="/Wellness/admin/customers/delete/${user.id}" class="delete btn btn-danger btn-sm disabled"></a></td>
                                        </c:if>
                                        <c:if test="${user.id!=1}">
                                    </td><td><button href="/Wellness/admin/customers/delete/${user.id}" class="delete btn btn-danger btn-sm"></button></td>
                                </c:if>
                        </tr>
                    </c:forEach>
                    <c:forEach var="user" items="${papaki}">
                        <tr>
                            <td>${user.user}</td>
                        </tr>
                        </c:forEach>    
                </tbody>
        </div>
    </div>
    <%@include file="scripts.jsp" %>
</body>
</html>
