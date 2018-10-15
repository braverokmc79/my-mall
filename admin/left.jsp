<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav style="margin-bottom: 100px;">
<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li class="sidebar-search">
				<div class="input-group custom-search-form">
					<input type="text" class="form-control" placeholder="Search...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div> <!-- /input-group -->
			</li>
			<li><a href="MacaronicsServlet?command=menu_category"><i class="glyphicon glyphicon-list-alt"></i>
					메뉴 & 상품카테고리 등록</a>
			</li>
			
			
			
			<li><a href="MacaronicsServlet?command=admin_product_list"><i
					class="fa fa-dashboard fa-fw"></i> 상품리스트</a>
					
			</li>

		<li><a href="MacaronicsServlet?command=admin_product_write_form"><i
					class="glyphicon glyphicon-gift"></i> 상품 등록</a>
					
			</li>
			<li><a href="#"><i class="glyphicon glyphicon-indent-left"></i>
					주문리스트<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level collapse">
					<li><a href="MacaronicsServlet?command=admin_order_user_list"><i
							class="glyphicon glyphicon-align-justify"></i> 주문번호별 리스트</a></li>

					<li><a href="MacaronicsServlet?command=admin_order_list"><i
							class="glyphicon glyphicon-align-right"></i> 주문상품별 리스트</a></li>

					<c:if test="${ !empty subjectPname }">
						<li class="active"><a href=""><i class="fa-play-circle-o"></i>
								${subjectPname }</a></li>

					</c:if>


				</ul> <!-- /.nav-second-level --></li>

			<li><a href="MacaronicsServlet?command=admin_member_list"><i
					class="glyphicon glyphicon-step-forward"></i> 회원리스트</a></li>

			<li><a href="MacaronicsServlet?command=admin_qna_list"><i
					class="glyphicon glyphicon-bullhorn"></i> Q&amp;A리스트</a></li>

	
			<li><a href="MacaronicsServlet?command=adminBannerForm">
			<i class="glyphicon glyphicon-blackboard"></i> 메인 배너 관리</a></li>

			<li><a href="MacaronicsServlet?command=adminStartPromoForm">
			<i class="glyphicon glyphicon-picture"></i> 메인 StartPromo 이미지 관리</a></li>
			
			<li><a href="MacaronicsServlet?command=adminBannerOneForm">
			<i class="glyphicon glyphicon-inbox"></i> 메인 BannerOne 이미지 관리</a></li>
			
			
		    <li><a href="MacaronicsServlet?command=adminSupportAreaForm">
			<i class="glyphicon glyphicon-leaf"></i> 메인 SupportArea 관리</a></li>
			
			
			<li><a href="MacaronicsServlet?command=adminSingleSlide">
			<i class="glyphicon glyphicon-sound-dolby"></i> 메인 SingleSlide 관리</a></li>
			
			
		    <li><a href="MacaronicsServlet?command=adminslickListForm">
			<i class="glyphicon glyphicon-plus-sign"></i> 메인 	Slick-list 관리</a></li>
			
					
		    <li><a href="MacaronicsServlet?command=adminsubBannerForm">
			<i class="glyphicon glyphicon-triangle-right"></i> 서브 	배너 이미지 관리</a></li>
			
			
			<li><a href="MacaronicsServlet?command=adminRssForm">
			<img src="upload/Misc-RSS-icon.png" style="max-width: 20px; max-height: 20px;"> RSS 관리</a></li>
		
			

		</ul>
	</div>
	<!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->
</nav>

