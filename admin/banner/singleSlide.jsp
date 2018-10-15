<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ include file="/admin/header.jsp" %>


<%@ include file="/admin/topMenu.jsp" %>

<%@ include file="/admin/left.jsp" %>

<style>


/*==================
 TESTIMONIAL SECTION
====================*/

#aa-testimonial {
  background-attachment: fixed;
  background-image: url("..${bgImgVO.image}");
  background-repeat: no-repeat;
  background-size: cover;
  display: inline;
  float: left;
  width: 100%;
  position: relative;
}
#aa-testimonial:after {
  content: '';
  background-color: rgba(0, 0, 0, 0.3);
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  z-index: 10;
}
#aa-testimonial .aa-testimonial-area {
  display: inline;
  float: left;
  padding: 100px 0;
  text-align: center;
  width: 100%;
  position: relative;
  z-index: 99;
}
#aa-testimonial .aa-testimonial-area .aa-testimonial-slider .aa-testimonial-single {
  color: #fff;
  padding: 50px 0;
  position: relative;
}


#aa-testimonial .aa-testimonial-area .aa-testimonial-slider .aa-testimonial-single > p {
  padding: 0 15%;
  margin-bottom: 20px;
}
#aa-testimonial .aa-testimonial-area .aa-testimonial-slider .aa-testimonial-single .aa-testimonial-img {
  border: 1px solid #fff;
  border-radius: 50%;
  height: 100px;
  margin: 0 auto;
  width: 100px;
}
#aa-testimonial .aa-testimonial-area .aa-testimonial-slider .aa-testimonial-single .aa-testimonial-quote {
  color: #fff;
  display: block;
  font-size: 35px;
  margin-top: 30px;
}
#aa-testimonial .aa-testimonial-area .aa-testimonial-slider .aa-testimonial-single .aa-testimonial-info p {
  color: #fff;
  font-weight: bold;
  letter-spacing: 1px;
  margin-bottom: 0;
}
#aa-testimonial .aa-testimonial-area .aa-testimonial-slider .aa-testimonial-single .aa-testimonial-info span {
  color: #f8f8f8;
  display: block;
  letter-spacing: 1px;
}
#aa-testimonial .aa-testimonial-area .aa-testimonial-slider .aa-testimonial-single .aa-testimonial-info a {
  color: #f8f8f8;
  letter-spacing: 1px;
}
#aa-testimonial .aa-testimonial-area .aa-testimonial-slider .slick-dots li {
  background: #fff none repeat scroll 0 0;
  cursor: pointer;
  height: 6px;
  width: 20px;
  
}


/*==================
 LATEST BLOG SECTION
====================*/

</style>


 
 <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">SingleSlide 관리 </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<div class="row">
 <div class="form-class" style="margin-bottom: 20px;">
 	<form action="" id="frm">  
    <label for="link">배경 이미지 변경 (1085 * 754) </label>
    <input type="file" class="form-control"  name="filebg"   id="filebg" class="form-class" >
    <input type="hidden" class="form-control"  name="oldImg"  value="${bgImgVO.image }"  class="form-class" >
  	<input type="submit"  class="btn btn-success"  name="filebgSubmit"  value="변경" id="filebgSubmit"   style="margin-top: 5px;">
  	</form>
 
 </div>

<article>

  <!-- Testimonial -->
  <section id="aa-testimonial">  
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="aa-testimonial-area">
            <ul class="aa-testimonial-slider">
              
              
              
              
              <!-- single slide -->
              <li>
                <div class="aa-testimonial-single"  id="bno1">
                <input type="hidden" value="1" >
                 <img class="aa-testimonial-img" src="${singSlidVo1.image }" alt="testimonial img" >
                  <span class="fa fa-quote-left aa-testimonial-quote"></span>
                  <p class="subTitle">${singSlidVo1.subTitle }</p>
                  <div class="aa-testimonial-info">
                    <p class="mainTitle">${ singSlidVo1.mainTitle }</p>
                    <a href="${singSlidVo1.link }">${ singSlidVo1.title }</a>
                  </div>
                </div>
              </li>
              <!-- single slide -->
              
              <hr></hr>
              
              <li>
                <div class="aa-testimonial-single" id="bno2">
                <input type="hidden" value="2" >
                <img class="aa-testimonial-img" src="${singSlidVo2.image }" alt="testimonial img">
                  <span class="fa fa-quote-left aa-testimonial-quote"></span>
                  <p class="subTitle">${singSlidVo2.subTitle }</p>
                  <div class="aa-testimonial-info">
                    <p class="mainTitle">${singSlidVo2.mainTitle }</p>
                    <a href="${singSlidVo2.link }">${singSlidVo2.title }</a>
                  </div>
                </div>
              </li>
           
           <hr></hr>
           
               <!-- single slide -->
              <li>
                <div class="aa-testimonial-single" id="bno3">
                <input type="hidden" value="3" >
                <img class="aa-testimonial-img" src="${singSlidVo3.image }" alt="testimonial img">
                  <span class="fa fa-quote-left aa-testimonial-quote"></span>
                  <p class="subTitle">${singSlidVo3.subTitle }</p>
                  <div class="aa-testimonial-info">
                    <p class="mainTitle">${singSlidVo3.mainTitle }</p>
                    
                    <a href="${singSlidVo3.link }">${singSlidVo3.title }</a>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Testimonial -->


</article>
                 
                </div>
     
            <!-- /.row -->
 
 </div>
        <!-- /#page-wrapper -->






