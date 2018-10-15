<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ include file="/admin/header.jsp" %>


<%@ include file="/admin/topMenu.jsp" %>

<%@ include file="/admin/left.jsp" %>

<style>

.upClass:HOVER {
	text-decoration: none;
	
}

</style>


 
 <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Slick List 관리 </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<div class="row">


<article>



 <form method="post" action="MacaronicsServlet?command=adminslickListAction" enctype="multipart/form-data" id="frm1" name="frm1">
    
    
  <div class="form-group">  
    <input type="hidden" class="form-control"   name="bno" id="bno">
  </div>
  <div class="form-group">
    <label for="altTitle">alt 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="altTitle"  value="" id="altTitle" >
  </div>

   <div class="form-group">
    <label for="link">링크 <small style="color: red" id="size">(필수)</small></label>
    <input type="text" class="form-control"   name="link"   value=""  id="link"   placeholder="링크">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">파일 업로드 <small style="color: red" id="size">(필수) 135 × 33 pixels</small> </label>
    <input type="file" id="exampleInputFile" name="file" id="file" >
  
  </div>
  <input type="hidden" name="myEvent" id="myEvent">	
  <button type="submit" class="btn btn-success"  id="cb">제출</button>
  
 
</form>     
      


</article>
   <h4 style="text-align: center; color: red;"> &lt; Slick List &gt;</h4>        
           
<table  class="table" style="margin-top: 20px;">
	<tr>	
		<th>번호</th>
		<th>이미지</th>
		<th>alt 타이틀</th>
		<th>링크 주소 </th>
		<th>수정</th>
		<th>삭제</th>
	</tr> 
  <c:forEach  items="${listVO }"  var="list">
		<tr>	
			<td>${ list.bno }</td>
			<td><img src="${ list.image }" ></td>
			<td>${ list.altTitle }</td>
			<td><a href='${ list.link }'>${ list.link }</a></td>
			<td><a href="javascript:void(0)"   onclick="slickUpdate(${ list.bno }, '${ list.image }', '${ list.altTitle }',  '${ list.link }', ${pageMaker.cri.page })"  class="upClass"><span  class="label label-warning" >수정</span></a></td>
			<td><a href="javascript:void(0)"  onclick="slickDelete(${ list.bno }, ${pageMaker.cri.page })"  class="upClass"><span class="label label-danger">X</span></a></td>
		</tr> 
 	 </c:forEach>
 	 

</table>          

             


<div class="aa-product-catg-pagination">
              <nav>
                <ul class="pagination">
                <c:if test="${pageMaker.prev }">
                  <li>
  <a href="MacaronicsServlet?command=adminslickListForm&page=${pageMaker.startPage -1}" aria-label="Previous">
                      
                      <span aria-hidden="true">&laquo;</span>
                      </a>
                  </li>
                </c:if> 
                 
                 <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
                 	 <c:choose>
		                   <c:when test="${pageMaker.cri.page ==idx }">
		                  		<li >
		                  		<a style="background-color: #337ab7; color:#fff" href="MacaronicsServlet?command=adminslickListForm&page=${idx}">${idx }</a>
		                  		</li>
		                  </c:when>
		                   
		                  <c:otherwise>
		                   		<li >
		                  		<a href="MacaronicsServlet?command=adminslickListForm&page=${idx}">${idx }</a>
		                  		</li>
		                  </c:otherwise>
		                  
	                 </c:choose>
	                   
                 </c:forEach>
                 
                 
                 <c:if test="${pageMaker.next && pageMaker.endPage >0 }" >
                  <li >
                    <a href="MacaronicsServlet?command=adminslickListForm&page=${pageMaker.endPage+1}"
                     aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
            
                </c:if>
                
                </ul>
              </nav>
</div>



                 
</div>
   
       
            <!-- /.row -->
 
 </div>
        <!-- /#page-wrapper -->



