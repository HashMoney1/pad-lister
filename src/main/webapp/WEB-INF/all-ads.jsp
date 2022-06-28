<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Padlister: All pads" />
    </jsp:include>
    <link rel="stylesheet" href="css/styles.css" type="text/css">
</head>
<body>
<jsp:include page="partials/navbar.jsp" />

<div class="ad-container">
    <div class="title">All pads</div>
    <div class="card-container">
        <c:forEach var="Ad" items="${allAds}">
            <div class="card">
                <div>
                    <h4>${Ad.title}</h4
                    <p>${Ad.description}</p>
                    <p>${Ad.location}</p>
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
<jsp:include page="partials/footer.jsp" />
</html>
