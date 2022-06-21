<%--
  Created by IntelliJ IDEA.
  User: ironicsushi
  Date: 10/26/17
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Ad Details" />
    </jsp:include>
    <link href="../stylesheets/basic.css" rel="stylesheet">
    <link href="../stylesheets/ads-detail.css" rel="stylesheet">
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<h1>Ad Details</h1>
<a href="/profile" class="btn btn-default btn-return">Return to Profile</a>
    <div class="card-container">
        <div class="card" style="">
            <%--<img class="card-img-top" src="http://lorempixel.com/300/300/people" alt="Card image cap">--%>
            <div class="card-body">
                <h4 class="card-title">${viewAdInfo.title}</h4>
                <p class="card-text">${viewAdInfo.shortDescription}</p>

                <div class="button-container">
                    <form action="/ad/delete?id=${viewAdInfo.id}" method="post">
                          <button class="btn btn-primary delete" type="submit">Delete</button>
                    </form>
                    <form action="/ad/edit?id=${viewAdInfo.id}" method="post">
                        <a href="/ad/edit?id=${viewAdInfo.id}" class="btn btn-primary" type="submit">Edit</a>
                    </form>
                </div>


            </div>
        </div>
    </div>
</body>
</html>
