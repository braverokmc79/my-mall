<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ include file="/admin/header.jsp" %>


<%@ include file="/admin/topMenu.jsp" %>

<%@ include file="/admin/left.jsp" %>

<style>
<!--
	#frm1 {
		
		border: 2px solid red;
		margin: 5px;
		padding: 5px;	
	}

 #frm2 {
		
		border: 2px solid orange;
		margin: 5px;
		padding: 5px;	
	}
		#frm3 {
		
		border: 2px solid yellow;
		margin: 5px;
		padding: 5px;	
	}
		#frm4 {
		
		border: 2px solid blue;
		margin: 5px;
		padding: 5px;	
	}
	#frm5 {
		
		border: 2px solid black;
		margin: 5px;
		padding: 5px;	
		
	}


-->
</style>
 
 <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">메인 배너</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<div class="row">
<article>

<h4 >첫번째 슬라이드 이미지</h4>
<form method="post" action="MacaronicsServlet?command=adminBannerAction" enctype="multipart/form-data" id="frm1" name="frm1">
     	
  
   <div class="frm1Image" class="form-group">
	 
	  	 
	  	  	<img src="${banner1.image }"  style="max-width: 640px; max-height:234px;" > 	
	  	  	 <input type="hidden" name="oldImg"  value="${ banner1.image}">
	  	
	  
   </div>

  <div class="form-group">  
    <input type="hidden" class="form-control"  value="1" name="bno">
  </div>
  <div class="form-group">
    <label for="subTitle">서브 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="subTitle"  value="${banner1.subTitle }" >
  </div>
  <div class="form-group">
    <label for="mainTitle">메인 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"   name="mainTitle"  value="${banner1.mainTitle }" >
  </div>
   <div class="form-group">
    <label for="link">링크</label>
    <input type="text" class="form-control" "  name="link"   value="${banner1.link }" placeholder="링크">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">파일 업로드 <small style="color: red">(필수)</small> W : 1920 , H :700 </label>
    <input type="file" id="exampleInputFile" name="file" >
    <p class="help-block">여기에 블록레벨 도움말 예제</p>
  </div>

  <button type="submit" class="btn btn-success" >제출</button>
  
 
</form>

                    


<h4 >두번째 슬라이드 이미지</h4>
<form method="post" action="MacaronicsServlet?command=adminBannerAction" enctype="multipart/form-data" id="frm2" name="frm2">
  
  
   <div class="frm1Image" class="form-group">
	 
	  	 
	  	  	<img src="${banner2.image }"  style="max-width: 640px; max-height:234px;" > 	
	  	  	 <input type="hidden" name="oldImg"  value="${ banner2.image}">
	  	
	  
   </div>

  <div class="form-group">  
    <input type="hidden" class="form-control"  value="2" name="bno">
  </div>
  <div class="form-group">
    <label for="subTitle">서브 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="subTitle"  value="${banner2.subTitle }" >
  </div>
  <div class="form-group">
    <label for="mainTitle">메인 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"   name="mainTitle"  value="${banner2.mainTitle }" >
  </div>
   <div class="form-group">
    <label for="link">링크</label>
    <input type="text" class="form-control" "  name="link"   value="${banner2.link }" placeholder="링크">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">파일 업로드 <small style="color: red">(필수)</small> W : 1920 , H :700 </label>
    <input type="file" id="exampleInputFile" name="file" >
    <p class="help-block">여기에 블록레벨 도움말 예제</p>
  </div>

  <button type="submit" class="btn btn-success" >제출</button>
  

</form>




<h4 >세번째 슬라이드 이미지</h4>
<form method="post" action="MacaronicsServlet?command=adminBannerAction" enctype="multipart/form-data" id="frm3" name="frm3">

  
   <div class="frm1Image" class="form-group">
	 
	  	 
	  	  	<img src="${banner3.image }"  style="max-width: 640px; max-height:234px;" > 	
	  	  	 <input type="hidden" name="oldImg"  value="${ banner3.image}">
	  	
	  
   </div>

  <div class="form-group">  
    <input type="hidden" class="form-control"  value="3" name="bno">
  </div>
  <div class="form-group">
    <label for="subTitle">서브 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="subTitle"  value="${banner3.subTitle }" >
  </div>
  <div class="form-group">
    <label for="mainTitle">메인 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"   name="mainTitle"  value="${banner3.mainTitle }" >
  </div>
   <div class="form-group">
    <label for="link">링크</label>
    <input type="text" class="form-control" "  name="link"   value="${banner3.link }" placeholder="링크">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">파일 업로드 <small style="color: red">(필수)</small> W : 1920 , H :700 </label>
    <input type="file" id="exampleInputFile" name="file" >
    <p class="help-block">여기에 블록레벨 도움말 예제</p>
  </div>

  <button type="submit" class="btn btn-success" >제출</button>
  

</form>



