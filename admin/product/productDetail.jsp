<%@page import="com.nonage.dto.ProductVO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
#productList th {
	background-color: #5CB85C;
	color: #ffffff;
	
}

#flagDiv{
	display: none;
}
#imageTable th{

		background-color: #FF6666;
	color: #ffffff;
}
#imageTable td{

	text-align: left;	
}
#smallImage .emgClass{

	margin-right: 5px;
	display: inline-block;	
}

.essentialText {

	color: yellow;
}
-->
</style>

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">상품보기</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div>
		
			<article>

				<form name="frm" method="post"  >
						<input type="hidden" value='' name="kindId"  id="kindId">
						<input type="hidden" value='' name="kind2Id"  id="kind2Id">		
					<table id="productList" class="table">
					
						<tr>
							<th >상품번호  </th>
							<td>${productVO.pseq}</td>
						</tr>
						
						
							<tr>
							<th>상품분류  <small class='essentialText'>(필수 입력)</small></th>
							<td colspan="5">
							
							<div class="form-inline" >
							<small style="color:green; font-weight: bold; ">1차 분류 : </small> 
							${productVO.kind1}
							 &nbsp;&nbsp;&nbsp;
							 <small style="color:green; font-weight: bold; ">2차 분류</small> :
							${productVO.kind2}
							
							
							</div>
							</td>
						</tr>

						<tr>
							<th>상품명  <small class='essentialText'>(필수 입력)</small> </th>
							<td>${productVO.name}
							</td>

						</tr>
						<tr>
							<th>베스트 상품 </th>
							<td>
								<label>
								<c:choose>
									<c:when test='${productVO.bestyn =="y" }'>
										   <span class="label label-primary">best!</span>
									</c:when>
									<c:otherwise>
										아님
									</c:otherwise>
								</c:choose>  
								
							  
							</label>
							</td>

						</tr>
						
						
						<tr>
							<th>상품 공개 여부
								<small class='essentialText'>(체크시 공개)</small>
							</th>
							<td>
								<label>   
							  
							   <c:choose>
							   		<c:when test='${ productVO.useyn =="y"}'>
							   			  공개 
							   		</c:when>
							    	<c:otherwise>
							    		  비공개
							    	</c:otherwise>
							   </c:choose>
							 
							</label>
							</td>

						</tr>
						
						<tr>
							<th>가격  <small class='essentialText'>(필수 입력)</small></th>
							<td>
								
									<div class="form-group">
										<label for="price1"> 원가[A] </label> ₩<fmt:formatNumber value="${productVO.price1}"/>
											
									</div>


									<div class="form-group">
										<label for="price2"> 판매가[B] </label> ₩<fmt:formatNumber value="${productVO.price2}"/>
									</div>

									<div class="form-group">
										<label for="price3"> 판매이익 </label> ₩<fmt:formatNumber value="${productVO.price3}"/>
									</div>
								
							</td>
							
						</tr>

						<tr>
							<th>세일가격<br>(Sale 경우만 입력)
							</th>
							<td>
								<div class="form-inline">
									<div class="form-group">
										<label for="salePrice1"> <span class="label label-danger">SALE!</span></label> 
									${productVO.salePersent }% , &nbsp;&nbsp;&nbsp;
										<c:choose>
											<c:when test="${ productVO.salePrice1 !=0  && !empty productVO.salePrice1}">
											  ₩<fmt:formatNumber value="${productVO.salePrice1 }" /> 
											</c:when>
										    <c:otherwise>
										       세일 아님
										    </c:otherwise>
										</c:choose>
									</div>
						</div>
							</td>

						</tr>

						<tr>
							<th>수량  <small class='essentialText'>(필수 입력)</small></th>
							<td >
								<div class="form-inline">
									<div class="form-group">
									
										<fmt:formatNumber value="${productVO.totalNumber }" /> 개
									</div>

								</div>
							</td>
					
						</tr>

						<tr>
							<th>적립금</th>
							<td>
																	<c:choose>
										<c:when test="${ !empty productVO.reserves  && productVO.reserves!=0 }">
											${ productVO.reservesPersent }% , 
											
											₩<fmt:formatNumber value="${  productVO.reserves }"   /> 
											</c:when>
										<c:otherwise>
										  적립급액 없음
										</c:otherwise>
									</c:choose>
									
								
							</td>
						
						</tr>

						<tr id="countryTR">
							<th>제조국  <small class='essentialText'>(필수 입력)</small></th>
							<td>
					
						<a tabindex="-1" href="#" data-option="${productVO.countryId }">
						<i class="glyphicon bfh-flag-${productVO.countryId }"></i> ${productVO.scountry }</a>
									
							</td>
						</tr>


						<tr>
							<th>제조사  <small class='essentialText'>(필수 입력)</small></th>
							<td>
								<div class="form-inline">
									<div class="form-group">
										
								${productVO.company }
									</div>		
								</div>
							</td>
						
						</tr>

						<tr>
							<th>제조년월 <small class='essentialText'>(필수 입력)</small></th>
							<td>
								
								${productVO.productDate}

							</td>
						
						</tr>

						<tr>
							<th>사이즈  <small class='essentialText'>(필수 입력)</small></th>
							<td>
					<div>			
					<label >
						<% 
							ProductVO  vo =(ProductVO) request.getAttribute("productVO");
						
							String[] size =vo.getProductSize().toString().split("-");
							
							for(int i=0; i<size.length; i++){
								out.print( size[i] +" 사이즈 " );
								
								
								if(i !=size.length-1){
									out.print(",");
									out.print("&nbsp;&nbsp;");
								}
								
							}
							
						%>
 		 				
					</label>
	
        				</div>	
								
							</td>
					
						</tr>
					
					
						<tr>
							<th> 간략설명 <small class='essentialText'>(필수 입력)</small> </th>
							<td colspan="5">
							${productVO.contractContent }
							</td>
						</tr>


						<tr>
							<th>상세 내용  <small class='essentialText'>(필수 입력)</small></th>
				    	<td colspan="5" style="max-width:800px; ">
				    	 ${productVO.content }
							</td>
						
						</tr>
			
			<tr>
			<th>썸네일 이미지 </th>
			<td colspan="5">
				<div class="form-inline" id="smallImage">
			  		
			  			<%
 		   		
 		   			//StringBuffer   smallThumNmailBuffer =vo.getSmallThumNmail().toString();
 		   			//String smallThumNmail =smallThumNmailBuffer.toString();
 		   			String smallThumNmail =vo.getSmallThumNmail();
 		   		    String[] splitSmallThumNmail =smallThumNmail.split("-");

 		   			String str ="";
	   		    	 for(int i=0; i<splitSmallThumNmail.length; i++){
	   		    		 str +="<div class='emgClass'><img src='" + splitSmallThumNmail[i]+"' style='max-width:45px; min-width:45px; max-height:55px; min-height:55px;' "; 
	   		    		str +="title='클릭하시면 원본크기로 보실 수 있습니다.'" ;
	   		    		str +="style=\"cursor: pointer;\" onclick=\"doImgPop('" + splitSmallThumNmail[i]+"')\" ";   
	   		    		 str += " >";
			   		     str +="<div class='checkbox' style='display :block;' >";
			   		 	 str  +="<label >선택";
			   		 	 str +="<input type='checkbox' value='"+splitSmallThumNmail[i]+"' name='smallThumNmail[]' checked >";
			   		 	 str +="</label> </div></div>";	    
			   		
	   		    	 }
	   		  	if(str!=null){
   		    		out.print(str);	
   		    	}
 		   	%>
			
			  		
			  		
			   </div>
			</td>
		</tr>		
			<tr>
			   <th>상품 대표 이미지  <small class='essentialText'>(필수 입력)</small></th>
				<td colspan="5">
				   <div id="thumnail">
				 	<img src ='${productVO.thumNailUrl }' />
				 
				 </div>
				</td>
			</tr>
		</table>
