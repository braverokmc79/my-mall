<%@page import="com.nonage.dto.ProductVO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="/admin/header.jsp"%>
 <script src="ckeditor/ckeditor.js"></script>

<%@ include file="/admin/topMenu.jsp"%>

<%@ include file="/admin/left.jsp"%>


<script src="/tinymce_4.4.1/tinymce.min.js"></script>
<script>tinymce.init({ 
	selector:'#contractContent', 
	
	plugins : "textcolor, colorpicker", 
     
     language: "ko", 
	
	});
</script>



<style>
.page-header {
	text-align: center;
}

<!--
#productList th {
	background-color: #337AB7;
	color: #ffffff;
}

#flagDiv{
	display: none;
}
#imageTable th{

		background-color: #337AB7;
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
			<h1 class="page-header">상품수정</h1>
			

			
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div>

			<article>

				<form name="frm" method="post"  >
						<input type="hidden"  name="kindId"  id="kindId" value="${productVO.kindId }">
						<input type="hidden"  name="kind2Id"  id="kind2Id" value="${productVO.kind2Id }">		
						
						
						
						
					<table id="productList" class="table">

							<tr>
							<th style="width: 150px;">상품번호  </th>
							<td>${productVO.pseq}</td>
							
						</tr>
						<tr>
							<th>상품분류  <small class='essentialText'>(필수 입력)</small></th>
							<td colspan="5">
							
							<div class="form-inline" >
							1차 분류 : <select name="kind1" id="kind1"   class="form-control">
									<option selected="selected"></option>
									<c:forEach items="${Category1s }" var="kind"
										varStatus="status">
										<c:choose>
											<c:when test='${kind.productName ==productVO.kind1 }'>
										 <option value="${kind.productName}" id="${kind.menuId }"
											data-bno=${kind.bno1 }  selected="selected">${kind.productName}</option>
											</c:when>
										  <c:otherwise>
										  		<option value="${kind.productName}" id="${kind.menuId }"
											data-bno=${kind.bno1 }  >${kind.productName}</option>
										  </c:otherwise>
										</c:choose>
									
										
									</c:forEach>
							</select> 
							&nbsp;2차 분류 : <select name="kind2" id="kind2"  class="form-control">
									${category2s}
									
							</select>
							 
							</div>
							</td>
						</tr>

						<tr>
							<th>상품명  <small class='essentialText'>(필수 입력)</small> </th>
							<td><input type="text" name="name" class="form-control"  value="${productVO.name}">
							</td>

						</tr>
						<tr>
							<th>베스트 상품 </th>
							<td>
								<label>   
							   베스트 상품 품목으로 선택 
							   <c:choose>
							   	<c:when test='${productVO.bestyn =="y"}'>
							   		<input type="checkbox" name='bestyn'  value="y"  checked="checked" >	
							   	</c:when>
							   		<c:otherwise>
							   			<input type="checkbox" name='bestyn'  value="y"  >
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
									<c:when test='${ productVO.useyn=="y" }' >
									공개 <input type="checkbox" name='useyn'  value="y" checked="checked">
									</c:when>
									<c:otherwise>
									공개 <input type="checkbox" name='useyn'  value="y" >
									</c:otherwise>
								</c:choose>  
							   
							</label>
							</td>

						</tr>
						
						<tr>
							<th>가격  <small class='essentialText'>(필수 입력)</small></th>
							<td>
								<div class="form-inline">
									<div class="form-group">
										<label for="price1">원가[A] ₩</label> <input type="text"
											class="form-control" id="price1" placeholder="원가"
											name="price1" onkeyup="NumFormat(this)" value='<fmt:formatNumber  value="${ productVO.price1 }"/>'>
									</div>


									<div class="form-group">
										<label for="price2">판매가[B] ₩</label> <input type="email"
											class="form-control" id="price2" name="price2" 
											onblur="go_ab()" onKeyUp="NumFormat(this)" placeholder="판매가" value='<fmt:formatNumber  value="${ productVO.price2 }"/>'>
									</div>

								</div>

							</td>
							<td rowspan="1" align="center" style="background-color: ;">
									<div class="form-group">
										<label for="price3">판매 이익 ₩</label> <input type="text"
											name="price3" readonly="readonly" class="form-control"  id="price3" value='<fmt:formatNumber  value="${ productVO.price3 }"/>'>
									</div>
							</td>
							
						</tr>


						<tr>
							<th>세일가격<br>(Sale 경우만 입력)
							</th>
							<td>
								<div class="form-inline">
								   <div class="form-group">
										<label for="saleSelect"></label> <select id="saleSelect" class="form-control">
											<option selected="selected" id="zero2" value="0">0</option>
											<c:forEach begin="1" end="99" varStatus="status">
												<c:choose>
													<c:when test="${productVO.salePersent ==status.index }">
													<option value="${ status.index}" selected="selected">${ status.index}%</option>	
													</c:when>
													<c:otherwise>
													<option value="${ status.index}" >${ status.index}%</option>
													</c:otherwise>
												</c:choose>
												
												
											</c:forEach>
											
											
										</select>
									 <input type="hidden"  name="salePersent" id="salePersent" >
									</div>
									
									
									<div class="form-group">
										<label for="salePrice1">₩</label> <input type="text"
											name="salePrice1" onkeyup="NumFormat(this)" id="salePrice1"
											value='<fmt:formatNumber value="${productVO.salePrice1 }" />'   class="form-control" readonly="readonly">
									</div>

								</div>
							</td>

						</tr>


						<tr>
							<th>수량  <small class='essentialText'>(필수 입력)</small></th>
							<td >
								<div class="form-inline">
									<div class="form-group">
										<label for="totalNumber"></label> <input type="text"
											name="totalNumber" onkeyup="NumFormat(this)" id="totalNumber"
											placeholder="총개수" class="form-control" value='<fmt:formatNumber  value="${ productVO.totalNumber }"/>'>
									</div>
								</div>
							</td>
							<td>
							</td>
						</tr>

						<tr>
							<th>적립금</th>
							<td>
								<div class="form-inline">
									<div class="form-group">
										<label for="resrveSelect"></label> <select id="resrveSelect" class="form-control">
											<option selected="selected" id="zero" value="0"></option>
											<c:forEach begin="1" end="100" varStatus="status">
												<option value="${ status.index}">${ status.index}%</option>
												<c:if test="${ status.index ==productVO.reservesPersent  }">
													<option value="${ status.index}" selected="selected">${ status.index}%</option>
												</c:if>
												
											</c:forEach>
										</select>
						<input type="hidden"  name="reservesPersent" id="reservesPersent" value="${ productVO.reservesPersent }" >
									</div>
									<label for="reserves"> 결과 :</label> <input type="text"
										readonly="readonly"  name="reserves"
										id="reserves" class="form-control" 
										value="<fmt:formatNumber  value='${productVO.reserves }' />" >
										
								</div>
							</td>
							<td>
							</td>
						</tr>

						<tr id="countryTR">
							<th>제조국  <small class='essentialText'>(필수 입력)</small></th>
							<td>
								<div class="form-inline">
									<div class="form-group">
										<label for="resrveSelect"></label>



										<div class="bfh-selectbox bfh-countries open"
											data-country="${productVO.countryId }" data-flags="true" id="countryDiv">

											
											<a class="bfh-selectbox-toggle form-control" role="button" href="#" id="countryDivA">
												<i class="glyphicon bfh-flag-${productVO.countryId }"></i>
											</a>
												
											<div class="bfh-selectbox-options"  id="flagDiv" >
												<div role="listbox"  >
													<ul role="option" >
														<li><a  href="#" data-option=""></a></li>
														<li ><a tabindex="-1" href="#" data-option="AF"><i
																class="glyphicon bfh-flag-AF"></i>Afghanistan</a></li>
														<li><a tabindex="-1" href="#" data-option="AL" ><i
																class="glyphicon bfh-flag-AL"></i>Albania</a></li>
														<li><a tabindex="-1" href="#" data-option="DZ"><i
																class="glyphicon bfh-flag-DZ"></i>Algeria</a></li>
														<li><a tabindex="-1" href="#" data-option="AS"><i
																class="glyphicon bfh-flag-AS"></i>American Samoa</a></li>
														<li><a tabindex="-1" href="#" data-option="AD"><i
																class="glyphicon bfh-flag-AD"></i>Andorra</a></li>
														<li><a tabindex="-1" href="#" data-option="AO"><i
																class="glyphicon bfh-flag-AO"></i>Angola</a></li>
														<li><a tabindex="-1" href="#" data-option="AI"><i
																class="glyphicon bfh-flag-AI"></i>Anguilla</a></li>
														<li><a tabindex="-1" href="#" data-option="AQ"><i
																class="glyphicon bfh-flag-AQ"></i>Antarctica</a></li>
														<li><a tabindex="-1" href="#" data-option="AG"><i
																class="glyphicon bfh-flag-AG"></i>Antigua and Barbuda</a></li>
														<li><a tabindex="-1" href="#" data-option="AR"><i
																class="glyphicon bfh-flag-AR"></i>Argentina</a></li>
														<li><a tabindex="-1" href="#" data-option="AM"><i
																class="glyphicon bfh-flag-AM"></i>Armenia</a></li>
														<li><a tabindex="-1" href="#" data-option="AW"><i
																class="glyphicon bfh-flag-AW"></i>Aruba</a></li>
														<li><a tabindex="-1" href="#" data-option="AU"><i
																class="glyphicon bfh-flag-AU"></i>Australia</a></li>
														<li><a tabindex="-1" href="#" data-option="AT"><i
																class="glyphicon bfh-flag-AT"></i>Austria</a></li>
														<li><a tabindex="-1" href="#" data-option="AZ"><i
																class="glyphicon bfh-flag-AZ"></i>Azerbaijan</a></li>
														<li><a tabindex="-1" href="#" data-option="BH"><i
																class="glyphicon bfh-flag-BH"></i>Bahrain</a></li>
														<li><a tabindex="-1" href="#" data-option="BD"><i
																class="glyphicon bfh-flag-BD"></i>Bangladesh</a></li>
														<li><a tabindex="-1" href="#" data-option="BB"><i
																class="glyphicon bfh-flag-BB"></i>Barbados</a></li>
														<li><a tabindex="-1" href="#" data-option="BY"><i
																class="glyphicon bfh-flag-BY"></i>Belarus</a></li>
														<li><a tabindex="-1" href="#" data-option="BE"><i
																class="glyphicon bfh-flag-BE"></i>Belgium</a></li>
														<li><a tabindex="-1" href="#" data-option="BZ"><i
																class="glyphicon bfh-flag-BZ"></i>Belize</a></li>
														<li><a tabindex="-1" href="#" data-option="BJ"><i
																class="glyphicon bfh-flag-BJ"></i>Benin</a></li>
														<li><a tabindex="-1" href="#" data-option="BM"><i
																class="glyphicon bfh-flag-BM"></i>Bermuda</a></li>
														<li><a tabindex="-1" href="#" data-option="BT"><i
																class="glyphicon bfh-flag-BT"></i>Bhutan</a></li>
														<li><a tabindex="-1" href="#" data-option="BO"><i
																class="glyphicon bfh-flag-BO"></i>Bolivia</a></li>
														<li><a tabindex="-1" href="#" data-option="BA"><i
																class="glyphicon bfh-flag-BA"></i>Bosnia and Herzegovina</a></li>
														<li><a tabindex="-1" href="#" data-option="BW"><i
																class="glyphicon bfh-flag-BW"></i>Botswana</a></li>
														<li><a tabindex="-1" href="#" data-option="BV"><i
																class="glyphicon bfh-flag-BV"></i>Bouvet Island</a></li>
														<li><a tabindex="-1" href="#" data-option="BR"><i
																class="glyphicon bfh-flag-BR"></i>Brazil</a></li>
														<li><a tabindex="-1" href="#" data-option="IO"><i
																class="glyphicon bfh-flag-IO"></i>British Indian Ocean
																Territory</a></li>
														<li><a tabindex="-1" href="#" data-option="VG"><i
																class="glyphicon bfh-flag-VG"></i>British Virgin Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="BN"><i
																class="glyphicon bfh-flag-BN"></i>Brunei</a></li>
														<li><a tabindex="-1" href="#" data-option="BG"><i
																class="glyphicon bfh-flag-BG"></i>Bulgaria</a></li>
														<li><a tabindex="-1" href="#" data-option="BF"><i
																class="glyphicon bfh-flag-BF"></i>Burkina Faso</a></li>
														<li><a tabindex="-1" href="#" data-option="BI"><i
																class="glyphicon bfh-flag-BI"></i>Burundi</a></li>
														<li><a tabindex="-1" href="#" data-option="CI"><i
																class="glyphicon bfh-flag-CI"></i>Côte d'Ivoire</a></li>
														<li><a tabindex="-1" href="#" data-option="KH"><i
																class="glyphicon bfh-flag-KH"></i>Cambodia</a></li>
														<li><a tabindex="-1" href="#" data-option="CM"><i
																class="glyphicon bfh-flag-CM"></i>Cameroon</a></li>
														<li><a tabindex="-1" href="#" data-option="CA"><i
																class="glyphicon bfh-flag-CA"></i>Canada</a></li>
														<li><a tabindex="-1" href="#" data-option="CV"><i
																class="glyphicon bfh-flag-CV"></i>Cape Verde</a></li>
														<li><a tabindex="-1" href="#" data-option="KY"><i
																class="glyphicon bfh-flag-KY"></i>Cayman Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="CF"><i
																class="glyphicon bfh-flag-CF"></i>Central African
																Republic</a></li>
														<li><a tabindex="-1" href="#" data-option="TD"><i
																class="glyphicon bfh-flag-TD"></i>Chad</a></li>
														<li><a tabindex="-1" href="#" data-option="CL"><i
																class="glyphicon bfh-flag-CL"></i>Chile</a></li>
														<li><a tabindex="-1" href="#" data-option="CN"><i
																class="glyphicon bfh-flag-CN"></i>China</a></li>
														<li><a tabindex="-1" href="#" data-option="CX"><i
																class="glyphicon bfh-flag-CX"></i>Christmas Island</a></li>
														<li><a tabindex="-1" href="#" data-option="CC"><i
																class="glyphicon bfh-flag-CC"></i>Cocos (Keeling)
																Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="CO"><i
																class="glyphicon bfh-flag-CO"></i>Colombia</a></li>
														<li><a tabindex="-1" href="#" data-option="KM"><i
																class="glyphicon bfh-flag-KM"></i>Comoros</a></li>
														<li><a tabindex="-1" href="#" data-option="CG"><i
																class="glyphicon bfh-flag-CG"></i>Congo</a></li>
														<li><a tabindex="-1" href="#" data-option="CK"><i
																class="glyphicon bfh-flag-CK"></i>Cook Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="CR"><i
																class="glyphicon bfh-flag-CR"></i>Costa Rica</a></li>
														<li><a tabindex="-1" href="#" data-option="HR"><i
																class="glyphicon bfh-flag-HR"></i>Croatia</a></li>
														<li><a tabindex="-1" href="#" data-option="CU"><i
																class="glyphicon bfh-flag-CU"></i>Cuba</a></li>
														<li><a tabindex="-1" href="#" data-option="CY"><i
																class="glyphicon bfh-flag-CY"></i>Cyprus</a></li>
														<li><a tabindex="-1" href="#" data-option="CZ"><i
																class="glyphicon bfh-flag-CZ"></i>Czech Republic</a></li>
														<li><a tabindex="-1" href="#" data-option="CD"><i
																class="glyphicon bfh-flag-CD"></i>Democratic Republic of
																the Congo</a></li>
														<li><a tabindex="-1" href="#" data-option="DK"><i
																class="glyphicon bfh-flag-DK"></i>Denmark</a></li>
														<li><a tabindex="-1" href="#" data-option="DJ"><i
																class="glyphicon bfh-flag-DJ"></i>Djibouti</a></li>
														<li><a tabindex="-1" href="#" data-option="DM"><i
																class="glyphicon bfh-flag-DM"></i>Dominica</a></li>
														<li><a tabindex="-1" href="#" data-option="DO"><i
																class="glyphicon bfh-flag-DO"></i>Dominican Republic</a></li>
														<li><a tabindex="-1" href="#" data-option="TP"><i
																class="glyphicon bfh-flag-TP"></i>East Timor</a></li>
														<li><a tabindex="-1" href="#" data-option="EC"><i
																class="glyphicon bfh-flag-EC"></i>Ecuador</a></li>
														<li><a tabindex="-1" href="#" data-option="EG"><i
																class="glyphicon bfh-flag-EG"></i>Egypt</a></li>
														<li><a tabindex="-1" href="#" data-option="SV"><i
																class="glyphicon bfh-flag-SV"></i>El Salvador</a></li>
														<li><a tabindex="-1" href="#" data-option="GQ"><i
																class="glyphicon bfh-flag-GQ"></i>Equatorial Guinea</a></li>
														<li><a tabindex="-1" href="#" data-option="ER"><i
																class="glyphicon bfh-flag-ER"></i>Eritrea</a></li>
														<li><a tabindex="-1" href="#" data-option="EE"><i
																class="glyphicon bfh-flag-EE"></i>Estonia</a></li>
														<li><a tabindex="-1" href="#" data-option="ET"><i
																class="glyphicon bfh-flag-ET"></i>Ethiopia</a></li>
														<li><a tabindex="-1" href="#" data-option="FO"><i
																class="glyphicon bfh-flag-FO"></i>Faeroe Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="FK"><i
																class="glyphicon bfh-flag-FK"></i>Falkland Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="FJ"><i
																class="glyphicon bfh-flag-FJ"></i>Fiji</a></li>
														<li><a tabindex="-1" href="#" data-option="FI"><i
																class="glyphicon bfh-flag-FI"></i>Finland</a></li>
														<li><a tabindex="-1" href="#" data-option="MK"><i
																class="glyphicon bfh-flag-MK"></i>Former Yugoslav
																Republic of Macedonia</a></li>
														<li><a tabindex="-1" href="#" data-option="FR"><i
																class="glyphicon bfh-flag-FR"></i>France</a></li>
														<li><a tabindex="-1" href="#" data-option="FX"><i
																class="glyphicon bfh-flag-FX"></i>France, Metropolitan</a></li>
														<li><a tabindex="-1" href="#" data-option="GF"><i
																class="glyphicon bfh-flag-GF"></i>French Guiana</a></li>
														<li><a tabindex="-1" href="#" data-option="PF"><i
																class="glyphicon bfh-flag-PF"></i>French Polynesia</a></li>
														<li><a tabindex="-1" href="#" data-option="TF"><i
																class="glyphicon bfh-flag-TF"></i>French Southern
																Territories</a></li>
														<li><a tabindex="-1" href="#" data-option="GA"><i
																class="glyphicon bfh-flag-GA"></i>Gabon</a></li>
														<li><a tabindex="-1" href="#" data-option="GE"><i
																class="glyphicon bfh-flag-GE"></i>Georgia</a></li>
														<li><a tabindex="-1" href="#" data-option="DE"><i
																class="glyphicon bfh-flag-DE"></i>Germany</a></li>
														<li><a tabindex="-1" href="#" data-option="GH"><i
																class="glyphicon bfh-flag-GH"></i>Ghana</a></li>
														<li><a tabindex="-1" href="#" data-option="GI"><i
																class="glyphicon bfh-flag-GI"></i>Gibraltar</a></li>
														<li><a tabindex="-1" href="#" data-option="GR"><i
																class="glyphicon bfh-flag-GR"></i>Greece</a></li>
														<li><a tabindex="-1" href="#" data-option="GL"><i
																class="glyphicon bfh-flag-GL"></i>Greenland</a></li>
														<li><a tabindex="-1" href="#" data-option="GD"><i
																class="glyphicon bfh-flag-GD"></i>Grenada</a></li>
														<li><a tabindex="-1" href="#" data-option="GP"><i
																class="glyphicon bfh-flag-GP"></i>Guadeloupe</a></li>
														<li><a tabindex="-1" href="#" data-option="GU"><i
																class="glyphicon bfh-flag-GU"></i>Guam</a></li>
														<li><a tabindex="-1" href="#" data-option="GT"><i
																class="glyphicon bfh-flag-GT"></i>Guatemala</a></li>
														<li><a tabindex="-1" href="#" data-option="GN"><i
																class="glyphicon bfh-flag-GN"></i>Guinea</a></li>
														<li><a tabindex="-1" href="#" data-option="GW"><i
																class="glyphicon bfh-flag-GW"></i>Guinea-Bissau</a></li>
														<li><a tabindex="-1" href="#" data-option="GY"><i
																class="glyphicon bfh-flag-GY"></i>Guyana</a></li>
														<li><a tabindex="-1" href="#" data-option="HT"><i
																class="glyphicon bfh-flag-HT"></i>Haiti</a></li>
														<li><a tabindex="-1" href="#" data-option="HM"><i
																class="glyphicon bfh-flag-HM"></i>Heard and Mc Donald
																Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="HN"><i
																class="glyphicon bfh-flag-HN"></i>Honduras</a></li>
														<li><a tabindex="-1" href="#" data-option="HK"><i
																class="glyphicon bfh-flag-HK"></i>Hong Kong</a></li>
														<li><a tabindex="-1" href="#" data-option="HU"><i
																class="glyphicon bfh-flag-HU"></i>Hungary</a></li>
														<li><a tabindex="-1" href="#" data-option="IS"><i
																class="glyphicon bfh-flag-IS"></i>Iceland</a></li>
														<li><a tabindex="-1" href="#" data-option="IN"><i
																class="glyphicon bfh-flag-IN"></i>India</a></li>
														<li><a tabindex="-1" href="#" data-option="ID"><i
																class="glyphicon bfh-flag-ID"></i>Indonesia</a></li>
														<li><a tabindex="-1" href="#" data-option="IR"><i
																class="glyphicon bfh-flag-IR"></i>Iran</a></li>
														<li><a tabindex="-1" href="#" data-option="IQ"><i
																class="glyphicon bfh-flag-IQ"></i>Iraq</a></li>
														<li><a tabindex="-1" href="#" data-option="IE"><i
																class="glyphicon bfh-flag-IE"></i>Ireland</a></li>
														<li><a tabindex="-1" href="#" data-option="IL"><i
																class="glyphicon bfh-flag-IL"></i>Israel</a></li>
														<li><a tabindex="-1" href="#" data-option="IT"><i
																class="glyphicon bfh-flag-IT"></i>Italy</a></li>
														<li><a tabindex="-1" href="#" data-option="JM"><i
																class="glyphicon bfh-flag-JM"></i>Jamaica</a></li>
														<li><a tabindex="-1" href="#" data-option="JP"><i
																class="glyphicon bfh-flag-JP"></i>Japan</a></li>
														<li><a tabindex="-1" href="#" data-option="JO"><i
																class="glyphicon bfh-flag-JO"></i>Jordan</a></li>
														<li><a tabindex="-1" href="#" data-option="KZ"><i
																class="glyphicon bfh-flag-KZ"></i>Kazakhstan</a></li>
														<li><a tabindex="-1" href="#" data-option="KE"><i
																class="glyphicon bfh-flag-KE"></i>Kenya</a></li>
														<li><a tabindex="-1" href="#" data-option="KI"><i
																class="glyphicon bfh-flag-KI"></i>Kiribati</a></li>
														<li><a tabindex="-1" href="#" data-option="KW"><i
																class="glyphicon bfh-flag-KW"></i>Kuwait</a></li>
														<li><a tabindex="-1" href="#" data-option="KG"><i
																class="glyphicon bfh-flag-KG"></i>Kyrgyzstan</a></li>
														<li><a tabindex="-1" href="#" data-option="LA"><i
																class="glyphicon bfh-flag-LA"></i>Laos</a></li>
														<li><a tabindex="-1" href="#" data-option="LV"><i
																class="glyphicon bfh-flag-LV"></i>Latvia</a></li>
														<li><a tabindex="-1" href="#" data-option="LB"><i
																class="glyphicon bfh-flag-LB"></i>Lebanon</a></li>
														<li><a tabindex="-1" href="#" data-option="LS"><i
																class="glyphicon bfh-flag-LS"></i>Lesotho</a></li>
														<li><a tabindex="-1" href="#" data-option="LR"><i
																class="glyphicon bfh-flag-LR"></i>Liberia</a></li>
														<li><a tabindex="-1" href="#" data-option="LY"><i
																class="glyphicon bfh-flag-LY"></i>Libya</a></li>
														<li><a tabindex="-1" href="#" data-option="LI"><i
																class="glyphicon bfh-flag-LI"></i>Liechtenstein</a></li>
														<li><a tabindex="-1" href="#" data-option="LT"><i
																class="glyphicon bfh-flag-LT"></i>Lithuania</a></li>
														<li><a tabindex="-1" href="#" data-option="LU"><i
																class="glyphicon bfh-flag-LU"></i>Luxembourg</a></li>
														<li><a tabindex="-1" href="#" data-option="MO"><i
																class="glyphicon bfh-flag-MO"></i>Macau</a></li>
														<li><a tabindex="-1" href="#" data-option="MG"><i
																class="glyphicon bfh-flag-MG"></i>Madagascar</a></li>
														<li><a tabindex="-1" href="#" data-option="MW"><i
																class="glyphicon bfh-flag-MW"></i>Malawi</a></li>
														<li><a tabindex="-1" href="#" data-option="MY"><i
																class="glyphicon bfh-flag-MY"></i>Malaysia</a></li>
														<li><a tabindex="-1" href="#" data-option="MV"><i
																class="glyphicon bfh-flag-MV"></i>Maldives</a></li>
														<li><a tabindex="-1" href="#" data-option="ML"><i
																class="glyphicon bfh-flag-ML"></i>Mali</a></li>
														<li><a tabindex="-1" href="#" data-option="MT"><i
																class="glyphicon bfh-flag-MT"></i>Malta</a></li>
														<li><a tabindex="-1" href="#" data-option="MH"><i
																class="glyphicon bfh-flag-MH"></i>Marshall Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="MQ"><i
																class="glyphicon bfh-flag-MQ"></i>Martinique</a></li>
														<li><a tabindex="-1" href="#" data-option="MR"><i
																class="glyphicon bfh-flag-MR"></i>Mauritania</a></li>
														<li><a tabindex="-1" href="#" data-option="MU"><i
																class="glyphicon bfh-flag-MU"></i>Mauritius</a></li>
														<li><a tabindex="-1" href="#" data-option="YT"><i
																class="glyphicon bfh-flag-YT"></i>Mayotte</a></li>
														<li><a tabindex="-1" href="#" data-option="MX"><i
																class="glyphicon bfh-flag-MX"></i>Mexico</a></li>
														<li><a tabindex="-1" href="#" data-option="FM"><i
																class="glyphicon bfh-flag-FM"></i>Micronesia</a></li>
														<li><a tabindex="-1" href="#" data-option="MD"><i
																class="glyphicon bfh-flag-MD"></i>Moldova</a></li>
														<li><a tabindex="-1" href="#" data-option="MC"><i
																class="glyphicon bfh-flag-MC"></i>Monaco</a></li>
														<li><a tabindex="-1" href="#" data-option="MN"><i
																class="glyphicon bfh-flag-MN"></i>Mongolia</a></li>
														<li><a tabindex="-1" href="#" data-option="ME"><i
																class="glyphicon bfh-flag-ME"></i>Montenegro</a></li>
														<li><a tabindex="-1" href="#" data-option="MS"><i
																class="glyphicon bfh-flag-MS"></i>Montserrat</a></li>
														<li><a tabindex="-1" href="#" data-option="MA"><i
																class="glyphicon bfh-flag-MA"></i>Morocco</a></li>
														<li><a tabindex="-1" href="#" data-option="MZ"><i
																class="glyphicon bfh-flag-MZ"></i>Mozambique</a></li>
														<li><a tabindex="-1" href="#" data-option="MM"><i
																class="glyphicon bfh-flag-MM"></i>Myanmar</a></li>
														<li><a tabindex="-1" href="#" data-option="NA"><i
																class="glyphicon bfh-flag-NA"></i>Namibia</a></li>
														<li><a tabindex="-1" href="#" data-option="NR"><i
																class="glyphicon bfh-flag-NR"></i>Nauru</a></li>
														<li><a tabindex="-1" href="#" data-option="NP"><i
																class="glyphicon bfh-flag-NP"></i>Nepal</a></li>
														<li><a tabindex="-1" href="#" data-option="NL"><i
																class="glyphicon bfh-flag-NL"></i>Netherlands</a></li>
														<li><a tabindex="-1" href="#" data-option="AN"><i
																class="glyphicon bfh-flag-AN"></i>Netherlands Antilles</a></li>
														<li><a tabindex="-1" href="#" data-option="NC"><i
																class="glyphicon bfh-flag-NC"></i>New Caledonia</a></li>
														<li><a tabindex="-1" href="#" data-option="NZ"><i
																class="glyphicon bfh-flag-NZ"></i>New Zealand</a></li>
														<li ><a tabindex="-1" href="#" data-option="NI"><i
																class="glyphicon bfh-flag-NI"></i>Nicaragua</a></li>
														<li><a tabindex="-1" href="#" data-option="NE"><i
																class="glyphicon bfh-flag-NE"></i>Niger</a></li>
														<li><a tabindex="-1" href="#" data-option="NG"><i
																class="glyphicon bfh-flag-NG"></i>Nigeria</a></li>
														<li><a tabindex="-1" href="#" data-option="NU"><i
																class="glyphicon bfh-flag-NU"></i>Niue</a></li>
														<li><a tabindex="-1" href="#" data-option="NF"><i
																class="glyphicon bfh-flag-NF"></i>Norfolk Island</a></li>
														<li><a tabindex="-1" href="#" data-option="KP"><i
																class="glyphicon bfh-flag-KP"></i>North Korea</a></li>
																
														<li><a tabindex="-1" href="#" data-option="MP"><i
																class="glyphicon bfh-flag-MP"></i>Northern Marianas</a></li>
														<li><a tabindex="-1" href="#" data-option="NO"><i
																class="glyphicon bfh-flag-NO"></i>Norway</a></li>
														<li><a tabindex="-1" href="#" data-option="OM"><i
																class="glyphicon bfh-flag-OM"></i>Oman</a></li>
														<li><a tabindex="-1" href="#" data-option="PK"><i
																class="glyphicon bfh-flag-PK"></i>Pakistan</a></li>
														<li><a tabindex="-1" href="#" data-option="PW"><i
																class="glyphicon bfh-flag-PW"></i>Palau</a></li>
														<li><a tabindex="-1" href="#" data-option="PS"><i
																class="glyphicon bfh-flag-PS"></i>Palestine</a></li>
														<li><a tabindex="-1" href="#" data-option="PA"><i
																class="glyphicon bfh-flag-PA"></i>Panama</a></li>
														<li><a tabindex="-1" href="#" data-option="PG"><i
																class="glyphicon bfh-flag-PG"></i>Papua New Guinea</a></li>
														<li><a tabindex="-1" href="#" data-option="PY"><i
																class="glyphicon bfh-flag-PY"></i>Paraguay</a></li>
														<li><a tabindex="-1" href="#" data-option="PE"><i
																class="glyphicon bfh-flag-PE"></i>Peru</a></li>
														<li><a tabindex="-1" href="#" data-option="PH"><i
																class="glyphicon bfh-flag-PH"></i>Philippines</a></li>
														<li><a tabindex="-1" href="#" data-option="PN"><i
																class="glyphicon bfh-flag-PN"></i>Pitcairn Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="PL"><i
																class="glyphicon bfh-flag-PL"></i>Poland</a></li>
														<li><a tabindex="-1" href="#" data-option="PT"><i
																class="glyphicon bfh-flag-PT"></i>Portugal</a></li>
														<li><a tabindex="-1" href="#" data-option="PR"><i
																class="glyphicon bfh-flag-PR"></i>Puerto Rico</a></li>
														<li><a tabindex="-1" href="#" data-option="QA"><i
																class="glyphicon bfh-flag-QA"></i>Qatar</a></li>
														<li><a tabindex="-1" href="#" data-option="RE"><i
																class="glyphicon bfh-flag-RE"></i>Reunion</a></li>
														<li><a tabindex="-1" href="#" data-option="RO"><i
																class="glyphicon bfh-flag-RO"></i>Romania</a></li>
														<li><a tabindex="-1" href="#" data-option="RU"><i
																class="glyphicon bfh-flag-RU"></i>Russia</a></li>
														<li><a tabindex="-1" href="#" data-option="RW"><i
																class="glyphicon bfh-flag-RW"></i>Rwanda</a></li>
														<li><a tabindex="-1" href="#" data-option="ST"><i
																class="glyphicon bfh-flag-ST"></i>São Tomé and Príncipe</a></li>
														<li><a tabindex="-1" href="#" data-option="SH"><i
																class="glyphicon bfh-flag-SH"></i>Saint Helena</a></li>
														<li><a tabindex="-1" href="#" data-option="PM"><i
																class="glyphicon bfh-flag-PM"></i>St. Pierre and
																Miquelon</a></li>
														<li><a tabindex="-1" href="#" data-option="KN"><i
																class="glyphicon bfh-flag-KN"></i>Saint Kitts and Nevis</a></li>
														<li><a tabindex="-1" href="#" data-option="LC"><i
																class="glyphicon bfh-flag-LC"></i>Saint Lucia</a></li>
														<li><a tabindex="-1" href="#" data-option="VC"><i
																class="glyphicon bfh-flag-VC"></i>Saint Vincent and the
																Grenadines</a></li>
														<li><a tabindex="-1" href="#" data-option="WS"><i
																class="glyphicon bfh-flag-WS"></i>Samoa</a></li>
														<li><a tabindex="-1" href="#" data-option="SM"><i
																class="glyphicon bfh-flag-SM"></i>San Marino</a></li>
														<li><a tabindex="-1" href="#" data-option="SA"><i
																class="glyphicon bfh-flag-SA"></i>Saudi Arabia</a></li>
														<li><a tabindex="-1" href="#" data-option="SN"><i
																class="glyphicon bfh-flag-SN"></i>Senegal</a></li>
														<li><a tabindex="-1" href="#" data-option="RS"><i
																class="glyphicon bfh-flag-RS"></i>Serbia</a></li>
														<li><a tabindex="-1" href="#" data-option="SC"><i
																class="glyphicon bfh-flag-SC"></i>Seychelles</a></li>
														<li><a tabindex="-1" href="#" data-option="SL"><i
																class="glyphicon bfh-flag-SL"></i>Sierra Leone</a></li>
														<li><a tabindex="-1" href="#" data-option="SG"><i
																class="glyphicon bfh-flag-SG"></i>Singapore</a></li>
														<li><a tabindex="-1" href="#" data-option="SK"><i
																class="glyphicon bfh-flag-SK"></i>Slovakia</a></li>
														<li><a tabindex="-1" href="#" data-option="SI"><i
																class="glyphicon bfh-flag-SI"></i>Slovenia</a></li>
														<li><a tabindex="-1" href="#" data-option="SB"><i
																class="glyphicon bfh-flag-SB"></i>Solomon Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="SO"><i
																class="glyphicon bfh-flag-SO"></i>Somalia</a></li>
														<li><a tabindex="-1" href="#" data-option="ZA"><i
																class="glyphicon bfh-flag-ZA"></i>South Africa</a></li>
														<li><a tabindex="-1" href="#" data-option="GS"><i
																class="glyphicon bfh-flag-GS"></i>South Georgia and the
																South Sandwich Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="KR"><i
																class="glyphicon bfh-flag-KR"></i>South Korea</a></li>
														<li><a tabindex="-1" href="#" data-option="ES"><i
																class="glyphicon bfh-flag-ES"></i>Spain</a></li>
														<li><a tabindex="-1" href="#" data-option="LK"><i
																class="glyphicon bfh-flag-LK"></i>Sri Lanka</a></li>
														<li><a tabindex="-1" href="#" data-option="SD"><i
																class="glyphicon bfh-flag-SD"></i>Sudan</a></li>
														<li><a tabindex="-1" href="#" data-option="SR"><i
																class="glyphicon bfh-flag-SR"></i>Suriname</a></li>
														<li><a tabindex="-1" href="#" data-option="SJ"><i
																class="glyphicon bfh-flag-SJ"></i>Svalbard and Jan Mayen
																Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="SZ"><i
																class="glyphicon bfh-flag-SZ"></i>Swaziland</a></li>
														<li><a tabindex="-1" href="#" data-option="SE"><i
																class="glyphicon bfh-flag-SE"></i>Sweden</a></li>
														<li><a tabindex="-1" href="#" data-option="CH"><i
																class="glyphicon bfh-flag-CH"></i>Switzerland</a></li>
														<li><a tabindex="-1" href="#" data-option="SY"><i
																class="glyphicon bfh-flag-SY"></i>Syria</a></li>
														<li><a tabindex="-1" href="#" data-option="TW"><i
																class="glyphicon bfh-flag-TW"></i>Taiwan</a></li>
														<li><a tabindex="-1" href="#" data-option="TJ"><i
																class="glyphicon bfh-flag-TJ"></i>Tajikistan</a></li>
														<li><a tabindex="-1" href="#" data-option="TZ"><i
																class="glyphicon bfh-flag-TZ"></i>Tanzania</a></li>
														<li><a tabindex="-1" href="#" data-option="TH"><i
																class="glyphicon bfh-flag-TH"></i>Thailand</a></li>
														<li><a tabindex="-1" href="#" data-option="BS"><i
																class="glyphicon bfh-flag-BS"></i>The Bahamas</a></li>
														<li><a tabindex="-1" href="#" data-option="GM"><i
																class="glyphicon bfh-flag-GM"></i>The Gambia</a></li>
														<li><a tabindex="-1" href="#" data-option="TG" ><i
																class="glyphicon bfh-flag-TG"></i>Togo</a></li>
														<li><a tabindex="-1" href="#" data-option="TK"><i
																class="glyphicon bfh-flag-TK"></i>Tokelau</a></li>
														<li><a tabindex="-1" href="#" data-option="TO"><i
																class="glyphicon bfh-flag-TO"></i>Tonga</a></li>
														<li><a tabindex="-1" href="#" data-option="TT"><i
																class="glyphicon bfh-flag-TT"></i>Trinidad and Tobago</a></li>
														<li><a tabindex="-1" href="#" data-option="TN"><i
																class="glyphicon bfh-flag-TN"></i>Tunisia</a></li>
														<li><a tabindex="-1" href="#" data-option="TR"><i
																class="glyphicon bfh-flag-TR"></i>Turkey</a></li>
														<li><a tabindex="-1" href="#" data-option="TM"><i
																class="glyphicon bfh-flag-TM"></i>Turkmenistan</a></li>
														<li><a tabindex="-1" href="#" data-option="TC"><i
																class="glyphicon bfh-flag-TC"></i>Turks and Caicos
																Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="TV"><i
																class="glyphicon bfh-flag-TV"></i>Tuvalu</a></li>
														<li><a tabindex="-1" href="#" data-option="VI"><i
																class="glyphicon bfh-flag-VI"></i>US Virgin Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="UG"><i
																class="glyphicon bfh-flag-UG"></i>Uganda</a></li>
														<li><a tabindex="-1" href="#" data-option="UA"><i
																class="glyphicon bfh-flag-UA"></i>Ukraine</a></li>
														<li><a tabindex="-1" href="#" data-option="AE"><i
																class="glyphicon bfh-flag-AE"></i>United Arab Emirates</a></li>
														<li><a tabindex="-1" href="#" data-option="GB"><i
																class="glyphicon bfh-flag-GB"></i>United Kingdom</a></li>
														<li><a tabindex="-1" href="#" data-option="US"><i
																class="glyphicon bfh-flag-US"></i>United States</a></li>
														<li><a tabindex="-1" href="#" data-option="UM"><i
																class="glyphicon bfh-flag-UM"></i>United States Minor
																Outlying Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="UY"><i
																class="glyphicon bfh-flag-UY"></i>Uruguay</a></li>
														<li><a tabindex="-1" href="#" data-option="UZ"><i
																class="glyphicon bfh-flag-UZ"></i>Uzbekistan</a></li>
														<li><a tabindex="-1" href="#" data-option="VU"><i
																class="glyphicon bfh-flag-VU"></i>Vanuatu</a></li>
														<li><a tabindex="-1" href="#" data-option="VA"><i
																class="glyphicon bfh-flag-VA"></i>Vatican City</a></li>
														<li><a tabindex="-1" href="#" data-option="VE"><i
																class="glyphicon bfh-flag-VE"></i>Venezuela</a></li>
														<li><a tabindex="-1" href="#" data-option="VN"><i
																class="glyphicon bfh-flag-VN"></i>Vietnam</a></li>
														<li><a tabindex="-1" href="#" data-option="WF"><i
																class="glyphicon bfh-flag-WF"></i>Wallis and Futuna
																Islands</a></li>
														<li><a tabindex="-1" href="#" data-option="EH"><i
																class="glyphicon bfh-flag-EH"></i>Western Sahara</a></li>
														<li><a tabindex="-1" href="#" data-option="YE"><i
																class="glyphicon bfh-flag-YE"></i>Yemen</a></li>
														<li><a tabindex="-1" href="#" data-option="ZM"><i
																class="glyphicon bfh-flag-ZM"></i>Zambia</a></li>
														<li><a tabindex="-1" href="#" data-option="ZW"><i
																class="glyphicon bfh-flag-ZW"></i>Zimbabwe</a></li>
													</ul>
												</div>
											</div>
										</div>

									</div>
									<label for="Scountry"> 선택국가 :</label> <input type="text"
										readonly="readonly"  name="scountry"
										id="scountry" class="form-control" value="${productVO.scountry }">
										<input type="hidden" name="countryId" id="countryId"  value="${productVO.countryId }">
										
								</div>
							</td>
						</tr>


						<tr>
							<th>제조사  <small class='essentialText'>(필수 입력)</small></th>
							<td>
								<div class="form-inline">
									<div class="form-group">
										<label for="company"></label> 
										<input type="text" name="company" id="company" value='${  productVO.company }' class="form-control" >
								
									</div>		
								</div>
							</td>
							<td>
							</td>
						</tr>

						<tr>
							<th>제조년월 <small class='essentialText'>(필수 입력)</small></th>
							<td>
								<div class="form-inline">
					
		<div id="reportrange1" class="from-control" >
			<i class="glyphicon glyphicon-calendar fa fa-calendar"></i>&nbsp; <span></span>
			<b class="caret"></b>
			<input type="hidden" name="productDate" id="productDate" value="${  productVO.productDate }">
			
	</div>
	
        					
								</div>
							</td>
														<td>
							</td>
						</tr>

						<tr>
							<th>사이즈  <small class='essentialText'>(필수 입력)</small></th>
							<td>
					<div>			
					<label >
 		   
 		   	<%
 		   			ProductVO vo =(ProductVO)request.getAttribute("productVO");
 		   			//StringBuffer   sizeBuffer =vo.getProductSize(); 		   				
 		   			String size =vo.getProductSize().toString();
 		   		    String[] splitSize =size.split("-");
	   				boolean S=false;
	   				boolean M=false;
	   				boolean L=false;
	   				boolean XL =false;
	   				
 		   		    
	   		    	 for(int i=0; i<splitSize.length; i++){
		   		    	 if(splitSize[i].equals("S")){
 		   					S=true;
 		   				 }

		   				 if(splitSize[i].equals("M")){
		   					M=true;
		   				 }
		   				
		   				 if(splitSize[i].equals("L")){
		   					L=true;
		   				 }
		   				
		   				 if(splitSize[i].equals("XL")){
		   					XL=true;
		   				 }
	   		    	 }
	   		    	
 		   	%>
 		<input type="checkbox"   name="productSize[]"  value ="S" <% if(S){ out.print("checked");} %> >S &nbsp;
		<input type="checkbox"   name="productSize[]"  value ="M" <% if(M){ out.print("checked");} %> >M &nbsp;
		<input type="checkbox"   name="productSize[]"   value ="L" <% if(L){ out.print("checked");} %>>L&nbsp;
		<input type="checkbox"   name="productSize[]"  value ="XL"  <% if(XL){ out.print("checked");} %> >XL&nbsp; 
 	
			</label>
	
        				</div>	
								
							</td>
							<td>
							</td>
						</tr>
						

						<tr>
							<th> 간략설명 <small class='essentialText'>(필수 입력)</small> </th>
							<td colspan="5"><textarea rows="8" cols="50" name="contractContent" id="contractContent"  placeholder="2000자 내외">${productVO.contractContent}</textarea>
							</td>
						</tr>


						<tr>
							<th>상세 내용  <small class='essentialText'>(필수 입력)</small></th>
				    	<td colspan="5"><textarea rows="8" cols="50" name="content" id="content" >${productVO.content}</textarea>
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
				   <img src='${productVO.thumNailUrl }' >
				 <input type='hidden' name='oldImg' value='${productVO.oldImg }' class='form-control' >
				 
				<input type="hidden" name="oldImgThum" id="oldImgThum" value="${productVO.oldImgThum }"  class='form-control'> 
				<input type="hidden" name="image" id="image" value="${productVO.image }"   class='form-control'> 
				<input type="hidden" name="thumNailUrl" id="thumNailUrl" value="${productVO.thumNailUrl }"   class='form-control'> 
				<input type="hidden" name="imgOriginalName" id="imgOriginalName" value="${productVO.imgOriginalName }"  class='form-control'>
				 </div>
				</td>
			</tr>
		</table>
