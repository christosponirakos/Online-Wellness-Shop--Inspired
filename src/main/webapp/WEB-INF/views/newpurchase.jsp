<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>
     
        
        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
       
        <title>Add a new purchase</title>
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
                            <h2 class="section-heading text-uppercase">New purchase</h2>
                            <h3 class="section-subheading text-muted">Add a new purchase of an inspired customer!</h3>
                        </div>
       
                   
                        <form:form method="POST" action="new" modelAttribute= "purchase">
                        <form:input type="hidden" path="id" id="id" />
                         
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-12 control-lable" for="user.id">User ID</label>
                                    <div class="col-md-12">
                                        <form:input type="number" path="user.id" id="user.id" class="form-control input-sm"/>
                                        <!--      <div class="has-error"> -->
                                        <form:errors path="user.id" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-12 control-lable" for="date">Date</label>
                                    <div class="col-md-12">
                                        <form:input type="date" path="date" id="date" class="form-control input-sm"/>
                                        <form:errors path="date" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-12 control-lable" for="pending">Pending</label>
                                    <div class="col-md-12">
                                        <form:input type="number" path="pending" id="pending" class="form-control input-sm"/>
                                        <form:errors path="pending" cssStyle="color: #ff0000;"/>
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
                    <div id="list"><a href="<c:url value='purchases/${listurl}' />">Back to the list of purchases</a></div>
            
                    
                    
                    
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
