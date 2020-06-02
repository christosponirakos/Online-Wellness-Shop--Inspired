

<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>
     
    
        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
    
        <style>
          
   header.masthead{
  padding-top: 10.5rem;
  padding-bottom: 6rem;
  text-align: center;
  color: rgb(13, 27, 32);
  background-image: url("${pageContext.request.contextPath}/static/img/back.jpg");
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center center;
  background-size: cover;
   
  
  
  body {
       background-image: url("${pageContext.request.contextPath}/static/img/back.jpg");
               
            }
</style>
       
    </head>
    <body>
        <%@include file="nav.jsp" %>
        <main>
         
             <header class="masthead">
                
                     <section class="page-section" id="about">
                    <div class="text-center">
                        <h2 class="section-heading text-uppercase">About</h2>
                        <h3 class="section-subheading text">Lorem ipsum dolor sit amet consectetur.</h3>
                        <ul class="timeline">
                            <li>
                                <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/static/img/wellness.png" alt="" /></div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>March 2014</h4>
                                        <h4 class="subheading">The beginning</h4>
                                    </div>
                                    <div class="timeline-body"><p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p></div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/static/img/circle-cropped (4).png" alt="" /></div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>2015</h4>
                                        <h4 class="subheading">Your health our priority</h4>
                                    </div>
                                    <div class="timeline-body"><p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p></div>
                                </div>
                            </li>
                            <li>
                                <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/static/img/circle-cropped (1).png" alt="" /></div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>December 2016</h4>
                                        <h4 class="subheading">Expansion</h4>
                                    </div>
                                    <div class="timeline-body"><p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p></div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/static/img/circle-cropped (3).png" alt="" /></div>
                                <div class="timeline-panel">
                                    <div class="timeline-heading">
                                        <h4>Since 2014...</h4>
                                        <h4 class="subheading">We are by your side</h4>
                                    </div>
                                    <div class="timeline-body"><p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p></div>
                                </div>
                            </li>
                            <li class="timeline-inverted">
                                <div class="timeline-image">
                                    <h4>Be Part<br />Of Our<br />Story!</h4>
                                </div>
                            </li>
                        </ul>
                    </div>
                     </section>
            
             </header>
        
          </main>
                                
            
        
        <%@include file="footer.jsp" %>
        <%@include file="scripts.jsp" %>

    </body>
</html>