</form>
	
		
<form id="data">
		<table class="table" id="imageTable">	
		<tr>				
	    	<th style="width: 18%"><small>추천 사이즈<br> (900 *1024)</small></th>
		 	<td colspan="5">
				<input name="profileImg" type="file"  class="form-control"  onchange="reviewUploadImg(this); "/><br />
				
				 <input type="submit" value="전송"  id="fileSubmit" style="display: none;">						
			</td>
		</tr>
			
		
</table>		
</form>	
			
				
					<div style="text-align: center;">
					
<input class="btn btn-success" type="button" value="수정" onClick="go_mod_save('${tpage}','${productVO.pseq}' , '${cURL }')"> 
<input class="btn btn-danger" type="button" value="삭제" onClick ="go_prodcut_delect('${productVO.pseq}')" >              
<input class="btn btn-primary" type="button" value="취소" onClick="go_mov()">							
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
	
	
	$("#saleSelect").change(function(){
		var price1 =$("#price2").val();
		
		
		if(price1==""){
			alert("판매가격  가격을 먼저 입력 하세요!");
			$("#saleSelect option:selected").each(function(){
				$(this).attr("selected","");
				
			});
			$("#saleSelect").find(".zero").attr("selected", "selected");
			return 
		}else{
		
			$("#saleSelect option:selected").each(function(){
				var text =$(this).attr("value");
				
								
				$("#salePersent").val(text);
				
				
				if(text==0){
					//$("#salePrice1").val("세일 아님");	
				}else{
							
					var saleP =$("#price2").val() ;
					var result=saleP.replace(/,/g, '')-(saleP.replace(/,/g, '') *text*0.01);
					$("#salePrice1").val(comma(result));
					go_sale();
				}
			});	
			
		}
		
	});
	
	
	
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
			
				
				$("#reservesPersent").val(text);
				
				
				
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
	 

	 
	 CKEDITOR.replace( 'content', {//해당 이름으로 된 textarea에 에디터를 적용 <-- 이거 이름 부분입니다.
		 skin :'office2013',
		 width:'100%',
         height:'400px',
         extraPlugins : 'youtube',
        //여기 경로로 파일을 전달하여 업로드 시킨다. 
         // JSP, PHP 공통입니다. 경로를 적당히 적어줍니다.
       
        filebrowserImageUploadUrl: 'MacaronicsServlet?command=ckeditor_upload'	
     	  
	});
	
	
	 
	
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
