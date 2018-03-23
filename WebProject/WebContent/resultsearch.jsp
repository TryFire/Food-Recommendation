<%@ page import="com.siqin.entity.FoodInfo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>景点查找结果</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- bootstrap-css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--// bootstrap-css -->
    <!-- css -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!--// css -->
    <!-- gallery -->
    <link type="text/css" rel="stylesheet" href="css/cm-overlay.css" />
    <!-- //gallery -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- font -->
    <link href="http://fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
    <!-- //font -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <style>

        .search{
            margin-top: 10px;
            margin-right: 50px;
        }
        .foodSearchBody{
            width:60%;
            height:650px;
            margin:0px auto;
            margin-top: 10px;
            color:snow;
            text-align:center;
            background-color:rgba(0,0,0,0.5);
        }
        table{
            width: 100%;
        }
     .foodSearchTableName{
         width: 20%;

     }
     .foodSearchTableAddr{
         width: 60%;
     }
     th{
         text-align: center;
     }



        body{
            background: url(images/image4.jpg);
            background-size: cover;
        }
    </style>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
</head>
<body>
<div class="banner1 jarallax">


    <nav class="navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->


        <!-- Collect the nav links, forms, and other content for toggling -->

        <nav>
            <ul class="nav navbar-nav" <%String value = request.getParameter("msg"); %>>
                <li><div class="search">
                    <input required type="text" name="search" aria-label=<%=value %> placeholder=<%=value %> autocomplete="off">
                    <button>搜索</button>
                </div>

                </li>
                <li><a href="#" class="scroll">账户</a></li>
                <li><a href="#" class="scroll">关注</a></li>
                <li><a href="#" class="scroll">联系我们</a></li>

            </ul>
        </nav>

        <!-- /.navbar-collapse -->
    </nav>



</div>
<div class="foodSearchBody" >
    <table class="foodSearchTable" border="1px">
        <tr>
            <th >名称</th>
            <th >味道</th>
            <th >地址</th>
        </tr>
        <%
        	ArrayList<FoodInfo> list = (ArrayList<FoodInfo>)request.getAttribute("food_list");
        	for(int i = 0; i < list.size(); i ++){
        		FoodInfo food = list.get(i);
        %>
        <tr>
            <td class="foodSearchTableName"><%=food.getFood_name()%></td>
            <td class="foodSearchTableName"><%=food.getFood_type() %></td>
            <td class="foodSearchTableAddr"><%=food.getFood_address() %></td>
        </tr>
        <%
        	}
        %>

    </table>



</div>
</body>

</html>