<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>
     
        
        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
      
        
        <title>Products' List</title>
     
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
                                    <label class="col-md-3 control-lable" for="duration">Duration</label>
                                    <div class="col-md-7">
                                        <form:input type="number" path="duration" id="duration" class="form-control input-sm"/>
                                        <form:errors path="duration" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
			 <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="category">Category</label>
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
            
                    
   
     </div>
                </div>
            </div>
                </section>
                <div>
            </div>
                    </div>
 </header>
                    <br>
                    <br>




    <%@include file="footer.jsp" %>
            <%@include file="scripts.jsp" %>
    </body>
</html>
