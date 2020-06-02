<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>
      
     
        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
      
        <style>header.masthead{
  padding-top: 10.5rem;
  padding-bottom: 6rem;
  text-align: center;
  color: rgb(13, 27, 32);
  background-image: url("${pageContext.request.contextPath}/static/img/big.jpg");
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center center;
  background-size: cover;
   
  
  
  body {
       background-image: url("${pageContext.request.contextPath}/static/img/big.jpg");
           </style>    
            }
    </head>
    <body>
         <%@include file="nav.jsp" %>
        <main>
            
            
            <header class="masthead">
    <div class="container"> 
        <section class="page-section bg-light" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Contact</h2>
                    <h3 class="section-subheading text-muted"> Discover our premises in Athens</h3>
                </div>
                <div class="container">
                    <hr>
                    <div class="row">
                        <div class="col-sm-8">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3149.8810413550277!2d23.75062371532006!3d37.863073779743495!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a1bfd1f4da2b59%3A0xfc9444a5e2fdf4bd!2sGrigoriou%20Lampraki%2025%2C%20Glifada%20166%2074!5e0!3m2!1sen!2sgr!4v1589879374260!5m2!1sen!2sgr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                        </div>
                        <br>
                        <div class="col-sm-4" id="contact2">
                            <br>
                            <br>
                            <h4 class = "pt-2"> Address</h4>
                            <i class="fas fa-globe" style="color:#000"></i> <a href =https://www.google.com/maps/place/Grigoriou+Lampraki+25,+Glifada+166+74/data=!4m2!3m1!1s0x14a1bfd1f4da2b59:0xfc9444a5e2fdf4bd?sa=X&ved=2ahUKEwiezIajxr_pAhUSTcAKHQnoAsMQ8gEwAHoECAsQAQ>Grigoriou Lampraki 25, 166 74 Glyfada </a>
                            <br>
                            <br>
                            <h4 class="pt-2">Opening hours</h4>
                            <i class="fas fa-clock" style="color:#000"></i> <a href="#"> Monday-Friday 8:00-23:00
                                <br> Saturday-Sunday 10:00-19:00 </a><br>
                            <br>
                            <h4 class="pt-2">Telephone:</h4>
                            <i class="fas fa-phone" style="color:#000"></i> <a href="tel:+"> 2102112345 </a><br>
                            <br>
                            <h4 class="pt-2">Email</h4>
                            <i class="fa fa-envelope" style="color:#000"></i> <a href=""> inspired@gmail.com</a><br>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br>
        <br>                   
        <!-- Footer-->
       <%@include file="footer.jsp" %>   
     <!--   <!-- Bootstrap core JS
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        <!-- Core theme JS
        <script src="js/scripts.js"></script>
-->
        <%@include file="scripts.jsp" %>
    </body>
</html>