<div class="modal fade" id="myModal" >
  <div class="modal-dialog">
    <div class="modal-content" style="z-index: 10000000000000000000000000000">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"  >SingleSlide 관리 </h4>
      </div>
      <div class="modal-body">
        <p id="modalTitle"></p>
 

 
      
 <form method="post" action="MacaronicsServlet?command=adminSingleSlideAction" enctype="multipart/form-data" id="frm1" name="frm1">
    
  <input type="hidden" name="oldImg" id="oldImg" >
  
  <div class="form-group">  
    <input type="hidden" class="form-control"   name="bno" id="bno">
  </div>
  
  <div class="form-group">
    <label for="subTitle">서브 타이틀 <small style="color: red">(필수)</small></label>
    <textarea class="form-control"  name="subTitle"  id="subTitle"></textarea>
   
  </div>

  
  
  <div class="form-group">
    <label for="mainTitle">메인 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="mainTitle"  value="" id="mainTitle" >
  </div>


  <div class="form-group">
    <label for="title">링크 주소이름 <small style="color: red"></small></label>
    <input type="text" class="form-control"  name="title"  value="" id="title" >
  </div>
  
  <div class="form-group">
    <label for="link">링크 </label>
    <input type="text" class="form-control"  name="link"  value="" id="link" >
  </div>
  

  <div class="form-group">
    <label for="file">파일<small style="color: red">(필수)</small></label>
    <input type="file" class="form-control"  name="file"  value="" id="file" >
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
	
	$(".aa-testimonial-single").click(function(){
		
		var oldImg =$(this).find("img").attr("src");
		var bno =$(this).find("input").val();
		var subTitle =$(this).find(".subTitle").text();
		var mainTitle=$(this).find(".mainTitle").text();
		var title=$(this).find("a").text();
		var link=$(this).find("a").attr("href");
		
		//alert(mainTitle);
		//alert(oldImg + " : " + " : " +  bno + " : " +  subTitle + " : " +  mainTitle + " : " +  title + " : " +  link);
		
		$("#oldImg").val(oldImg);
		$("#bno").val(bno);
		$("#subTitle").val(subTitle);
		$("#mainTitle").val(mainTitle);
		$("#title").val(title);
		$("#link").val(link);	
		
		$("#myModal").modal("toggle");
		$(".modal-backdrop").css("display", "none");
			
	});
	
	
	
	$("#frm1").submit(function(event){
		event.preventDefault();
	
		if(checkFrm()){
	
			var formData = new FormData($(this)[0]);
			
			$.ajax({
				
				url :"MacaronicsServlet?command=adminSingleSlideAction",
				type: "post",
				async:false,
				cache:false,
				contentType:false,
				processData:false,
				data :formData,
				success:function(data){
					
					var returnData =data.split('*');
					
					$("#"+returnData[0]).find("img").attr("src", returnData[1]);
					$("#"+returnData[0]).find(".subTitle").text($("#subTitle").val());
					$("#"+returnData[0]).find(".mainTitle").text($("#mainTitle").val());
					$("#"+returnData[0]).find("a").text($("#title").val());
					$("#"+returnData[0]).find("a").attr("href", $("#link").val());
				
				},
				error :function(data){
					alert("전송 실패");
				}	
			});
			
			$("#myModal").modal("toggle");
			$(".modal-backdrop").css("display", "none");
		}else{
		   alert("전송 실패");
		}
	});
	
	
	
	
    $("#frm").submit(function(event){
    	event.preventDefault();
    	
    	var thumbext =$("#filebg").val();
    	
    	if(thumbext !=null){
    		thumbext = thumbext.slice(thumbext.indexOf(".") + 1).toLowerCase(); //파일 확장자를 잘라내고, 비교를 위해 소문자로 만듭니다.
    	
    		if(thumbext != "jpg" && thumbext != "png" &&  thumbext != "gif" &&  thumbext != "bmp"  && thumbext != "jpeg"){ //확장자를 확인합니다.
    	
    			alert('썸네일은 이미지 파일(jpg, png, gif, bmp, jpeg)만 등록 가능합니다.');
    	
    		  return false;
    		}else{
    	
    			
            	var formData =new FormData($(this)[0]);
    	
		    	$.ajax({
					
					url :"MacaronicsServlet?command=adminSingleSlideBgImgAction",
					type: "post",
					async:false,
					cache:false,
					contentType:false,
					processData:false,
					data :formData,
					success:function(data){
						//alert(data);	
						
						$("#aa-testimonial").css("background-image", data);
						$("#filebg").val("");
						
					},
					error :function(data){
						alert("전송 실패");
					}	
				});
				
			
				
		
  		 }
    		
    		
    	}
    	
    });
	
	
});



function checkFrm(){
	
	//$("#oldImg").val();
	//$("#bno").val(bno);
	var subTitle =$("#subTitle").val();
	var mainTitle = $("#mainTitle").val();
	var thumbext =$("#file").val();   
    if(mainTitle.trim().length==0){
    	alert("메인 타이틀을  입력 해주세요!");
    	$("#mainTitle").focus();
    	return false;
   
    } else  if(subTitle.trim().length==0){
    	alert("서브타이틀을  입력 해주세요!");
    	$("#subTitle").focus();
    	return false;
    
    }else if(thumbext !=null){
		thumbext = thumbext.slice(thumbext.indexOf(".") + 1).toLowerCase(); //파일 확장자를 잘라내고, 비교를 위해 소문자로 만듭니다.
	
		if(thumbext != "jpg" && thumbext != "png" &&  thumbext != "gif" &&  thumbext != "bmp"  && thumbext != "jpeg"){ //확장자를 확인합니다.
	
			alert('썸네일은 이미지 파일(jpg, png, gif, bmp, jpeg)만 등록 가능합니다.');
	
		  return false;
		}
		
	}else {
    	
    	return true;
    }
    return true;
   
}








</script>


<%@ include file="/admin/footer.jsp" %>
