<%--
  Created by IntelliJ IDEA.
  User: ironicsushi
  Date: 10/25/17
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Login" />
    </jsp:include>
    <link href="../stylesheets/basic.css" rel="stylesheet">
    <link href="../stylesheets/login.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <%--SCROLLER--%>
    <div id="scroller">
        <div class="innerScrollArea">
            <ul>
                <li><img src="../imgs/dad1.jpg" height="400" /></li>
                <li><img src="../imgs/dad2.jpg" height="400" /></li>
                <li><img src="../imgs/dad3.jpg" height="400" /></li>
                <%--<li><img src="../imgs/dad4.jpg" height="400" /></li>--%>
                <li><img src="../imgs/dad5.jpg" height="400" /></li>
                <li><img src="../imgs/dad6.jpg" height="400" /></li>
                <li><img src="../imgs/dad7.jpg" height="400" /></li>
                <li><img src="../imgs/dad8.jpg" height="400" /></li>
                <li><img src="../imgs/dad9.jpg" height="400" /></li>
                <li><img src="../imgs/dad10.jpg" height="400" /></li>
                <li><img src="../imgs/dad11.jpg" height="400" /></li>
                <li><img src="../imgs/dad12.jpg" height="400" /></li>
            </ul>
        </div>
    </div>
    <div class="form-container">
        <div class="input-container">
            <form action="/login" method="post">
                    <h1>Login to Your Account</h1>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input id="username" name="username" class="form-control" type="text" value="${username}">
                        <c:if test="${error != null}">
                            <span class="errors">${error}</span>
                        </c:if>

                        <c:if test="${errors.containsKey('exist')}">
                            <span class="errors">${errors.get('exist')}</span>
                        </c:if>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" name="password" class="form-control" type="password">
                    </div>
                <input type="submit" class="btn btn-primary btn-block form-button" value="Login">
            </form>
        </div>
    </div>


    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(function(){
            var scroller = $('#scroller div.innerScrollArea');
            var scrollerContent = scroller.children('ul');
            scrollerContent.children().clone().appendTo(scrollerContent);
            var curX = 0;
            scrollerContent.children().each(function(){
                var $this = $(this);
                $this.css('left', curX);
                curX += $this.outerWidth(true);
            });
            var fullW = curX / 2;
            var viewportW = scroller.width();

            // Scrolling speed management
            var controller = {curSpeed:0, fullSpeed:2};
            var $controller = $(controller);
            var tweenToNewSpeed = function(newSpeed, duration)
            {
                if (duration === undefined)
                    duration = 600;
                $controller.stop(true).animate({curSpeed:newSpeed}, duration);
            };

            // Pause on hover
            scroller.hover(function(){
                tweenToNewSpeed(0);
            }, function(){
                tweenToNewSpeed(controller.fullSpeed);
            });

            // Scrolling management; start the automatical scrolling
            var doScroll = function()
            {
                var curX = scroller.scrollLeft();
                var newX = curX + controller.curSpeed;
                if (newX > fullW*2 - viewportW)
                    newX -= fullW;
                scroller.scrollLeft(newX);
            };
            setInterval(doScroll, 20);
            tweenToNewSpeed(controller.fullSpeed);
        });

        function checkErrorMessages() {

            if (document.getElementsByClassName("errors").length > 0) {
                document.getElementsByClassName("form-container")[0].style.height = "57%";
            }

        }

        window.onload = checkErrorMessages();

    </script>

</body>
</html>
