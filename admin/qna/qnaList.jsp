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
#orderButton{

	margin-bottom: 10px;
}

-->
</style>
  
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Q&A 리스트</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
				
				

            <div>
                    
                    
                    
<article>
<form name="frm" method="post">
<input type="hidden" name="qseq">
<table id="qnaList" class="table">
	
	<tr>
		<th>번호(답변여부)</th><th>제목</th><th>작성자</th><th>작성일</th>
		
	</tr>
	
	<c:forEach items="${qnaList }" var="qnaVO">
	 	<tr>
			<td>
			${qnaVO.qseq }
				<c:choose>
					<c:when test='${qnaVO.rep=="1" }'><small style="color:red;">(미처리)</small></c:when>
					
					<c:otherwise><small style=" color:green;">(답변처리완료)</small></c:otherwise>
				</c:choose>
			
			</td>
			<td><a href="MacaronicsServlet?command=admin_qna_detail&qseq=${qnaVO.qseq }" >${ qnaVO.subject}</a></td>
			<td>${ qnaVO.id}</td>
			<td><fmt:formatDate value="${ qnaVO.indate}"   /></td>
	 	</tr>
	</c:forEach>


</table>


</form>



</article>
                 
	</div>
</div>
            <!-- /.row -->
            
            
        </div>
        <!-- /#page-wrapper -->


<%@ include file="/admin/footer.jsp" %>