<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ include file="/admin/header.jsp" %>


<%@ include file="/admin/topMenu.jsp" %>

<%@ include file="/admin/left.jsp" %>


 
 <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Banner One 이미지 </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<div class="row">
<article>
 <div class="col-md-8">
          
          <c:choose>
          	<c:when test="${ !empty bannerOneImageVO.image	 }">
          		     <div class="aa-banner-area" id="imageA">
			            <a href="${bannerOneImageVO.link }"><img src="${bannerOneImageVO.image }" alt="${bannerOneImageVO.subTitle }" style="max-width: 800px;"></a>
			          </div>
          	</c:when>
            <c:otherwise>
            		  <div class="aa-banner-area" id="imageA">
			            <a href="#"><img src="img/fashion-banner.jpg" alt="fashion banner img" style="max-width: 800px;"></a>
			         	
			          </div>
             </c:otherwise>
          </c:choose>
        
          <div style="margin-top: 10px;">
            <small style="float: right;" class="sizeClass">사이즈 (1170 × 170 pixels)</small><button class="btn btn-success" id="imageAlterBtn">변경</button>
          </div>
			
 </div>
</article>
                 
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
        <h4 class="modal-title"  >Banner One 관리</h4>
      </div>
      <div class="modal-body">
        <p id="modalTitle"></p>
      
 <form method="post" action="MacaronicsServlet?command=adminBannerOneAction" enctype="multipart/form-data" id="frm1" name="frm1">
    
     <input type='text' name='oldImg'  id="oldImg" >
  <div class="form-group">  
    <input type="hidden" class="form-control"   name="bno" id="bno">
  </div>
  <div class="form-group">
    <label for="subTitle">서브 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="subTitle"  value="" id="subTitle" >
  </div>

   <div class="form-group">
    <label for="link">링크</label>
    <input type="text" class="form-control"   name="link"   value=""  id="link"   placeholder="링크">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">파일 업로드 <small style="color: red" id="size">(필수) 1170 × 170 pixels</small> </label>
    <input type="file" id="exampleInputFile" name="file" id="file" >
    <p class="help-block">여기에 블록레벨 도움말 예제</p>
  </div>
  <input type="hidden" name="myEvent" id="myEvent">
  <button type="submit" class="btn btn-success" >제출</button>
  
 
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
	
	

	
	

		
		$("form#frm1").submit(function(){
		    event.preventDefault(); 
		   
		    var checkValue =checkFrm(document.frm1);
			
		    var formData = new FormData($(this)[0]);
		      
		    if(checkValue==false){
		    	
			}else{
				  uploadSet(formData, document.frm1 , "form#frm1 .frm1Image" );	    
			}		
		 });

	
		
	 $("#imageAlterBtn").click(function(){
		
		 
 	 	var image =$("#imageA").find("img").attr("src");
	  	var subTitle =$("#imageA").find("img").attr("alt");
	  	var link =$("#imageA").find("a").attr("href");
	  	var bno =1;
	  
	  	//alert(image+  " :  " +  subTitle + "  : " + mainTitle+ " : " + link + " : " + bno);
	  	$("#myEvent").val(this);
	  	$("#oldImg").val(image);
	  	$("#subTitle").val(subTitle);
	  	
	  	$("#link").val(link);
	  	$("#bno").val(bno);
	  	$("#modalTitle").text(bno + " 이미지");
	
		 
		 
		 $("#myModal").modal("toggle");
		 $(".modal-backdrop").css("display", "none");	
	 });	
		
		
		
		
});




function checkFrm(Fvalue){
	
	var subTitle =Fvalue.subTitle.value;

	var link =Fvalue.link.value;
	var thumbext = Fvalue.file.value; //파일을 추가한 input 박스의 값
	
	if(subTitle.trim().length==0){
		 
		alert("서브타이틀 값을 입력하세요!");
		Fvalue.subTitle.focus();
		return false;
	}else if(thumbext !=null){
		thumbext = thumbext.slice(thumbext.indexOf(".") + 1).toLowerCase(); //파일 확장자를 잘라내고, 비교를 위해 소문자로 만듭니다.
	
		if(thumbext != "jpg" && thumbext != "png" &&  thumbext != "gif" &&  thumbext != "bmp"  && thumbext != "jpeg"){ //확장자를 확인합니다.
	
			alert('썸네일은 이미지 파일(jpg, png, gif, bmp, jpeg)만 등록 가능합니다.');
	
		  return false;
		}
		
	}
	
}


function uploadSet(formData, event, imageId){
	

	var subTitle =event.subTitle.value;

	var link =event.link.value;

	var bno =event.bno.value;
	$.ajax({
		
		url :"MacaronicsServlet?command=adminBannerOneAction",
		type : "post",
		async:false,
		cache:false,
		contentType:false,
		processData:false,
		data : formData,
		success:function(returnData){
		
			
			 
	 	 	$("#imageA").find("img").attr("src", returnData);
		  	$("#imageA").find("img").attr("alt" , subTitle);
		  	$("#imageA").find("a").attr("href", link);
		
			$("#myModal").modal("toggle");
			$(".modal-backdrop").css("display", "none");	
		},
		error :function(data){
			alert("전송 실패");
		}
		
	});
	
	
	
}



</script>


<%@ include file="/admin/footer.jsp" %>