</form>
	
		
				
					<div style="text-align: center;">

<!--[8] 수정 버튼이 눌리면 상품 수정 페이지로 이동하되 현재 페이지와 상품 일련번호 값을 전달해 준다. --> 
<input class="btn btn-danger"  type="button" value="수정" onClick="go_mod('${tpage}','${productVO.pseq}')">
<!--[9] 목록 버튼이 눌리면 상품 리스트 페이지로 이동하되 현재 페이지를 전달해 준다. --> 
<input class="btn btn-warning"  type="button" value="목록" onClick="go_list('${tpage}')">   
					</div>
			
			</article>

		</div>
	</div>
	<!-- /.row -->


</div>
<!-- /#page-wrapper -->




<%@ include file="/admin/footer.jsp"%>


<script>

$(document).ready(function(){
	
	
	$("#kind1").change(function(){
		
		var bno ="";
		var kindId ="";
		$("#kind1 option:selected").each(function(){			
			bno =$(this).attr("data-bno");
			kindId =$(this).attr("id");
		});
		
		$.ajax({
			url :"MacaronicsServlet?command=admin_product_Selected_Option",
			type :"post",
			data :{
				bno:bno	
			},
			success :function(data){
				
				$("#kind2").html(data);
				$("#kindId").val(kindId);
			},
			error :function(data){
				alert("실패");
			}
		});

	});
	
	$("#kind2").change(function(){
		
		 var str ="";
		 $("#kind2 option:selected").each(function(){
			 str =$(this).attr("id");
			 $("#kind2Id").val(str);
		 });
		
	});
	
	
	$("#resrveSelect").change(function(){
		var price1 =$("#price2").val();
		var price2 =$("#salePrice1").val();
		
		if(price1=="" && price2==""){
			alert("판매가격 혹은 세일 가격을 먼저 입력 하세요!");
			$("#resrveSelect option:selected").each(function(){
				$(this).attr("selected","");
				
			});
			$("#resrveSelect").find("#zero").attr("selected", "selected");
			return 
		}else{
		
			$("#resrveSelect option:selected").each(function(){
				var text =$(this).attr("value");
				
				if(text==0){
					$("#reserves").val("적립금액 없음");	
				}else{
					
					if($("#salePrice1").val()!=""){
						//alert("세일 가격1 : " + (price2.replace(/,/g, '')*0.01));
						var reserve =text*(price2.replace(/,/g, '')*0.01);	
						//alert(reserve);
						$("#reserves").val(comma(Math.ceil(reserve)));
					}else{
						
						var reserve =text*(price1.replace(/,/g, '')*0.01);	
						
						$("#reserves").val(comma(Math.ceil(reserve)));
					}		
				}
			});	
			
		}
		
	});
	
	$("#countryDiv").click(function(event){
		event.preventDefault();   
		$("#flagDiv").toggle();
		
	});
	
	
	
	$("#flagDiv li a").click(function(){
		
			var text  =$(this).text();
		
			
			$("#Scountry").val(text);
			
			var country =$(this).attr("data-option");
			$("#countryId").val(country);
			
			
			$("#countryDiv").attr("data-country" , country) ;
			
			
			$("#countryDivA").html(	"<span class='bfh-selectbox-option'><i class='glyphicon bfh-flag-"+country+"'></i>"+country+"</span> "+
			 "<span class='caret selectbox-caret'></span>");
			
	});
	
	$("form#data").submit(function(event){
		 
		  //disable the default form submission
		  event.preventDefault();
		 
		  //grab all form data  
		  var formData = new FormData($(this)[0]);
		  var oldImage =$("#thumnail a").attr("src");
		  $.ajax({
		    url: 'MacaronicsServlet?command=amdin_productUpload_iamgeAction',
		    type: 'POST',
		    data:  formData,
		    async: false,
		    cache: false,
		    contentType: false,
		    processData: false,
		    success: function (returndata) {
		     // alert(returndata);
		      //alert("성공");
		      
		      $("#thumnail").html(returndata);
		    },
		    error: function(data){
		    	alert("파일 용량을 확인 해 주세요!");
		    }
		  });
		 
		  return false;
		});



});



	

