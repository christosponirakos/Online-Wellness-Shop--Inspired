<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>


        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>

        <style>
            .profile{
                background: -webkit-linear-gradient(left, #e9d179, #ff1e00);
                margin-top: 3%;
                padding: 3%;
                text-align: center;
            }
            .profile-left{
                text-align: center;
                color: #fff;
            }
            .profile-left input{
                border: none;
                border-radius: 1.5rem;
                padding: 2%;
                width: 60%;
                background: #f8f9fa;
                font-weight: bold;
                color: #383d41;
                margin-top: 30%;
                margin-bottom: 3%;
                cursor: pointer;
            }
            .profile-right{
                background: #f8f9fa;
                border-top-left-radius: 10% 50%;
                border-bottom-left-radius: 10% 50%;
            }
            .profile-left img{
                margin-top: 15%;
                margin-bottom: 5%;
                width: 25%;
                -webkit-animation: mover 2s infinite  alternate;
                animation: mover 1s infinite  alternate;
            }
            @-webkit-keyframes mover {
                0% { transform: translateY(0); }
                100% { transform: translateY(-20px); }
            }
            @keyframes mover {
                0% { transform: translateY(0); }
                100% { transform: translateY(-20px); }
            }
            .profile-left p{
                font-weight: lighter;
            }
            .profile .profile-form{
                padding: 10%;
                margin-top: 10%;
            }
            .btnUpdate{
                float: right;
                margin-top: 10%;
                border: none;
                border-radius: 1.5rem;
                padding: 2%;
                background: #fed136;
                color: #fff;
                font-weight: 600;
                width: 50%;
                cursor: pointer;
            }
            .profile .nav-tabs{
                margin-top: 3%;
                border: none;
                background: #fed136;
                border-radius: 1.5rem;
                width: 28%;
                float: right;
            }
            .profile .nav-tabs .nav-link{
                padding: 2%;
                height: 34px;
                font-weight: 600;
                color: #fff;
                border-top-right-radius: 1.5rem;
                border-bottom-right-radius: 1.5rem;
            }
            .profile .nav-tabs .nav-link:hover{
                border: none;
            }
            .profile .nav-tabs .nav-link.active{
                width: 100px;
                color: #fed136;
                border: 2px solid #fed136;
                border-top-left-radius: 1.5rem;
                border-bottom-left-radius: 1.5rem;
            }
            .profile-heading{
                text-align: center;
                margin-top: 8%;
                margin-bottom: -15%;
                color: #495057;
            }
        </style>


    </head>

    <body>  
        <!--Navigation-->
        <%@include file="nav.jsp" %>



        <div class="container profile">
            <div class="row">
                <div class="col-md-3 profile-left">
                    <img src="${pageContext.request.contextPath}/static/img/wellness.png" alt=""/>
                    <h3>Welcome(Admin)</h3>
                    <p>Check your stats!</p>

                </div>
                <div class="col-md-9 profile-right">
                    <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">

                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <h3 class="profile-heading">Management system</h3>
                            <br>
                            <div class="row profile-form">
                                <div class="col-md-8">
                                    <a class="btnUpdate" href="<c:url value="${pageContext.request.contextPath}/product/list"/>">Products' list</a>
                                </div>
                                <div class="col-md-8">
                                    <a class="btnUpdate" href="<c:url value="${pageContext.request.contextPath}/users/list"/>">Users' list</a>
                                </div>  
                                <div class="col-md-8">
                                    <a class="btnUpdate" href="<c:url value="${pageContext.request.contextPath}/purchases/list"/>">Purchases' list</a>
                                </div>

                            </div>
                        </div>


                    </div>
                </div>

            </div>
        </div>



        <br><br>        
        <%@include file="footer.jsp" %>
        <%@include file="scripts.jsp" %>
    </body>
</html>
