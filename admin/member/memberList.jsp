<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="/admin/header.jsp"%>

<%@ include file="/admin/topMenu.jsp"%>

<%@ include file="/admin/left.jsp"%>
<style>
.page-header {
	text-align: center;
}

<!--
th {
	background-color: #FF6666;
	color: #ffffff;
}
-->
</style>



<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">회원 리스트</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">





		<!-- Blog Archive -->
		<section id="aa-blog-archive">
			<div class="container">
				<div class="row">
					<div class="col-md-12">

					</div>
					<div class="col-md-12">

						<div class="aa-blog-archive-area">
							<div class="row">




								<div class="col-md-9">
							
<form name="frm" method="post" >

<table id="productList" class="table">
   
<tr>
	<td>
	<div class="form-inline" style="float: right;">
		<div class="form-group">
	    <label for="key"></label>
	    
	    <input type="text" class="form-control" name="key" id="key" placeholder="회원 이름">
	    
	  </div>
	 
	 
	  <div class="form-group">
	    <label for="search"></label>
	    <input type="button" class="btn btn-success"  value="검색" name="search" id="search" onclick="go_search()">
	   
	  </div>
	</div>
	  
		
	</td>
</tr>	
</table>
					
							</form>
</div>




	
							</div>


						</div>
					</div>
				</div>
			</div>

		</section>
		<!-- / Blog Archive -->



	<div class="row">
		<div class="col-lg-12">
<table id="memberList" class="table">
	
	<tr>
		<th>아아디(탈퇴여부)</th><th>이름</th><th>이메일</th><th>우편번호</th>
		<th>주소</th><th>전화</th><th>생일</th><th>성별</th><th>가입일</th>
	</tr>
	
	<c:forEach items="${memberList }" var="memberVO">
	 	<tr>
			<td>${memberVO.id }
				<c:choose>
					<c:when test='${memberVO.useyn=="y" }'> <small style=" color:green;">(회원)</small></c:when>
					<c:otherwise> <small style="color :red;">(탈퇴)</small> </c:otherwise>
				</c:choose>
			</td>
			<td>${memberVO.name }</td>
			<td>${ memberVO.email}</td>
			<td>${ memberVO.zipnum}</td>
			<td>${ memberVO.address}</td>
			<td>${ memberVO.phone}</td>
			<td>
			<c:choose>
				<c:when test ="${empty memberVO.byear }">*</c:when>
				<c:otherwise><small>${ memberVO.byear} - ${memberVO.bmonth } - ${ memberVO.bday }</small></c:otherwise>	
			</c:choose>
			</td>
			<td>
			  <c:choose>
			  	<c:when test='${memberVO.sex =="male"}'>남성</c:when>
			  	<c:when  test='${memberVO.sex =="female" }'>여성</c:when>
			  	<c:otherwise>*</c:otherwise>
			  </c:choose>
		</td>
			<td><fmt:formatDate value="${ memberVO.indate}"   /></td>
	 	</tr>
	</c:forEach>


</table>

</div>

</div>



	</div>
</div>
<!-- /.row -->



<!-- /#page-wrapper -->


<%@ include file="/admin/footer.jsp"%>