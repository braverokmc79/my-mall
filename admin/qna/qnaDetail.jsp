<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ include file="/admin/header.jsp" %>

<%@ include file="/admin/topMenu.jsp" %>

<%@ include file="/admin/left.jsp" %>
<script src="ckeditor/ckeditor.js"></script>
<script type="text/javascript">

function go_list(){
	var theForm =document.frm;
	theForm.action ="MacaronicsServlet?command=admin_qna_list";
	theForm.submit();
	
}


function go_rep(qseq){
	
	var theForm =document.frm;
	theForm.qseq.value=qseq;
	theForm.action ="MacaronicsServlet?command=admin_qna_repsave";
	theForm.submit();
	
}

</script>


<style>
.page-header{
	text-align: center;
}
<!--
th{

	background-color: #FF6666;
	color :#ffffff;	

}
#orderButton{

	margin-bottom: 10px;
}

#btnStyle {

	text-align:center;
	display : inline;
	margin-bottom : 10px;
}


-->
</style>
  
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Q&A 게시판</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
				
				

            <div>
                   
                    
<article>
<form name="frm" method="post">
<input type="hidden" name="qseq">
<table id="qnaTable" class="table">
	
	<tr>
		<th>제목</th>
		<td>${ qnaVO.subject } ${qnaVO.rep }</td>
		
	</tr>
	<tr>
		<th>등록일</th>
		<td><fmt:formatDate value="${qnaVO.indate }" /></td>
	</tr>
	
	<tr>
		<th>문의 내용</th>
		<td>${ qnaVO.content }</td>
	</tr>
	
	
</table>

<c:choose>

	<c:when test='${qnaVO.rep =="1" }'>
		<table  class="table">
			<tr>
				<td colspan="2" style="text-align: center;">
					<img src="admin/images/opinionimg01.gif">
				</td>
			</tr>
			<tr>
			  <td colspan="2">
			    <textarea  name="reply" id="reply"></textarea>
			   
			  </td>
			</tr>
		</table>
	</c:when>

	<c:otherwise>
		<table  class="table">
			<tr>
				<td colspan="2" style="text-align: center;">
					<img src="admin/images/opinionimg01.gif">
				</td>
			</tr>
		  <tr>
			<th style="background-color: #0076E8">관리자 답변</th>
			<td>${qnaVO.reply }</td>
		</tr>
		</table>
	</c:otherwise>

</c:choose>
 
 <div id="btnStyle">
 <input type="button" class="btn btn-success" value="저장"  onclick="go_rep('${qnaVO.qseq}')">
 <input type="button" class="btn btn-primary" value="목록" onclick="go_list()" >
</div>
</form>



</article>
                 
	</div>
</div>
            <!-- /.row -->
            
            
        </div>
        <!-- /#page-wrapper -->


<script>
	


 CKEDITOR.replace( 'reply', {//해당 이름으로 된 textarea에 에디터를 적용 <-- 이거 이름 부분입니다.
            width:'100%',
            height:'250px',
            extraPlugins : 'youtube',
           //여기 경로로 파일을 전달하여 업로드 시킨다. 
            // JSP, PHP 공통입니다. 경로를 적당히 적어줍니다.
          
         
            	
});

	
</script>




<%@ include file="/admin/footer.jsp" %>