<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"  >Slick List 수정</h4>
      </div>
      <div class="modal-body">
        <p id="modalTitle"></p>
      
 <form method="post" action="MacaronicsServlet?command=adminSlickListUpdateAction" enctype="multipart/form-data" id="frm2" name="frm2">
    

  <div class="form-group">  
    <input type="text" class="form-control"   name="mbno" id="mbno">
    <input type="text" class="form-control"   name="moldImg" id="moldImg">
    <input type="text" class="form-control"   name="mpage" id="mpage">
  </div>
  
 
  
  <div class="form-group">
    <label for="maltTitle">alt 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="maltTitle"  value="" id="maltTitle" >
  </div>

  <div class="form-group">
    <label for="mlink">링크 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="mlink"  value="" id="mlink" >
  </div>

  <div class="form-group">
    <label for="file2">파일 <small style="color: red">(필수)</small></label>
    <input type="file" class="form-control"  name="file2"  value="" id="file2" >
  </div>


  <button type="submit" class="btn btn-success" id="submitBtn" >변경</button>
  
 
</form>     
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->






<script type="text/javascript">

$(document).ready(function(){
	
	$("#cb").click(function(event){
		event.preventDefault();
		
	   if(checkFrm1()){
		  $("#frm1").submit();
	   }
	});
	
	
	
	$("#submitBtn").click(function(event){
		event.preventDefault();
		
	   if(checkFrm2()){
		  $("#frm2").submit();
	   }
		
	});
			
		
});


function slickUpdate(bno, image, altTitle, link, page){

	$("#mbno").val(bno);
	$("#moldImg").val(image);
	$("#maltTitle").val(altTitle);
	$("#mlink").val(link);
	$("#mpage").val(page);
	$("#myModal").modal("toggle");
	$(".modal-backdrop").css("display", "none");		
}


function slickDelete(bno, page){
	
     location.href ="MacaronicsServlet?command=adminSlickListDeleteAction&bno="+ bno +"&page="+page;
}


function checkFrm1(){
	
    var altTitle =$("#altTitle").val();
    var link=$("#link").val();
    var thumbext=$("#file").val();
    
    if(altTitle.trim().length==0){
    	alert("alt 타이트를 입력 해주세요!");
    	$("#altTitle").focus();
    	return false;
    } else  if(link.trim().length==0){
    	alert("링크를  입력 해주세요!");
    	$("#link").focus();
    	return false;
    	
    }else if(thumbext !=null){
		thumbext = thumbext.slice(thumbext.indexOf(".") + 1).toLowerCase(); //파일 확장자를 잘라내고, 비교를 위해 소문자로 만듭니다.
	
		if(thumbext != "jpg" && thumbext != "png" &&  thumbext != "gif" &&  thumbext != "bmp"  && thumbext != "jpeg"){ //확장자를 확인합니다.
	
			alert('썸네일은 이미지 파일(jpg, png, gif, bmp, jpeg)만 등록 가능합니다.');
	
		  return false;
		}else{
			return true;
		}
		
	}
    	
    return true;
    
   
}



function checkFrm2(){
	
	 var altTitle =$("#maltTitle").val();
	 var link=$("#mlink").val();
	 var thumbext=$("#file2").val();
	    
	    if(altTitle.trim().length==0){
	    	alert("alt 타이트를 입력 해주세요!");
	    	$("#maltTitle").focus();
	    	return false;
	    } else  if(link.trim().length==0){
	    	alert("링크를  입력 해주세요!");
	    	$("#mlink").focus();
	    	return false;
	    	
	    }else if(thumbext !=null){
			thumbext = thumbext.slice(thumbext.indexOf(".") + 1).toLowerCase(); //파일 확장자를 잘라내고, 비교를 위해 소문자로 만듭니다.
		
			if(thumbext != "jpg" && thumbext != "png" &&  thumbext != "gif" &&  thumbext != "bmp"  && thumbext != "jpeg"){ //확장자를 확인합니다.
		
				alert('썸네일은 이미지 파일(jpg, png, gif, bmp, jpeg)만 등록 가능합니다.');
		
			  return false;
			}else{
				return true;
			}
			
		}
   
	    return true;
	    
	    
}





</script>


<%@ include file="/admin/footer.jsp" %>
