<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ include file="/admin/header.jsp" %>


<%@ include file="/admin/topMenu.jsp" %>

<%@ include file="/admin/left.jsp" %>

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
.thumbnail{

min-width: 384px;
max-width: 384px;
min-height:60px; 
 max-height:60px;  

}

.label-danger{

	cursor: pointer;
}

form{

 border: 2px solid #ff6666;
 padding: 5px;


}


</style>



 
 <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">서브 배너 이미지 관리 </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<div class="row">


<article>
 <div><h4 style="color:red">수정 및 업로드</h4></div>
<form method="post" action="MacaronicsServlet?command=adminSubBannerAction" enctype="multipart/form-data" id="frm3" name="frm3">


  <div class="form-group">  
    <select id="menuId" class="form-control" name="menuId">
    	<c:forEach items="${category1 }" var="cate1">
              <option value="${cate1.menuId }">${cate1.productName }</option>
    	</c:forEach>
    </select>
  </div>
  
   <div class="form-group">
    <label for="link">링크</label>
    <input type="text" class="form-control"  name="link" id="link"  value="#" placeholder="링크">
  </div>
  
  <div class="form-group">
    <label for="file">파일 업로드 <small style="color: red">(필수)</small> W : 1920 , H :300 </label>
    <input type="file"  name="file"  id="file">
  </div>

  <button type="submit" class="btn btn-success" >제출</button>
  

</form>


<div id="tableList" style="margin-top: 50px;">
	<table class="table">
		<tr>
			<th>1차 분류 배너 이름</th>
			<th>이미지</th>
			<th>링크 </th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${bannerImgVOs }" var='list'>
		<tr>
			<td>${list.name }</td>
			<td><img src="${list.image }" class='thumbnail'></td>
			<td>${ list.link }</td>
			<td><span class='label label-danger' onclick='deleteBanner("${list.menuId}")' >삭제</span></td>
		</tr>
		</c:forEach>
	</table>
</div>


</article>
                 
   </div>
</div>
            <!-- /.row -->
 

        <!-- /#page-wrapper -->



<script type="text/javascript">


$(document).ready(function(){
	
	
   $("#frm3").submit(function(event){  
	   
	   event.preventDefault();
	   if(checkFrm()){
	   
		   		   
		   
		   var formData =new FormData($(this)[0]);
		   
		   $.ajax({
			   url : "MacaronicsServlet?command=adminSubBannerAction",
			   type :"post",
			   data :formData,
			   async :false,
			   cache:false,
			   contentType : false,
			   processData:false,
			   success:function(returnData){
				   
				   $("#tableList").html(returnData);
				   $("#file").val("");
			   },
			   error :function(errorData){
				   alert("전송 실패");
			   }
			   
			   
		   });
		   
		 }else{	   
		   alert("실패");
	   }
	   
   });

	
		
});




function checkFrm(){
	
	var thumbext = $("#file").val();
	
	if(thumbext !=null){
		thumbext = thumbext.slice(thumbext.indexOf(".") + 1).toLowerCase(); //파일 확장자를 잘라내고, 비교를 위해 소문자로 만듭니다.
	
		if(thumbext != "jpg" && thumbext != "png" &&  thumbext != "gif" &&  thumbext != "bmp"  && thumbext != "jpeg"){ //확장자를 확인합니다.
	
			alert('썸네일은 이미지 파일(jpg, png, gif, bmp, jpeg)만 등록 가능합니다.');
	
		  return false;
		}
	}
	
	return true;
}




function deleteBanner(menuId){
	
	if(confirm("정말 삭제 하시겠습니까?")){
		
	


		$.ajax({
			
				url :"MacaronicsServlet?command=adminSubBanneDeleteAction",
				type: "post",
				data : {
					menuId : menuId
				},
				success:function(returnData){
					  
					   $("#tableList").html(returnData);
				},
				error :function(errorData){
					
				}
		});
		
	}
}



</script>


<%@ include file="/admin/footer.jsp" %>
