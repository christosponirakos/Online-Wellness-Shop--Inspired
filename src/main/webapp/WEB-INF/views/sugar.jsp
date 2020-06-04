<%@include file="setup.jsp" %>
<html>
    <head>
        <%@include file="head.jsp" %>


        <link href="<c:url value='/static/css/styles.css' />" type="text/css" rel="stylesheet"></link>
        <style>

            header.masthead {
                padding-top: 10.5rem;
                padding-bottom: 6rem;
                text-align: center;
                color: rgb(13, 27, 32);
                background-image:none;
                background-repeat: no-repeat;
                background-attachment: scroll;
                background-position: center center;
                background-size: cover;
                background-color:lightsteelblue;
            }


        </style>
    </head>
    <body>
        <!--Navigation-->
        <%@include file="nav.jsp" %>


        <header class="masthead">
            <div class="container">
                <section class="page-section bg-light" id="services">
                    <div class="container">
                        <div class="text-center">
                            <h2 class="section-heading text-uppercase">quiting sugar-what happens to your body?</h2>
                            <h3 class="section-subheading text-muted" href="member.html"> Fitness</h3>
                        </div>
                        
                          <img class="card-img-top" src="${pageContext.request.contextPath}/static/img/sugar.png"
                                                 alt="sugar">
                        
                        <h1>Week 1: Expect less energy and ?withdrawal? (but it?s temporary!)</h1>
<p>

    Okay, let?s get the bad news out of the way first: Dr. Smith warns that you should brace yourself for withdrawal symptoms during the first three to five days of reducing sugar. ?The first thing people notice is they typically get headaches, similar to caffeine withdrawal,? he says. ?They also report having decreased energy levels and mental acuity, as well as gastrointestinal distress.

    <br>
<h1>Week 2: Your energy returns, but your sugar cravings persist</h1>
<p>By the time your second week starts, your brain fog has probably lifted and you?ve likely got a lot of your energy back. But your body might still be wondering where all the sucrose went.</p>
</p><br>
<h1>Week 3: Sugar ?withdrawal? should be over</h1>
<p>You?re halfway through the game, which means you?ve likely ditched the biggest sugar offenders. Maybe you?ve given up rosé for LaCroix, switched to unsweetened almond milk, or stocked up on plain Greek yogurt rather than fruity flavors.

    Prepare to be rewarded for your efforts. Week three is when you really start reaping the benefits of that low-sugar life.</p>
    <br>
    <h1>Week 4: Your sugar levels are low, but you?ve never felt better</h1>
    <p>After a month, the game you?re playing with glucose is more mental than physical. ?This is a psychological week?that final, purifying push,? Dr. Smith says. ?While you?re still having some sugar, the amount you?re having is less than any of the previous weeks.?

        Now?s the point in your detox when you might be hearing that sweet siren song in your head. Turn down the volume by scouring nutrition labels for sneaky, hidden sources of sugar to ensure you?re not inadvertently feeding your sweet tooth. You might want to start with your salad dressings, juices, and instant oatmeal. For this week, you should also favor low-glycemic fruits and opt for zero-added-sugar meals as much as possible.</p>
        <br>
        <h1>Week 5 and beyond: Maintaining your low-sugar habits</h1>
        <p>By now, you?ll probably find that your relationship with sugar is a lot healthier than it was when you started?you?re more of a friendly acquaintance than an obsessive stalker. ?From a psychological standpoint, you realize you don?t need sugar anymore,? says Dr. Smith. ?You also understand the affect sugar once had on your body, because you feel so reinvigorated in week five.?

            Going forward, it?s okay to have some sugar here and there, but to think of it as a treat, rather than a mainstay of your diet. ?Portion control is very important, and you want to stay away from added sugars,? he advises. ?But after five weeks, you should have no problem making smart decisions.?</p>
        
          <br>
                    <br>


  <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h2 class="display-6">DO YOU WANT TO DISCOVER MORE?</h2>
                <p class="lead">Get enrolled in our classes</p> 
                <br>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/products/list">Discover</a>
            </div>
        </div>










                    </div>
                </section>
            </div>
        </header>
        <br>
        <br>

      


        <br>
        <br>

        <%@include file="footer.jsp" %>
        <%@include file="scripts.jsp" %>
    </body>
</html>