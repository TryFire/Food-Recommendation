<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>选择</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">


    <style type="text/css">
        body{
            background-image: url(images/backchoice.jpg);

            /*background-position: center;*/
            background-size: cover;
            padding:0 0;
        }
        .eat{
        	
            position: absolute;
            left: 100px;
            top:350px;
        }
        .eat img{width:300px;heigth:300px;}
        .play{
            position: absolute;
            right: 100px;
            top:400px;
        }
        .play img{width:300px;heigth:300px;}
    </style>

</head>
<body>

        <div class="eat"> 
            <a href="<%= request.getContextPath() %>/foodmenu.jsp" target="_blank"><img src="images/chi.png"></a>
        </div>
        <div class="play">
            <a href="<%= request.getContextPath() %>/slightmenu.jsp" target="_blank"><img src="images/you.png"></a>
        </div>

</body>
</html>