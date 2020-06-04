<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
     
        
        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
       
       <link href="<c:url value='/resources/css/styles.css' />" rel="stylesheet"></link>
        <title>Edit a user</title>
        
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
button {
  overflow: visible;
}
button,
select {
  text-transform: none;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
html input[disabled] {
  cursor: default;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  padding: 0;
  border: 0;
}
input {
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 0;
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}
input[type="search"] {
  -webkit-box-sizing: content-box;
     -moz-box-sizing: content-box;
          box-sizing: content-box;
  -webkit-appearance: textfield;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
fieldset {
  padding: .35em .625em .75em;
  margin: 0 2px;
  border: 1px solid #c0c0c0;
}
legend {
  padding: 0;
  border: 0;
}
textarea {
  overflow: auto;
}
optgroup {
  font-weight: bold;
}
table {
  border-spacing: 0;
  border-collapse: collapse;
}
td,
th {
  padding: 0;
}

@media print {
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;

    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100% !important;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
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
                            <h2 class="section-heading text-uppercase">Edit Inspired user</h2>
                            <%
                    String updateUrlFINAL = request.getContextPath() + "/users/" + request.getAttribute("updateurl");
                    session.setAttribute("updateUrlFINAL", updateUrlFINAL);
                %>
                           
                        </div>
                    </div>
        <div class="generic-container">
          
            <form:form  id="form" method="POST" action="${updateUrlFINAL}" modelAttribute="user" class="form-horizontal">
                <form:input type="hidden" path="id" id="id" />

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-12 control-lable" for="userName">User name</label>
                        <div class="col-md-12">
                            <form:input type="text" path="userName" id="userName" class="form-control input-sm"/>
                            
                                <form:errors path="userName" cssStyle="color: #ff0000;"/>
                         
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-12 control-lable" for="firstName">First name</label>
                        <div class="col-md-12">
                            <form:input type="firstName" path="firstName" id="firstName" class="form-control input-sm" />
                            
                                <form:errors path="firstName" cssStyle="color: #ff0000;"/>
                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-12 control-lable" for="lastName">Last name</label>
                        <div class="col-md-12">
                            <form:input type="text" path="lastName" id="lastName" class="form-control input-sm" maxlength="40"/>
                           
                                <form:errors path="lastName" cssStyle="color: #ff0000;"/>
                           
                        </div>
                    </div>
                </div>
               <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-12 control-lable" for="email">Email</label>
                        <div class="col-md-12">
                            <form:input type="text" path="email" id="email" class="form-control input-sm" maxlength="40"/>
                           
                                <form:errors path="email" cssStyle="color: #ff0000;"/>
                           
                        </div>
                    </div>
                </div>
                                 <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-12 control-lable" for="telephone">Telephone</label>
                        <div class="col-md-12">
                            <form:input type="number" path="number" id="number" class="form-control input-sm" maxlength="40"/>
                           
                                <form:errors path="number" cssStyle="color: #ff0000;"/>
                           
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-warning">Submit</button>
                <div style="float:right;" ><a href="<c:url value='/${listurl}' />">Back to the list of users</a></div>
            </form:form>
        </div>
    
                    <br>
                    <br>
    <%@include file="footer.jsp" %>
            <%@include file="scripts.jsp" %>
    </body>
</html>

    </body>
</html>
