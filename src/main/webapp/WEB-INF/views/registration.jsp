<%@include file="setup.jsp" %>
<html>

    <head>
        <%@include file="head.jsp" %>
        <title>User Registration Form</title>
        <link href="<c:url value='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' />" rel="stylesheet"></link>
        <style type="text/css">
            body {
                color: #fff;
                background: #63738a;
                font-family: 'Roboto', sans-serif;
                background-image: url("${pageContext.request.contextPath}/static/img/body.jpg");
                height: 500px;
            }
            .form-control {
                height: 40px;
                box-shadow: none;
                color: #969fa4;
            }
            .form-control:focus {
                border-color: #5cb85c;
            }
            .form-control,
            .btn {
                border-radius: 3px;
            }
            .signup-form {
                width: 400px;
                margin: 0 auto;
                padding: 30px 0;
            }
            .signup-form h2 {
                color: #636363;
                margin: 0 0 15px;
                position: relative;
                text-align: center;
            }
            .signup-form h2:before,
            .signup-form h2:after {
                content: "";
                height: 2px;
                width: 30%;
                background: #d4d4d4;
                position: absolute;
                top: 50%;
                z-index: 2;
            }
            .signup-form h2:before {
                left: 0;
            }
            .signup-form h2:after {
                right: 0;
            }
            .signup-form .hint-text {
                color: #999;
                margin-bottom: 30px;
                text-align: center;
            }
            .signup-form form {
                color: #999;
                border-radius: 3px;
                margin-bottom: 15px;
                background: #f2f3f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .signup-form .form-group {
                margin-bottom: 20px;
            }
            .signup-form input[type="checkbox"] {
                margin-top: 3px;
            }
            .signup-form .btn {
                font-size: 16px;
                font-weight: bold;
                min-width: 140px;
                outline: none !important;
            }
            .signup-form .row div:first-child {
                padding-right: 10px;
            }
            .signup-form .row div:last-child {
                padding-left: 10px;
            }
            .signup-form a {
                color: #fff;
                text-decoration: underline;
            }
            .signup-form a:hover {
                text-decoration: none;
            }
            .signup-form form a {
                color: #5cb85c;
                text-decoration: none;
            }
            .signup-form form a:hover {
                text-decoration: underline;
            }
        </style>
    </head>

    <body>
        <div class="signup-form">
            <form:form action="/Wellness/${action}" method="POST" modelAttribute="user">
                <form:input type="hidden" path="id" id="id"/>
                <h2>Register</h2>
                <p class="hint-text">Create your account. It's free and only takes a minute.</p>
                <div class="form-group">
                    <div class="row">                        
                        <div class="col-sm-12 col-md-12">
                            <label class="sr-only" for="firstName">Username</label>
                            <form:input type="text" placeholder="Username" path="userName" id="userName" class="form-control" required="true"/>
                            <form:errors path="userName" cssStyle="color: #ff0000;"/>
                        </div>
                    </div>
                         <div class="row">   
                    <div class="col-sm-12 col-md-12">
                        <label class="sr-only" for="lastName">First name</label>
                        <form:input type="text" path="firstName" id="firstName" class="form-control" placeholder="First Name" required="true" />
                        <form:errors path="firstName" cssStyle="color: #ff0000;"/>
                    </div>
                </div>
                     <div class="row">   
                <div class="col-sm-12 col-md-12">
                    <label class="sr-only" for="lastName">Last name</label>
                    <form:input type="text" path="lastName" id="lastName" class="form-control" placeholder="Last Name" required="true" />
                    <form:errors path="lastName" cssStyle="color: #ff0000;"/>
                </div>
                </div>
              <div class="row">  
            <div class="col-sm-12 col-md-12">
                <label class="sr-only" for="email">Email</label>
                <form:input type="email" name="email" path="email" id="email" class="form-control" placeholder="Email" required="true"/>
                <form:errors path="email" cssStyle="color: #ff0000;"/>
            </div>
              </div>
            <div class="row">  
            <div class="col-sm-12 col-md-12">
                <label class="sr-only" for="email">Address</label>
                <form:input type="text" name="address" path="address" id="address" class="form-control" placeholder="Address" required="true"/>
                <form:errors path="email" cssStyle="color: #ff0000;"/>
            </div>
            </div>
            <div class="row">  
            <div class="col-sm-12 col-md-12">
                <label class="sr-only" for="email">Telephone</label>
                <form:input type="number" name="telephone" path="telephone" id="telephone" class="form-control" placeholder="Telephone" required="true"/>
                <form:errors path="telephone" cssStyle="color: #ff0000;"/>
            </div>
            </div>
            <div class="row">  
            <div class="col-sm-12 col-md-12">
                <label class="sr-only" for="password">Password</label>
                <form:input type="password" path="password" id="password" class="form-control" placeholder="Password" required="true" />
                <form:errors path="password" cssStyle="color: #ff0000;"/>
            </div>
            </div>
            <div class="form-group">
                <label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a
                        href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
            </div>
            <div class="form-group">
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Save new info" class="btn btn-warning btn-lg btn-block"/>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Register Now" class="btn btn-warning btn-lg btn-block"/>
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="text-center " style="color: #5cb85c">Already have an account? <a href="/Wellness/login">Sign in</a></div>
            <div class="text-center " style="color: #5cb85c"><a href="/Wellness/">Home</a></div>
        </form:form>
    </div>
    <br>
    <br>
    <%@include file="footer.jsp" %>
    <%@include file="scripts.jsp" %>
</body>
</html>
