<style>
    header.masthead {
  padding-top: 10.5rem;
  padding-bottom: 6rem;
  text-align: center;
  color: rgb(13, 27, 32);
 /* background-image: url("${pageContext.request.contextPath}/static/img/header.jpg");*/
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center center;
  background-size: cover;
}
</style>
<!-- Navbar -->
<header>
    <nav class="container-fluid navbar navbar-expand-lg navbar-light" id="mainNav">
        <!-- Logo -->
        <a class="navbar-brand" href="/Wellness/index">
            <img src="${pageContext.request.contextPath}/static/img/wellness.png" alt="Inspired logo"
                 style="position:relative; bottom:10px; width:100px; height:100px;">
        </a>
        <!--Navigation-->
        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Menu -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">

                <li class="nav-item active">
                    <a class="nav-link" href="/Wellness/index">Home <span class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/Wellness/about">About</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="/Wellness/member">Blog</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        Products
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/Wellness/categories/">Categories</a>
                        <a class="dropdown-item" href="/Wellness/products/">All products</a>
                        <a class="dropdown-item" href="/Wellness/products/nutrition">Nutrition</a>
                        <a class="dropdown-item" href="/Wellness/products/fitness">Fitness</a>
                   </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Wellness/contact">Contact</a>
                </li>


<div class="dropdown dropright float-right">
    <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown"aria-haspopup="true" aria-expanded="false">
      
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="/Wellness/register">Register now</a>
      <a class="dropdown-item" href="/Wellness/login">Login</a>
     
    </div>
  </div>
            </ul>

<!--
                <sec:authorize access="hasRole('ADMIN')">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            Admin
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/Wellness/admin/customers">Customers</a>
                            <a class="dropdown-item" href="/Wellness/admin/orders/pending">Pending Orders</a>
                            <a class="dropdown-item" href="/Wellness/admin/orders/done">Completed orders</a>
                        </div>
                    </li>
                </sec:authorize>

            </ul>-->

          
          <div class="dropdown dropleft float-left">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"aria-haspopup="true" aria-expanded="false">
      
    </button>
    <div class="dropdown-menu">
       <a class="dropdown-item" href="/Wellness/admin">Profile</a>
      <a class="dropdown-item" href="/Wellness/users/list">Users</a>
     <a class="dropdown-item" href="/Wellness/products/list">Products</a>
                    <a class="dropdown-item" href="/Wellness/purchases/list">Purchases</a>
    </div>
  </div>
         <!--   <button type="button" class="btn">
                <span class="glyphicon glyphicon-cog"></span>
                <span class="caret"></span>
                <div class="dropdown-menu"></div>
                    
                       <i class="fas fa-user icon"></i>
                   
                    
               

            </button>-->


            <!-- Register / Login dropdown 
            <div class="btn-group">
                <button type="button" class="btn btn-dark dropdown-toggle dropdown-toggle-split" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                    <span class="sr-only"><i class="fas fa-usercicon"></i>Toggle Dropdown</span>
                </button>
                <div class="dropdown-menu">
              <!--      <sec:authorize access="hasRole('ADMIN') or hasRole('USER')">
                        <a class="dropdown-item" href="/Wellness/logout">Logout</a>
                        <a class="dropdown-item" href="/Wellness/chat">Chat</a>
                 <!--   </sec:authorize>-->
                 <!--   <sec:authorize access="!hasRole('ADMIN') and !hasRole('USER')"> 
                        <a class="dropdown-item" href="/Wellness/register">Resigster Now</a>
                        <a class="dropdown-item" href="/Wellness/login">Login</a>
                        <a class="dropdown-item" href="/Wellness/chat">Chat</a>
                <!--    </sec:authorize> 
                </div>
            </div>

            <!-- Search 
            <!--  <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
            </form> -->
        </div>
    
    </nav>

</header>
</body>
</html>

