<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ include file="/admin/header.jsp" %>

<%@ include file="/admin/topMenu.jsp" %>

<%@ include file="/admin/left.jsp" %>
<style>
.page-header{
	text-align: center;
}
<!--
th{

	background-color: #FF6666;
	color :#ffffff;	

}
-->
</style>
  
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">주문 리스트</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
				
				

            <div>
                    
                    
                    
<article>

<form name="frm" method="post"  >

<table id="productList" class="table">
   
<tr>
	<td>
	<div class="form-inline" style="float: right;">
		<div class="form-group">
	    <label for="key"></label>
	    
	    <input type="text" class="form-control" name="key" id="key" placeholder="주문자 이름">
	    
	  </div>
	 
	 
	  <div class="form-group">
	    <label for="search"></label>
	    <input type="button" class="btn btn-success"  value="검색" name="search" id="search" onclick="go_search()">
	   
	  </div>
	</div>
	  
		
	</td>
</tr>	
</table>


<table id="orderList" class="table">
	
	<tr>
		<th>주문번호(처리여부)</th><th>주문자</th><th>상품명</th><th>수량</th>
		<th>우편번호</th><th>배송지</th><th>전화</th><th>주문일</th>
	</tr>
	
	<c:forEach items="${orderList }" var="orderVO">
	 	<tr>
			<td>
				<c:choose>
					<c:when test='${orderVO.result=="1" }'>
						<span style="font-weight: bold; color: blue">${orderVO.odseq }</span>
						(<input type="checkbox"  name="result"  value="${ orderVO.odseq }" > 미처리)
					</c:when>
					<c:otherwise>
					  <span style="font-weight: bold; color: red">${orderVO.odseq }</span>
					  (<input type="checkbox" checked="checked" disabled="disabled" > 처리완료)
					</c:otherwise>
				</c:choose>
			
			</td>
			<td>${orderVO.mname }</td>
			<td><a href="MacaronicsServlet?command=admin_order_detail&oseq=${ orderVO.oseq}&id=${orderVO.id }&subjectPname=${orderVO.pname}" >${ orderVO.pname}</a></td>
			<td>${ orderVO.quantity}</td>
			<td>${ orderVO.zipNum}</td>
			<td>${ orderVO.address}</td>
			<td>${ orderVO.phone}</td>
			<td><fmt:formatDate value="${ orderVO.indate}"   /></td>
	 	</tr>
	</c:forEach>


</table>







<div style="text-align: center;">
<%-- <input type="button" class="btn btn-success" value="수정" onclick="go_mod('${tpage}', '${productVO.pseq }')" /> --%>
<input type="button" class="btn btn-warning" value="목록" onclick="go_list('${tpage}')" />
</div>


</form> 


</article>
                 
	</div>
</div>
            <!-- /.row -->
            
            
        </div>
        <!-- /#page-wrapper -->


<%@ include file="/admin/footer.jsp" %>