///  ckeditor 내 변경 알림 끝


</script>

<script type="text/javascript">
$(function() {
			// 시작 날짜와 끝나는 날짜를 지정한다. 여기에서는 30일로 설정하엿다
			var start_date = moment().subtract(29, 'days');
			var end_date = moment();
			function cb(start, end) {
				
				$('#reportrange1 span').html(start.format('YYYY-MM-DD'));
				
				var myDay =start.format('YYYY-MM-DD');
				
				$("#productDate").val(myDay);
				
			}
			cb(start_date, end_date); 

			$('#reportrange1').daterangepicker(
							{
								ranges : {
									'오늘' : [ moment(), moment() ],
									'어제' : [ moment().subtract(1, 'days'),
												moment().subtract(1, 'days') ],
									'지난 7일' : [ moment().subtract(6, 'days'),
											moment() ],
									'지난 30일' : [ moment().subtract(29, 'days'),
											moment() ],
									'이번 달' : [ moment().startOf('month'),
											moment().endOf('month') ],
									'지난 달' : [
											moment().subtract(1, 'month')
													.startOf('month'),
											moment().subtract(1, 'month')
													.endOf('month') ]
								},
								'startDate' :  start_date,
								'endDate' : end_date
							}, cb);
});


$(function() {
	// 시작 날짜와 끝나는 날짜를 지정한다. 여기에서는 30일로 설정하엿다
	var start_date = moment().subtract(29, 'days');
	var end_date = moment();
	function cb(start, end) {
		
		$('#reportrange2 span').html(
				start.format('YYYY-MM-DD'));
		
		var myDay =start.format('YYYY-MM-DD');
		$("#hiteDate1").val(myDay);
	}
	  cb(start_date, end_date); 

	$('#reportrange2').daterangepicker(
			
					{
						ranges : {
							'오늘' : [ moment(), moment() ],
							'어제' : [ moment().subtract(1, 'days'),
										moment().subtract(1, 'days') ],
							'지난 7일' : [ moment().subtract(6, 'days'),
									moment() ],
							'지난 30일' : [ moment().subtract(29, 'days'),
									moment() ],
							'이번 달' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'지난 달' : [
									moment().subtract(1, 'month')
											.startOf('month'),
									moment().subtract(1, 'month')
											.endOf('month') ]
						},
						'startDate' :  start_date,
						'endDate' : end_date
					}, cb  );
});

