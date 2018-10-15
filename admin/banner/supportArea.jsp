<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ include file="/admin/header.jsp" %>


<%@ include file="/admin/topMenu.jsp" %>

<%@ include file="/admin/left.jsp" %>

<style>

.aa-support-area .aa-support-single {
  display: inline;
  text-align: center;
  padding: 0 10px;
  float: left;
  width: 100%;
  background-color: #000;
  color:#ff6666;
}
 .aa-support-area .aa-support-single span {
  font-size: 30px;
}
.aa-support-area .aa-support-single h4 {
  color: #fff;
  font-family: "Lato", sans-serif;
  font-weight: bold;
  letter-spacing: 0.5px;
}
 .aa-support-area .aa-support-single p {
  color: #ccc;
  font-size: 15px;
  margin-bottom: 0;
}



</style>


 
 <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Support Area 관리 </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<div class="row">
<article>

          

 <div class="aa-support-area">
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
            
            
             <div class="aa-support-single" id="bno1" style="cursor: pointer;">
             	<c:choose>
             		<c:when test="${ empty areaVO1.icon }">
             		    <input type="hidden" value="1">
             				<span class="fa fa-truck"></span>
			                <h4>샘플 메인타이틀</h4>
			                <p>서브 타이틀</p> 
			        </c:when>
             		<c:otherwise>
             		    <input type="hidden" value="1">
             		        <span class="${areaVO1.icon }"></span>
			                <h4>${areaVO1.mainTitle }</h4>
			                <p>${areaVO1.subTitle }</p> 
             		</c:otherwise>
             	</c:choose>
             </div>
            
            
            </div>
            
            
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single" id="bno2" style="cursor: pointer;">
             	<c:choose>
             		<c:when test="${ empty areaVO2.icon }">
             		 <input type="hidden" value="2">
             				<span class="fa fa-truck"></span>
			                <h4>샘플 메인타이틀</h4>
			                <p>서브 타이틀</p> 
			        </c:when>
             		<c:otherwise>
             		 <input type="hidden" value="2">
             		        <span class="${areaVO2.icon }"></span>
			                <h4>${areaVO2.mainTitle }</h4>
			                <p>${areaVO2.subTitle }</p> 
             		</c:otherwise>
             	</c:choose>
              </div>
            
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
               <div class="aa-support-single" id="bno3" style="cursor: pointer;">
             	<c:choose>
             		<c:when test="${ empty areaVO3.icon }">
             		 <input type="hidden" value="3">
             				<span class="fa fa-truck"></span>
			                <h4>샘플 메인타이틀</h4>
			                <p>서브 타이틀</p> 
			        </c:when>
             		<c:otherwise>
             		 <input type="hidden" value="3">
             		        <span class="${areaVO3.icon }"></span>
			                <h4>${areaVO3.mainTitle }</h4>
			                <p>${areaVO3.subTitle }</p> 
             		</c:otherwise>
             	</c:choose> 
              </div>
            
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
        <h4 class="modal-title"  >Support Area 관리</h4>
      </div>
      <div class="modal-body">
        <p id="modalTitle"></p>
      
 <form method="post" action="MacaronicsServlet?command=adminSupportAreaAction" enctype="multipart/form-data" id="frm1" name="frm1">
    
  
  <div class="form-group">  
    <input type="hidden" class="form-control"   name="bno" id="bno">
  </div>
  
   <div class="form-group">
    <label for="icon">부트스트랩 아이콘 클래스명 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="icon"  value="" id="icon" >
  </div>
  
  
  
  <div class="form-group">
    <label for="mainTitle">메인 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="mainTitle"  value="" id="mainTitle" >
  </div>

  <div class="form-group">
    <label for="subTitle">서브 타이틀 <small style="color: red">(필수)</small></label>
    <input type="text" class="form-control"  name="subTitle"  value="" id="subTitle" >
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
	
		$("#bno1").click(function(){
			modalOpen(this);		
		});
		
		$("#bno2").click(function(){
			modalOpen(this);		
		});

		$("#bno3").click(function(){
			modalOpen(this);		
		});		
		
		
		$("#submitBtn").click(function(event){
			event.preventDefault();
			
			 if(checkFrm()){
				 var bno =$("#bno").val();
				 var icon =$("#icon").val();
				 var mainTitle=$("#mainTitle").val();
				 var subTitle =$("#subTitle").val();
				 
				 $.ajax({
					 
					 url : "MacaronicsServlet?command=adminSupportAreaAction",
					 type: "post",
					 data : {
						bno :bno,
						icon :icon,
						mainTitle : mainTitle,
						subTitle :subTitle	 
					 },
					 success :function(data){
						
						 
						$("#bno"+bno).find("input").val(bno);
						$("#bno"+bno).find("span").attr("class", icon);
						$("#bno"+bno).find("h4").text(mainTitle);
						$("#bno"+bno).find("p").text(subTitle); 
						 alert("변경 했습니다.");
					 },
					 error:function(data){
						 alert("전송 실패");
					 }	 
				 });
				 
				 $("#myModal").modal("toggle");
				 $(".modal-backdrop").css("display", "none");	
			 }else{
				 
			 }
		
		});
			
		
});


function modalOpen(event){
	 var bno =$(event).find("input").val();
	var icon=$(event).find("span").attr("class");
    var mainTitle =$(event).find("h4").text();
    var subTitle =$(event).find("p").text();
    
    $("#bno").val(bno);
    $("#icon").val(icon);
    $("#mainTitle").val(mainTitle);
    $("#subTitle").val(subTitle);
    
    $("#myModal").modal("toggle");
    $(".modal-backdrop").css("display", "none");	
    
}



function checkFrm(){
	
    var icon =$("#icon").val();
    var mainTitle=$("#mainTitle").val();
    var subTitle =$("#subTitle").val();
    
    if(icon.trim().length==0){
    	alert("아이콘 클래스명을 입력 해주세요!");
    	$("#icon").focus();
    	return false;
    } else  if(mainTitle.trim().length==0){
    	alert("메인 타이틀을  입력 해주세요!");
    	$("#mainTitle").focus();
    	return false;
    } else  if(subTitle.trim().length==0){
    	alert("서브타이틀을  입력 해주세요!");
    	$("#subTitle").focus();
    	return false;
    }else {
    	
    	return true;
    }
   
}


function uploadSet(formData, event, imageId){
	

	var subTitle =event.subTitle.value;

	var link =event.link.value;

	var bno =event.bno.value;
	$.ajax({
		
		url :"MacaronicsServlet?command=adminBannerOneAction",
		type : "post",

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
