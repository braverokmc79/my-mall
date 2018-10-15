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
                    <h1 class="page-header">메뉴 카테고리 등록</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
    <div>
                    
                    
                    
<article>

<form name="frm" method="post"   action="MacaronicsServlet?command=menu_categoryAll_action">


<table id="productList" class="table">
   
   <tr>
   	 <th>1차 메뉴</th>
   	 <td colspan="5">
	<div class="row">
	  <div class="col-lg-6">
		<select multiple="multiple"  class="form-control" size="20px"  id="menue1_select" name="select1">
		   <c:forEach items="${category1s }" var="list">
		  
		   	 <option id='${list.menuId }' onclick='optionClick("${list.menuId }");'>${list.productName }</option>
		   </c:forEach>
		</select>
	</div>

   	<div class="col-lg-3">
		<input type="text"  class="form-control" id="menu1_input"  placeholder="1차메뉴 이름">
	</div>
	<div class="col-lg-3">
		<input type="button" value="추가" id="menu1_add"  class="btn btn-success" >
	</div>
	
	</div>

   	 </td>
   </tr>
   
   <tr>
   		<th>2차 메뉴</th>
   		<td>
   		
   		<div class="row">
	  <div class="col-lg-6">
   		<select multiple="multiple"  class="form-control" size="20px" id="menue2_select" name="select1" >
			
			<c:forEach items="${category1s }"  var="cate1s">
			
				<optgroup label='${cate1s.productName }' class='${cate1s.menuId }'>
					<c:forEach items="${ category2s }"  var="cate2s">
						
						<c:if test="${cate1s.bno1 ==cate2s.bno1 }">
						
						 <option id='${cate2s.menuId }' onclick='optionNumClick("${cate2s.menuId }");'>${cate2s.productName }</option>
						</c:if>
						
					</c:forEach>
				</optgroup>
			
			</c:forEach>
			
			
		</select>
   		</div>
	
	</div>
   		
   		</td>
   
   </tr>
   
      
  <tr>
   <th>홈페이지에 적용하기</th>
	  <td>
		
		<div class="col-lg-3">
		<input type="button" value="적용" class="btn btn-success"  id="btn2">
	</div>
			
	</td>
</tr>	 
	
   
</table>

<div id="hiddenInput">
	
</div>	

</form>
 
</article>
                 
                </div>
            </div>
            <!-- /.row -->
            
            
        </div>
        <!-- /#page-wrapper -->



<%@ include file="/admin/footer.jsp" %>


<script type="text/javascript">

$(document).ready(function(){
	
	$("#menu1_add").click(function(){		
			
	
		    //입력한 이름
			var menuName =$("#menu1_input").val();
			
		    //첫번째 셀렉트의 값
			var select1=$("#menue1_select").html();
			
		    //2차 메뉴에 붙이기위한 값
			var select2=$("#menue2_select").html();
		
			$.ajax({
				type : "post",
				url : "MacaronicsServlet?command=menu_categoryW_action",
				data : {
					menuName :menuName,
				},
				//success : categorySuccess(select1, select2,id,menuName ),
				success :function(data){
					categorySuccess(select1, select2, menuName , data);
					
				},
				error :categoryFail
				
			});
		
	
	});	
	 
	 
	$("#modalUpdateButton").click(function(){
			
		var product_name =$("#modalUpdateInput").val();
		var menuId =$("#myModal").find(".modal-title").attr("data-bno");
		
		var bno=menuId.split("menu_");
		
		if(product_name.length==0){
			alert("내용을 입력하세요.");
			return;
		}else{
			
			$.ajax({
				type :'post',
				url :'MacaronicsServlet?command=menu_categoryU_action',
				data :{
					bno :bno,
					menuId : menuId,
					product_name :product_name
					
				},
				success :function(data){					
					$("#"+ menuId).html(product_name);
					$("."+menuId).attr("label", product_name);
					$("#modalUpdateInput").val("");
					$('#myModal').modal('toggle');
					 $(".modal-backdrop").css("display", "none");	
				}		
			});
		}	
	});
	
   
	$("#modalDeleteBtn").click(function(){
		
		if(confirm("하위메뉴를 포함해서 정말 삭제 하시겠습니까?  ")){			
			var menuId =$("#myModal").find(".modal-title").attr("data-bno");
			$.ajax({
				type :"post",
				url :'MacaronicsServlet?command=menu_categoryD_action',
				data : {
					menuId : menuId	
				},
				success :function(data){
					$("#"+menuId).remove();
					$("."+menuId).remove();
					$('#myModal').modal('toggle');
					 $(".modal-backdrop").css("display", "none");	
				}
			});
			
		}else{
			return;
		}
		
		
	});
	
	
	$("#modalAddBtn").click(function(){
		
		 var select2_text =$("#menue2_select").html();
		 var str =$("#modalAdd").val();
		 var id =$("#myModal").find(".modal-title").attr("data-bno");
		
		 $.ajax({
			 url : "MacaronicsServlet?command=menu_category2Add_action",
			 type :"post",
			 data : {
				 bno1MenuId :  id,
				 productName : str
			 },
			 success: function(data){
					var select2_id=$("#"+id).children().length;
					var id2 =id +"_" +(select2_id+1);
					 
					 
					 $("."+ id).append("<option   id="+id2+"  onclick='optionNumClick(\""+id2+"\");'>"+str +"</option>");
					 $("#hiddenInput").append("<input type='hidden' name="+id2+"  value='" +str +"' >");
					 $("#modalAdd").val("");
					 $("#myModal").modal("toggle");	
					 $(".modal-backdrop").css("display", "none");	
			 },
			 error :categoryFail
		 });
		  
	});
	
	
	$("#modalUpdateButton2").click(function(){
		var menuId =$("#myModal2").find(".modal-title").attr("data-bno");
		
		var text =$("#modalUpdateInput2").val();	
		
		$.ajax({
			
			type:"post",
			url : "MacaronicsServlet?command=menu_category2Update_action",
			data : {
				menuId :menuId,
				productName :text
			},
			success :function(data){
				$("#"+menuId).text(text);
				$("#myModal2").modal("toggle");
			},
			error :categoryFail
			
		});
		
		
	});
	
	
	$("#modalDeleteBtn2").click(function(){
		var menuId =$("#myModal2").find(".modal-title").attr("data-bno");
		
		$.ajax({
			
			url : "MacaronicsServlet?command=menu_category2Delete_action",
			type :"post",
			data : {	
				menuId :menuId
			},
			success :function(data){
				$("#"+menuId).remove();
				$("#myModal2").modal("toggle");
				
			},
			error :categoryFail
			
		});

	});
	
	$("#btn2").click(function(){
		
		$.ajax({
			url :"MacaronicsServlet?command=menu_categoryAll_action",
			type:"post" ,
			success:function(data){
				alert("적용했습니다. ");
			},
			error :categoryFail
		});
		
	});
	
	$("#modalUrlBtn").click(function(){
		
		var url =$.trim($("#modalUrl").val());
		 var id =$("#myModal").find(".modal-title").attr("data-bno");
		$.ajax({
			
			url :"MacaronicsServlet?command=menu_category1Url_action",
			type :"post",
			data : {
				bno1MenuId :  id,
				url :url
			},
			success :function(data){
				$("#modalUrl").val("");
				$("#myModal").modal("toggle");
				 $(".modal-backdrop").css("display", "none");	
			},
			error :categoryFail
		});	
		
	});
	
	
});