<h4 >네번째 슬라이드 이미지</h4>
<form method="post" action="MacaronicsServlet?command=adminBannerAction" enctype="multipart/form-data" id="frm4" name="frm4">

  
   <div class="frm1Image" class="form-group">
	 
	  	 
	  	  	<img src="${banner4.image }"  style="max-width: 640px; max-height:234px;" > 	
	  	  	 <input type="hidden" name="oldImg"  value="${ banner4.image}">
	  	
	  
   </div>

  <div class="form-group">  
    <input type="hidden" class="form-control"  value="4" name="bno">
  </div>
  <div class="form-group">
    <label for="subTitle">서브 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="subTitle"  value="${banner4.subTitle }" >
  </div>
  <div class="form-group">
    <label for="mainTitle">메인 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"   name="mainTitle"  value="${banner4.mainTitle }" >
  </div>
   <div class="form-group">
    <label for="link">링크</label>
    <input type="text" class="form-control" "  name="link"   value="${banner4.link }" placeholder="링크">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">파일 업로드 <small style="color: red">(필수)</small> W : 1920 , H :700 </label>
    <input type="file" id="exampleInputFile" name="file" >
    <p class="help-block">여기에 블록레벨 도움말 예제</p>
  </div>

  <button type="submit" class="btn btn-success" >제출</button>
  

</form>
<div>


<h4 >다섯번째 슬라이드 이미지</h4>
<form method="post" action="MacaronicsServlet?command=adminBannerAction" enctype="multipart/form-data" id="frm5" name="frm5">

   <div class="frm1Image" class="form-group">
	 
	  	 
	  	  	<img src="${banner5.image }"  style="max-width: 640px; max-height:234px;" > 	
	  	  	 <input type="hidden" name="oldImg"  value="${ banner5.image}">
	  	
	  
   </div>

  <div class="form-group">  
    <input type="hidden" class="form-control"  value="5" name="bno">
  </div>
  <div class="form-group">
    <label for="subTitle">서브 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="subTitle"  value="${banner5.subTitle }" >
  </div>
  <div class="form-group">
    <label for="mainTitle">메인 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"   name="mainTitle"  value="${banner5.mainTitle }" >
  </div>
   <div class="form-group">
    <label for="link">링크</label>
    <input type="text" class="form-control" "  name="link"   value="${banner5.link }" placeholder="링크">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">파일 업로드 <small style="color: red">(필수)</small> W : 1920 , H :700 </label>
    <input type="file" id="exampleInputFile" name="file" >
    <p class="help-block">여기에 블록레벨 도움말 예제</p>
  </div>

  <button type="submit" class="btn btn-success" >제출</button>
  

</form>



                    




</article>
                 
                </div>
            </div>
            <!-- /.row -->
 
        </div>
        <!-- /#page-wrapper -->



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

		$("form#frm2").submit(function(){
		    event.preventDefault(); 
		   
		    var checkValue =checkFrm(document.frm2);
			
		    var formData = new FormData($(this)[0]);
		      
		    if(checkValue==false){
				
			}else{
				  uploadSet(formData, document.frm2  , "form#frm2 .frm1Image" );	    
			}		
		 });

		$("form#frm3").submit(function(){
		    event.preventDefault(); 
		   
		    var checkValue =checkFrm(document.frm3);
			
		    var formData = new FormData($(this)[0]);
		      
		    if(checkValue==false){
				
			}else{
				  uploadSet(formData, document.frm3 , "form#frm3 .frm1Image" );	    
			}		
		 });
	
		$("form#frm4").submit(function(){
		    event.preventDefault(); 
		   
		    var checkValue =checkFrm(document.frm4);
			
		    var formData = new FormData($(this)[0]);
		      
		    if(checkValue==false){
				
			}else{
				  uploadSet(formData, document.frm4, "form#frm4 .frm1Image"  );	    
			}		
		 });
		
		
		$("form#frm5").submit(function(){
		    event.preventDefault(); 
		   
		    var checkValue =checkFrm(document.frm5);
			
		    var formData = new FormData($(this)[0]);
		      
		    if(checkValue==false){
				
			}else{
				  uploadSet(formData, document.frm5 , "form#frm5 .frm1Image" );	    
			}		
		 });
		
});




function checkFrm(Fvalue){
	
	var subTitle =Fvalue.subTitle.value;
	var mainTitle =Fvalue.mainTitle.value;
	var link =Fvalue.link.value;
	var thumbext = Fvalue.file.value; //파일을 추가한 input 박스의 값
	
	if(subTitle.trim().length==0){
		 
		alert("서브타이틀 값을 입력하세요!");
		Fvalue.subTitle.focus();
		return false;
	}else if(mainTitle.trim().length==0){
		 
		alert("메인타이틀을을 입력하세요!");
		Fvalue.mainTitle.focus();
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
	var mainTitle =event.mainTitle.value;
	var link =event.link.value;
	$.ajax({
		
		url :"MacaronicsServlet?command=adminBannerAction",
		type : "post",
		async:false,
		cache:false,
		contentType:false,
		processData:false,
		data : formData,
		success:function(returnData){
			var str ="<img src='"+returnData+"' style=\"max-width: 640px; max-height:234px;\" >";
			str += "<input type='hidden' name='oldImg' value='"+returnData+ "' >" ;
			$(imageId).html(str);
			
			event.subTitle.value ="";
			event.mainTitle.value ="";
			event.link.value="";
		},
		error :function(data){
			alert("전송 실패");
		}
		
	});
	
	
	
}



</script>


<%@ include file="/admin/footer.jsp" %>
