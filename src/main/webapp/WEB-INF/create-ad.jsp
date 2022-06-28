<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Padlister: Submit a pad" />
    </jsp:include>
    <link href="../css/styles.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
<div class="profile-container">

    <div>
        <h1 class="profile-welcome">Enter a pad</h1>
    </div>


    <div class="return">
        <a href="/profile" class="return-link">(Return to Profile)</a>
    </div>


    <div>
        <div>
            <form action="/ads/create" method="post">
                <div class="input-format">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text" value="${title}">
                    <c:if test="${adErrors.containsKey('title')}">
                        <span class="errors">${adErrors.get('title')}</span>
                    </c:if>
                </div>
                <div class="input-format">
                    <label for="description">Description</label>
                    <input id="description" name="description" class="form-control" type="text" value="${description}">
                    <c:if test="${adErrors.containsKey('description')}">
                        <span class="errors">${adErrors.get('description')}</span>
                    </c:if>
                </div>
                <div class="input-format">
                    <label for="location">Location</label>
                    <input id="location" name="location" class="form-control" type="text" value="${location}">
                    <c:if test="${adErrors.containsKey('location')}">
                        <span class="errors">${adErrors.get('location')}</span>
                    </c:if>
                </div>
                <div class="input-format">
                    <input type="file" name="file" />
<%--                    <input type="submit" value="Upload" />--%>
                    <input type="submit" class="submit-btn">
                </div>
            </form>
            <%-- Image Upload on new Pads --%>
            <h3>Images:</h3>
            Select a image to upload: <br />
<%--            <form action = "/fileuploadservlet" method = "post"--%>
<%--                  enctype = "multipart/form-data">--%>
<%--                <input type = "file" name = "file" size = "50" />--%>
<%--                <br />--%>
<%--                <input type = "submit" value = "Upload File" />--%>
<%--            </form>--%>
<%--            <form method="post" action="/ads/create" enctype="multipart/form-data">--%>
<%--                <input type="file" name="file" />--%>
<%--                <input type="submit" value="Upload" />--%>
<%--            </form>--%>
<%--            <input id="ajaxfile" type="file"/> <br/>--%>
<%--            <button onclick="uploadFile()"> Upload </button>--%>

            <!-- Ajax to Java File Upload Logic -->
<%--            <script>--%>
<%--                async function uploadFile() {--%>
<%--                    let formData = new FormData();--%>
<%--                    formData.append("file", ajaxfile.files[0]);--%>
<%--                    await fetch('fileuploadservlet', {--%>
<%--                        method: "POST",--%>
<%--                        body: formData--%>
<%--                    });--%>
<%--                    alert('The file upload with Ajax and Java was a success!');--%>
<%--                }--%>
<%--            </script>--%>
        </div>
    </div>

</div>
<script>
    function checkErrorMessages() {

        console.log(document.getElementsByClassName("errors"));

        if (document.getElementsByClassName("errors").length > 0) {
            document.getElementsByClassName("form-container")[0].style.height = "47%";
        }

    }

    window.onload = checkErrorMessages();
</script>
</body>
<jsp:include page="partials/footer.jsp"/>
</html>