function categorySuccess(select1, select2,  menuName, data){
	var dataId = $.trim(data);
	
	$("#menue1_select").append("<option id='"+dataId +"' onclick=\"optionClick('"+dataId+ "');\">" +menuName +"</option>");
	$("#hiddenInput").append("<input type='hidden'  name='"+dataId+"' value='" +menuName +"' />");
	$("#menue2_select").append("<optgroup label='"+menuName +"' class='"+dataId+"'></optgroup>");
	$("#menu1_input").val("");
	$("#menu1_input").focus();
	
}

function categoryFail(){
	
	alert("실패");
	
}


function optionClick(id){
	
	var str =$("#"+id).html();
	

	$("#myModal").find(".modal-title").html(str);
	$("#myModal").find(".modal-title").attr("data-bno",  id);
	$("#myModal").find("#modalUpdateInput").attr("placeholder", str);
	$('#myModal').modal('toggle')
	$(".modal-backdrop").css("display", "none");	
	
}

function optionNumClick(id){
	
	var str =$("#"+id).html();
	
	$("#myModal2").find(".modal-title").html(str);
	$("#myModal2").find(".modal-title").attr("data-bno",  id);
	$("#myModal2").find("#modalUpdateInput2").attr("placeholder", str);
	$('#myModal2').modal('toggle')
	$(".modal-backdrop").css("display", "none");	
	
}

</script>


<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" data-bno="" >Modal title</h4>
      </div>
      <div class="modal-body">
      	<div class="form-inline">
		<label> <input type="text"  id="modalUpdateInput" class="form-control" placeholder="" > <button class="btn btn-primary" id="modalUpdateButton">수정</button></label>
		</div>
		 <div class="form-inline">
		 <label> <input type="text"  id="modalDelete" class="form-control" placeholder="" > <button class="btn btn-danger" id="modalDeleteBtn">삭제</button></label>
		</div>
	   <div class="form-inline">
		 <label> <input type="text"  id="modalUrl" class="form-control" placeholder="http://wwww.daum.net" > <button class="btn btn-danger" id="modalUrlBtn">연결주소</button></label>
		</div>
		<div class="form-inline">
		 <label> <input type="text"  id="modalAdd" class="form-control" placeholder="" > <button class="btn btn-success" id="modalAddBtn">하위메뉴추가</button></label>
		</div>  
		      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
     
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




<div class="modal fade" id="myModal2">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" data-bno="" >Modal title</h4>
      </div>
      <div class="modal-body">
      	<div class="form-inline">
		<label> <input type="text"  id="modalUpdateInput2" class="form-control" placeholder="" > <button class="btn btn-primary" id="modalUpdateButton2">수정</button></label>
		</div>
		 <div class="form-inline">
		 <label> <input type="text"  id="modalDelete2" class="form-control" placeholder="" > <button class="btn btn-danger" id="modalDeleteBtn2">삭제</button></label>
		</div>
		
		      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
     
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




