<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>
     
        
        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
       
       <link href="<c:url value='/resources/css/styles.css' />" rel="stylesheet"></link>
      <!-- <script src="<c:url value="https://use.fontawesome.com/releases/v5.12.1/js/all.js"/>"</script> SHOWS BLANK PAGE?--> 
        
        <title>Products' List</title>
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


 <header class="masthead">
            <div class="container">
                <section class="page-section bg-light">
                    <div class="container">
                        <div class="text-center">
                            <h2 class="section-heading text-uppercase">New product</h2>
                        </div>
                    </div>
                    
                    <!--New product-->
                    <div class='container' align='center' >
            <div class="row">
                <div class="col-md-8">
                    <div class="generic-container">
                   <!--     <h2 class="text-center">New product</h2>
                    <hr>-->
                   
                        <form:form method="POST" action="new" modelAttribute= "product">
                             <form:input type="hidden" path="productId" id="productId"/>
                            
                     
                         
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="title">Title</label>
                                    <div class="col-md-7">
                                        <form:input type="text" path="title" id="title" class="form-control input-sm" maxlength="45"/>
                                        <!--      <div class="has-error"> -->
                                        <form:errors path="title" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="price">Price</label>
                                    <div class="col-md-7">
                                        <form:input type="number" path="price" id="price" class="form-control input-sm" maxlength="45"/>
                                        <form:errors path="price" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="shortDescription">Short Description</label>
                                    <div class="col-md-7">
                                        <form:input type="text" path="shortDescription" id="shortDescription" class="form-control input-sm" maxlength="45"/>
                                        <form:errors path="shortDescription" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="details">Details</label>
                                    <div class="col-md-7">
                                        <form:input type="text" path="details" id="details" class="form-control input-sm" maxlength="45"/>
                                        <form:errors path="details" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
				  <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="price">Duration</label>
                                    <div class="col-md-7">
                                        <form:input type="number" path="duration" id="duration" class="form-control input-sm"/>
                                        <form:errors path="duration" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
				 <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="price">Category</label>
                                    <div class="col-md-7">
                                        <form:input type="text" path="category" id="category" class="form-control input-sm"/>
                                        <form:errors path="category" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
				
                            <div class="form-group row">
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-success">Add</button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                    <div id="msg">${message}</div>
                    <div id="list"><a href="<c:url value='/products/${listurl}' />">Back to the list of products</a></div>
            
                    
        </header>






    <%@include file="footer.jsp" %>
            <%@include file="scripts.jsp" %>
    </body>
</html>
