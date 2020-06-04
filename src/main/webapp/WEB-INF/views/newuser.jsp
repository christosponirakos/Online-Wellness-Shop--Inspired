<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>


        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>


        <title>Add a User</title>
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



        <header class="masthead">
            <div class="container">
                <section class="page-section bg-light">
                    <div class="container">
                        <div class="text-center">
                            <h2 class="section-heading text-uppercase">New user</h2>
                            <h3 class="section-subheading text-muted">Add a new inspired one!</h3>
                        </div>

                        <form:form method="POST" action="new" modelAttribute= "user">
                            <form:input type="hidden" path="id" id="id" />

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-12 control-lable" for="userName">Username</label>
                                    <div class="col-md-12">
                                        <form:input type="text" path="userName" id="userName" class="form-control input-sm"/>
                                        <!--      <div class="has-error"> -->
                                        <form:errors path="userName" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-12 control-lable" for="firstName">First name</label>
                                    <div class="col-md-12">
                                        <form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>
                                        <form:errors path="firstName" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-12 control-lable" for="lastName">Last name</label>
                                    <div class="col-md-12">
                                        <form:input type="text" path="lastName" id="lastName" class="form-control input-sm"/>
                                        <form:errors path="lastName" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-12 control-lable" for="email">Email</label>
                                    <div class="col-md-12">
                                        <form:input type="text" path="email" id="email" class="form-control input-sm"/>
                                        <form:errors path="email" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-12 control-lable" for="address">Address</label>
                                    <div class="col-md-12">
                                        <form:input type="text" path="address" id="address" class="form-control input-sm"/>
                                        <form:errors path="address" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div> <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-12 control-lable" for="password">Password</label>
                                    <div class="col-md-12">
                                        <form:input type="number" path="password" id="password" class="form-control input-sm"/>
                                        <form:errors path="password" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-12 control-lable" for="telephone">Telephone</label>
                                    <div class="col-md-12">
                                        <form:input type="number" path="telephone" id="telephone" class="form-control input-sm"/>
                                        <form:errors path="telephone" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <button type="submit" class="btn btn-warning">Add</button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                    <div id="msg">${message}</div>
                    <div id="list"><a href="<c:url value='/users/${listurl}' />">Back to the list of users</a></div>

</section>
<div>
</div>



                    </header>

                    

                    <br>
                    <br>


                    <%@include file="footer.jsp" %>
                    <%@include file="scripts.jsp" %>
                    </body>
                    </html>
