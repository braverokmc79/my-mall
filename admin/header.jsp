<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String url="MacaronicsServlet?";  %>
                 
      <%
   
   		Enumeration  emu =request.getParameterNames();
      	
   		while(emu.hasMoreElements()){
   			
   			String  key=(String)emu.nextElement();
   			String value =request.getParameter(key);
   			url +="&"+key +"="+value;
   			
   		}
   		
   %>
    


<!DOCTYPE html>
<html >

<head>

    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    
    

    <title>Macaronics 관리자 페이지</title>

    <!-- Bootstrap Core CSS -->
    <link href="admin/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="admin/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="admin/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<link href="admin/dist/css/bootstrap-formhelpers.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript"  src="admin/product/product.js">
</script>





 <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->


			
    <!--[if lt IE 9]>


			
      <script type='text/javascript' src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>


			
      <script type='text/javascript' src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>


			
    <![endif]-->


 <script src="js/jquery-3.1.0.min.js"></script>

<!-- 한글화 및 한국식 날짜표기를 적용한 datepicker 구성요소-->

<script src="http://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="admin/dist/css/daterangepicker.css">
 
<script type="text/javascript" src="admin/dist/js/moment.js"></script>
 
<script type="text/javascript" src="admin/dist/js/daterangepicker.js"></script> 
<!-- END ---- 한글화 및 한국식 날짜표기를 적용한 datepicker 구성요소-->




</head>

<body>



