<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ include file="/admin/header.jsp" %>


  <script type="text/javascript">
      $(document).ready(function() {
            
          var xOffset = 200;
          var yOffset = 30;

          $(document).on("mouseover",".thumbnail",function(e){ //마우스 오버시
               
              $("body").append("<p id='preview'><img src='"+ $(this).attr("src") +"' width='400px' /></p>"); //보여줄 이미지를 선언                       
              $("#preview")
                  .css("top",(e.pageY - xOffset) + "px")
                  .css("left",(e.pageX + yOffset) + "px")
                  .css("background", "#fff")
         
                  .fadeIn("fast"); //미리보기 화면 설정 셋팅
          });
           
          $(document).on("mousemove",".thumbnail",function(e){ //마우스 이동시
              $("#preview")
                  .css("top",(e.pageY - xOffset) + "px")
                  .css("left",(e.pageX + yOffset) + "px");
          });
           
          $(document).on("mouseout",".thumbnail",function(){ //마우스 아웃시
              $("#preview").remove();
          });
            
      });
  </script>
             
 <style>
     /* 미리보기 스타일 셋팅 */
     #preview{
         z-index: 9999;
         position:absolute;
         border:0px solid #ccc;
         background:#333;
         padding:1px;
         display:none;
         color:#fff;
     }

 </style>


<%@ include file="/admin/topMenu.jsp" %>

<%@ include file="/admin/left.jsp" %>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">상품리스트</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">


                <div >
                    
                    
                    
<article>

<form name="frm" method="post">
<div class="table-responsive">
<table class="table">
  <tr>
  <td width="642">
      상품명 
     <input type="text" name="key">
     <input  type="button" name="btn_search" value="검색" onClick="go_search()" class="btn btn-primary">
     <input  type="button" name="btn_total" value="전체보기 " onClick="go_total()" class="btn btn-success">
     <input  type="button" name="btn_write" value="상품등록" onClick="go_wrt()" class="btn btn-warning">
  </td>
  </tr>
</table>
<table id="productList" class="table">
    <tr>
       <th>번호</th> <th>이미지</th><th>상품명</th><th>원가</th><th>판매가</th><th>세일가</th><th>등록일</th><th>사용유무</th>
    </tr>
    <c:choose>
    <c:when test="${productListSize<=0}">
    <tr>
      <td width="100%" colspan="7" align="center" height="23">
        등록된 상품이 없습니다.
      </td>      
    </tr>
    </c:when>
	<c:otherwise>
		<c:forEach items="${productList}" var="productVO">
	    <tr>
	      <td>${productVO.pseq}</td>
	      <td height="23" align="center"  class="wrap-img">
	       <img  class="thumbnail"  alt="" src="${productVO.image }" style="min-width: 50px; min-height: 50px; max-height: 50px; max-width: 50px" >
	       </td>
	      <td style="text-align: left; padding-left: 50px; padding-right: 0px;">   
	        <a href="#" onClick="go_detail('${tpage}', '${productVO.pseq}')">
	    	 ${productVO.name}   
	    	 </a> 
	    	 
	    	<c:if test="${productVO.totalNumber ==0  || empty productVO.totalNumber}"> 
	    	 <span class="label label-danger" >Sold Out!</span> 
	   		</c:if>
	   		
	   	   <c:if test="${  productVO.salePrice1 !=0}"> 
	    	 <span class="label label-success" >SALE!</span> 
	   		</c:if>
	   		
	   		<c:if test='${  productVO.bestyn =="y"}'> 
	    	 <span class="label label-primary" >best!</span> 
	   		</c:if>
	   		
	   		
	   	  </td>
	      <td>₩<fmt:formatNumber value="${productVO.price1}"/></td>
	      <td>₩<fmt:formatNumber value="${productVO.price2}"/></td>
	      <td>₩<fmt:formatNumber value="${productVO.salePrice1}"/></td>
	      <td><fmt:formatDate value="${productVO.indate}"/></td>
	      <td>
	      	<c:choose>
	   	 		<c:when test='${productVO.useyn=="1"}'>미사용</c:when>
	   	 		<c:otherwise>사용</c:otherwise>   	 		
	   	 	</c:choose>
	   	 	<div style="display: block;">
	   	 	  <a href="MacaronicsServlet?command=admin_product_update_form&tpage=${tpage}&pseq=${productVO.pseq}"  ><span class="label label-warning"  style="display: inline-block; ">수정</span></a> 	
	   	 	 <a href="#" onclick="go_prodcut_delect_list(this, '${productVO.pseq}')" ><span class="label label-danger"  style="display: inline-block;" >삭제</span></a>
	   	 	 </div> 
	   	  </td> 
	    </tr>
	    </c:forEach>
	     
	     <tr>
	     <td colspan="8" style="text-align: center;"> ${paging} </td></tr>
	</c:otherwise>	
</c:choose>  
</table>
</div>
</form> 
</article>
                 
                </div>
            </div>
            <!-- /.row -->
 
        </div>
        <!-- /#page-wrapper -->





<%@ include file="/admin/footer.jsp" %>
