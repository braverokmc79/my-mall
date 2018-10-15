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
                    <h1 class="page-header">Start Promo Image  </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<div class="row">
<article>


<section id="aa-promo">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-promo-area">
            <div class="row">
              <!-- promo left -->
              <div class="col-md-5 no-padding">                
                <div class="aa-promo-left">
                  <div class="aa-promo-banner" onclick="modalOpen(this);" id="idBon1" >                  
                      <c:choose>
                      	 <c:when test="${ empty startPromo1.image }">
                      	  <img src="img/promo-banner-3.jpg" alt="img" style="max-height: 450px; max-height: 450px; cursor: pointer;" >    
                      	 </c:when>
                      	 <c:otherwise>
                      	  <img src="${ startPromo1.image  }" alt="img" style="max-height: 450px; max-height: 450px; cursor: pointer;" >    
                      	 </c:otherwise>
                      </c:choose>
                                              
                    <div class="aa-prom-content">
                      <span>${ startPromo1.subTitle }</span>
                      <h4><a href="${ startPromo1.link }">${ startPromo1.mainTitle }</a></h4>                        
                    </div>
                    <input type="hidden" class="bnoClass" value="1"> 
                    <input  type="hidden" value="450 × 450 pixels" class="sizeClass">
                  </div>
                </div>
              </div>
              <!-- promo right -->
              <div class="col-md-7 no-padding">
                <div class="aa-promo-right">
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner" onclick="modalOpen(this);" id="idBon2"  >                      
                      <c:choose>
                      	 <c:when test="${ empty startPromo2.image }">
                      	  <img src="img/promo-banner-3.jpg" alt="img" style="max-height: 300px; max-height: 220px; cursor: pointer;" >    
                      	 </c:when>
                      	 <c:otherwise>
                      	  <img src="${ startPromo2.image  }" alt="img" style="max-height: 300px; max-height: 220px; cursor: pointer;" >    
                      	 </c:otherwise>
                      </c:choose>
                                         
                      <div class="aa-prom-content">
                        <span>${startPromo2.subTitle }</span>
                        <h4><a href="${startPromo2.link }">${startPromo2.mainTitle }</a></h4>                        
                      </div>
                      <input type="hidden" class="bnoClass" value="2"> 
                      <input  type="hidden" value="300 × 220 pixels" class="sizeClass"> 
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner" onclick="modalOpen(this);"  id="idBon3">
                       <c:choose>
                      	 <c:when test="${ empty startPromo3.image }">
                      	  <img src="img/promo-banner-2.jpg" alt="img"  style="max-height: 300px; max-height: 220px; cursor: pointer;" >  
                      	 </c:when>
                      	 <c:otherwise>
                      	  <img src="${ startPromo3.image  }" alt="img"  style="max-height: 300px; max-height: 220px; cursor: pointer;" >
                      	 </c:otherwise>
                      </c:choose>                      
                                            
                      <div class="aa-prom-content">
                        <span>${ startPromo3.subTitle }</span>
                        <h4><a href="${ startPromo3.link }">${ startPromo3.mainTitle }</a></h4>                        
                      </div>
                      <input type="hidden" class="bnoClass" value="3"> 
                      <input  type="hidden" value="300 × 220 pixels" class="sizeClass"> 
                    </div>
                  </div>
                  
                  <div class="aa-single-promo-right" >
                    <div class="aa-promo-banner" onclick="modalOpen(this);" id="idBon4"  >                      
                       <c:choose>
                      	 <c:when test="${ empty startPromo4.image }">
                      	  <img src="img/promo-banner-4.jpg" alt="img" style="max-height: 300px; max-height: 220px; cursor: pointer;" >    
                      	 </c:when>
                      	 <c:otherwise>
                      	  <img src="${ startPromo4.image  }" alt="img" style="max-height: 300px; max-height: 220px; cursor: pointer;" >   
                      	 </c:otherwise>
                      </c:choose>                      
                                    
                      <div class="aa-prom-content">
                        <span>${ startPromo4.subTitle }</span>
                        <h4><a href="${ startPromo4.link }">${ startPromo4.mainTitle }</a></h4>                        
                      </div>
                      <input type="hidden" class="bnoClass" value="4" >
                      <input  type="hidden" value="300 × 220 pixels" class="sizeClass">  
                    </div>
                  </div>
                  
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner" onclick="modalOpen(this);"  id="idBon5" > 
                      <c:choose>
                      	 <c:when test="${ empty startPromo5.image }">
                      	     <img src="img/promo-banner-5.jpg" alt="img"  style="max-height: 300px; max-height: 220px; cursor: pointer;" >   
                      	 </c:when>
                      	 <c:otherwise>
                      	    <img src="${ startPromo5.image  }" alt="img"  style="max-height: 300px; max-height: 220px; cursor: pointer;" >  
                      	 </c:otherwise>
                      </c:choose>                      
                                                       
                                         
                      <div class="aa-prom-content">
                        <span>${ startPromo5.subTitle }</span>
                        <h4><a href="${ startPromo5.link }">${ startPromo5.mainTitle }</a></h4>                        
                      </div>
                      <input type="hidden" class="bnoClass" value="5"> 
                      <input  type="hidden" value="300 × 220 pixels" class="sizeClass"> 
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>




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
        <h4 class="modal-title"  >StartPromo 관리</h4>
      </div>
      <div class="modal-body">
        <p id="modalTitle"></p>
      
 <form method="post" action="MacaronicsServlet?command=adminstartPromoAction" enctype="multipart/form-data" id="frm1" name="frm1">
    
    <input type='hidden' name='oldImg'  id="oldImg" >
  <div class="form-group">  
    <input type="hidden" class="form-control"   name="bno" id="bno">
  </div>
  <div class="form-group">
    <label for="subTitle">서브 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="subTitle"  value="" id="subTitle" >
  </div>
  <div class="form-group">
    <label for="mainTitle">메인 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"   name="mainTitle"  value="" id="mainTitle" >
  </div>
   <div class="form-group">
    <label for="link">링크</label>
    <input type="text" class="form-control" "  name="link"   value=""  id="link"   placeholder="링크">
  </div>
  <div class="form-group">
    <label for="exampleInputFile">파일 업로드 <small style="color: red" id="size">(필수)</small> </label>
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
	
	
      $("#aa-promo .aa-promo-banner").mouseover(function(){
    	 
    	 	var image =$(this).find("img").attr("src");
    	  	var subTitle =$(this).find(".aa-prom-content span").text();
    	  	var mainTitle =$(this).find("h4 a").text();
    	  	var link =$(this).find("h4 a").attr("href");
    	  	var bno =$(this).find(".bnoClass").val();
    	  	var sizeClass  =$(this).find(".sizeClass").val();
    	  	//alert(image+  " :  " +  subTitle + "  : " + mainTitle+ " : " + link + " : " + bno);
    	  	$("#myEvent").val(this);
    	  	$("#oldImg").val(image);
    	  	$("#subTitle").val(subTitle);
    	  	$("#mainTitle").val(mainTitle);
    	  	$("#link").val(link);
    	  	$("#bno").val(bno);
    	  	$("#modalTitle").text(bno + " 이미지");
    	  	$("#size").text("(필수) " + sizeClass);
      });
	
	

		
		$("form#frm1").submit(function(){
		    event.preventDefault(); 
		   
		    var checkValue =checkFrm(document.frm1);
			
		    var formData = new FormData($(this)[0]);
		      
		    if(checkValue==false){
		    	
			}else{
				  uploadSet(formData, document.frm1 , "form#frm1 .frm1Image" );	    
			}		
		 });

	
		
		
		
});


function modalOpen(event){
	$("#myModal").modal("toggle");
	$(".modal-backdrop").css("display", "none");	
}




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
	var bno =event.bno.value;
	$.ajax({
		
		url :"MacaronicsServlet?command=adminstartPromoAction",
		type : "post",
		async:false,
		cache:false,
		contentType:false,
		processData:false,
		data : formData,
		success:function(returnData){

		
			
			 
    	 	$("#idBon"+bno).find("img").attr("src", returnData);
    	 	$("#idBon"+bno).find(".aa-prom-content span").html(subTitle);
    	 	$("#idBon"+bno).find("h4 a").html(mainTitle);
    	 	$("#idBon"+bno).find("h4 a").attr("href", link);
    		$("#file").val("");
			
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
