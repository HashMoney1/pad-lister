<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome!"/>
    </jsp:include>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Krona+One&family=Oleo+Script+Swash+Caps&family=Parisienne&family=Roboto:wght@300&display=swap" rel="stylesheet">
        <link href="../css/styles.css" rel="stylesheet">

</head>
<body>
<jsp:include page="WEB-INF/partials/navbar.jsp"/>
           <div class="hero-container shadow">
               <div class="hero-left">
                   <p class="hero-title">ENJOY</p>
                   <p class="hero-title">YOUR</p>
                   <p class="hero-title">STAY</p>
                   <div class="orange-line"></div>
                   <p class="hero-sub-title">We don't rent. We provide an experience</p>

                   <div class="all-listings-button">
                       <a href="/ads" role="button">View Listings</a>
                   </div>
               </div>
               <div class="hero-right">
<%--                   <img src="imgs/padlister_hero.png">--%>
               </div>
           </div>
           <div class="ad-container shadow">
               <div class="title">Recent Ads</div>
               <div class="card-container">
                   <c:forEach var="Ad" items="${newestAds}">
                       <div class="card">
                           <div>
                               <h4>${Ad.title}</h4
                               <p>${Ad.description}</p>
                           </div>
                           <br>
                           <div>
                               <p>Added ${Ad.getTimeDifferenceString()}</p>
                           </div>
                       </div>
                   </c:forEach>
               </div>
           </div>
</body>
<jsp:include page="WEB-INF/partials/footer.jsp"/>
</html>