$(function() {
	// 시작 날짜와 끝나는 날짜를 지정한다. 여기에서는 30일로 설정하엿다
	var start_date = moment().subtract(29, 'days');
	var end_date = moment();
	function cb(start, end) {
		
		$('#reportrange3 span').html(
				start.format('YYYY-MM-DD'));
		
		var myDay =start.format('YYYY-MM-DD');
		$("#hiteDate2").val(myDay);
	}
	  cb(start_date, end_date); 

	$('#reportrange3').daterangepicker(
			
					{
						ranges : {
							'오늘' : [ moment(), moment() ],
							'어제' : [ moment().subtract(1, 'days'),
										moment().subtract(1, 'days') ],
							'지난 7일' : [ moment().subtract(6, 'days'),
									moment() ],
							'지난 30일' : [ moment().subtract(29, 'days'),
									moment() ],
							'이번 달' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'지난 달' : [
									moment().subtract(1, 'month')
											.startOf('month'),
									moment().subtract(1, 'month')
											.endOf('month') ]
						},
						'startDate' :  start_date,
						'endDate' : end_date
					}, cb  );
});

function getFileSize( obj) 
{ 
  var fileObj = document.getElementById("tempFile");
   // fileObj.dynsrc.value = obj.value; 
       var img = new Image();
       img.dynsrc = obj.value;
       document.getElementById("sizeReport").innerText = fileObj.fileSize; 
} 	

function reviewUploadImg(fileObj)
{
/* 
	var defaultSign = "../images/sample.gif";           //기본이미지 
    if(form.SignSearch.value != '')
        form.SignImage.src = form.SignSearch.value; 
    else 
        form.SignImage.src = defaultSign;
 */    
  
    var filePath = fileObj.value;
    //alert(filePath);
    var fileName = filePath.substring(filePath.lastIndexOf("\\")+1);
    var fileKind = fileName.split(".")[1].toUpperCase();
    if(fileKind != "JPG" && fileKind != "GIF" && fileKind != "PNG" && fileKind != "JPEG")
    {
     alert("jpg, gif, png 확장자를 가진 이미지 파일만 올려주세요.");
     document.getElementById("image_file").value = "";
     document.getElementById("image_file").select();
     document.selection.clear();
    
    }else{
   
    	$("#fileSubmit").click();
    	
    }
    
}
function ckImag(emg){
	
	var str ="<div class='emgClass'><img src='" + emg+"' style='max-width:45px; min-width:45px; max-height:55px; min-height:55px;' >";
	 str +="<div class='checkbox' style='display :block;' >";
	 str  +="<label >선택";
	 str +="<input type='checkbox' value='"+emg+"' name='smallThumNmail[]'>";
	 str +="</label> </div></div>";
	$("#smallImage").append(str);

}

</script>
<script>
	
$(document).ready(function(){

	 
	
});	
	



 function productSize() {
	 var chk = document.getElementsByName("productSize[]"); // 체크박스객체를 담는다
	 var len = chk.length;    //체크박스의 전체 개수

	 var checkCnt = 0;        //체크된 체크박스의 개수

	 for(var i=0; i<len; i++){
		if(chk[i].checked == true){
			 checkCnt++;        //체크된 체크박스의 개수
			 checkLast = i;     //체크된 체크박스의 인덱스
		 }		
	 } 


	if(checkCnt ==0){
		
			return true;
	}else{
		 
		return false;
	}
	 
}
 
 function smallThumNmail() {
	 var chk = document.getElementsByName("smallThumNmail[]"); // 체크박스객체를 담는다
	 var len = chk.length;    //체크박스의 전체 개수
	 var checkRow = '';      //체크된 체크박스의 value를 담기위한 변수
	 var checkCnt = 0;        //체크된 체크박스의 개수
	 var checkLast = '';      //체크된 체크박스 중 마지막 체크박스의 인덱스를 담기위한 변수
	 var rowid = '';             //체크된 체크박스의 모든 value 값을 담는다
	 var cnt = 0;                 

	 for(var i=0; i<len; i++){
		if(chk[i].checked == true){
			 checkCnt++;        //체크된 체크박스의 개수
			 checkLast = i;     //체크된 체크박스의 인덱스
		 }
		

	 } 
	 
	if(checkCnt >3){
			
			return true ;
	}else{
		return false;	
	}

}
</script>
