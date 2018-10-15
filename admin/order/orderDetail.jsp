<%@page import="java.util.Enumeration"%>
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
th {
	background-color: #FF6666;
	color: #ffffff;
}
-->
</style>
<script type="text/javascript">
	function go_order_save2() {

		var count = 0;
		if (document.frm.result.length == undefined) {
			if (document.frm.result.checked == true) {
				count++;
			}
		} else {
			for (var i = 0; i < document.frm.result.length; i++) {
				if (document.frm.result[i].checked == true) {
					count++;
				}
			}
		}

		if (count == 0) {
			alert("주문처리할 항목을 선택해 주세요.");
		} else {
			document.frm.action = "MacaronicsServlet?command=admin_order_save";
			document.frm.submit();
		}
	}
</script>



<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">주문 상세정보</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">





		<!-- Blog Archive -->
		<section id="aa-blog-archive">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<small style="color: #359E38; text-align: center;">
							${subjectPname }</small>
					</div>
					<div class="col-md-12">

						<div class="aa-blog-archive-area">
							<div class="row">




								<div class="col-md-9">

									<form name="frm" method="post">
										<table class="table table-striped">
											<caption style="" class="caption">주문자 정보</caption>
											<thead>
												<tr>

													<th>주문일자</th>
													<th>주문 번호</th>
													<th>주문자</th>
													<th>주문 총액</th>


												</tr>
											</thead>
											<tbody>

												<tr>
													<td><fmt:formatDate value="${ orderDetail.indate }"
															type="date" /></td>
													<td>${orderDetail.oseq }</td>
													<td>${orderDetail.mname }</td>
													<td><fmt:formatNumber value="${totalPrice }"
															type="currency" /></td>

												</tr>

											</tbody>
										</table>



										<table class="table table-striped">
											<caption class="caption">주문 상품 정보</caption>
											<thead>
												<tr>

													<th>상품명</th>
													<th>상품 번호</th>
													<th>수량</th>
													<th>가격</th>
													<th>처리 상태</th>

												</tr>
											</thead>
											<tbody>


												<c:forEach items="${orderList }" var="orderVO">
													<tr>
														<td>${orderVO.pname }</td>
														<td>${orderVO.odseq }</td>
														<td>${orderVO.quantity }</td>
														<td><fmt:formatNumber
																value="${ orderVO.price2*orderVO.quantity }" /></td>
														<td><c:choose>
																<c:when test='${orderVO.result=="1" }'>
																	
						(<input type="checkbox" name="result" value="${ orderVO.odseq }"> <span style="font-weight: bold; color: blue">미처리</span>)
					</c:when>
																<c:otherwise>
					  
					  (<input type="checkbox" checked="checked" disabled="disabled">
																	<span style="font-weight: bold; color: red">
																		처리완료) </span>
																</c:otherwise>
															</c:choose></td>
													</tr>
												</c:forEach>

											</tbody>
										</table>

										<div style="text-align: center;">

											<input type="hidden" value="<%=url%>" name="url" /> <input
												type="button" class="btn btn-success" value="주문처리(입금확인)"
												onclick="go_order_save2();" id="orderButton" />

										</div>

									</form>

								</div>
								<!-- col-md-9" -->




							</div>






						</div>
					</div>
				</div>
			</div>

		</section>
		<!-- / Blog Archive -->




	</div>
</div>
<!-- /.row -->


</div>
<!-- /#page-wrapper -->


<%@ include file="/admin/footer.jsp"%>