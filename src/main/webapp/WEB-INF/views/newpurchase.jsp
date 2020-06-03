<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>
     
        
        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
       
       <link href="<c:url value='/resources/css/styles.css' />" rel="stylesheet"></link>
        <title>Add a new purchase</title>
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
            
            background-image: url("${pageContext.request.contextPath}/static/imghealthy-eating-ingredients-1296x728-header.jpg");
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


 <header class="masthead">
            <div class="container">
                <section class="page-section bg-light">
                    <div class="container">
                        <div class="text-center">
                            <h2 class="section-heading text-uppercase">New purchase</h2>
                        </div>
                    </div>
                    
                    <!--New product-->
                    <div class='container' align='center' >
            <div class="row">
                <div class="col-md-8">
                    <div class="generic-container">
       
                   
                        <form:form method="POST" action="new" modelAttribute= "purchase">
                        <form:input type="hidden" path="id" id="id" />
                         
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="customerId">Customer ID</label>
                                    <div class="col-md-7">
                                        <form:input type="number" path="customerId" id="customerId" class="form-control input-sm"/>
                                        <!--      <div class="has-error"> -->
                                        <form:errors path="customerId" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="date">Date</label>
                                    <div class="col-md-7">
                                        <form:input type="date" path="date" id="date" class="form-control input-sm"/>
                                        <form:errors path="date" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="pending">Pending</label>
                                    <div class="col-md-7">
                                        <form:input type="text" path="pending" id="pending" class="form-control input-sm"/>
                                        <form:errors path="pending" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                         
                            <div class="form-group row">
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-warning">Add</button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                    <div id="msg">${message}</div>
                    <div id="list"><a href="<c:url value='/${listurl}' />">Back to the list of purchases</a></div>
            
                    
                    
                    
           
        </header>



                    <br>
                    <br>


    <%@include file="footer.jsp" %>
            <%@include file="scripts.jsp" %>
    </body>
</html>
