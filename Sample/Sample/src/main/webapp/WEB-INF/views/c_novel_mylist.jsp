<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>웹소설 | 도전작가 소설목록</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="../views/include/template.jsp" />

</head>

<style>
.fade.show {
    opacity: 1;
}
.section-padding--lg {
    padding: 25px 0;
}
.breadcrumb_item{
	font-size: 14px;
    font-style: italic;
    font-weight: 400;
    text-transform: capitalize;
}
.breadcrumb_item.active{
	font-size: 14px;
    font-style: italic;
    font-weight: 400;
    text-transform: capitalize;
	color: #e59285;
}
.content {
    padding-left: 10px;
    line-height: 2;
}
i.rate{
	color: #e59285;
}
/* 메인 */
.page-shop-sidebar.left--sidebar.bg--white.section-padding--lg {
    margin-top: 5%;
}

@media only screen and (max-width: 768px){
	/* 모바일 메인 */
	.page-shop-sidebar.left--sidebar.bg--white.section-padding--lg {
    	margin-top: 25%;
	}
}
</style>

<body>
	<!-- Main wrapper -->
	<jsp:include page="../views/include/header.jsp" />
				
		<div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        	<div class="container">
        		<div class="row">
        			
        			<!-- 왼쪽 영역 -->
        			<jsp:include page="../views/include/w_novel_mylist_left.jsp" />
        			
        			<div class="col-lg-9 col-12 order-1 order-lg-2">
        				<div class="row">
        					<div class="col-lg-12">
        						
        						<!-- 안내 -->
        						<nav class="bradcaump-content" style="text-align: right;">
                            	<a class="breadcrumb_item" href="#">Home</a>
                              	<span class="brd-separetor">/</span>
                              	<a class="breadcrumb_item" href="#">웹소설</a>
                              	<span class="brd-separetor">/</span>
                              	<a class="breadcrumb_item" href="#">도전! 작가</a>
                              	<span class="brd-separetor">/</span>
                              	<span class="breadcrumb_item active">내 소설목록</span>
                            	</nav>
        					
								<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
			                        <p> 내 소설목록 </p>
			                        <div class="orderby__wrapper">
			                        	<span>정 렬</span>
			                        	<select class="shot__byselect">
			                        		<option>최신순</option>
			                        		<option>조회순</option>
			                        	</select>
			                        </div>
		                        </div>
        					</div>
        				</div>
        				<div class="tab__container">
        					
	        				<!-- 리스트 뷰 -->
	        				<div class="shop-grid tab-pane fade active show" id="nav-list" role="tabpanel">
	        					<div class="list__view__wrapper">
	        					
	        						<c:forEach begin="0" end="9" step="1">
	        					
	        						<!-- Start Single Product -->
	        						<div class="list__view" style="margin-bottom: 40px;">
	        							<div class="thumb">
	        								<a class="first__img" href="#"><img src="../resources/images/product/1.jpg" alt="product images"></a>
	        								<a class="second__img animation1" href="#"><img src="../resources/images/product/2.jpg" alt="product images"></a>
	        							</div>
	        							<div class="content">
	        								<h2><a href="single-product.html">검은 고양이 네로</a></h2>
	        								<ul class="prize__box">
	        									<li>2019.05.16</li>
	        									<!-- <li class="old__prize">$220.00</li> -->
	        								</ul>
	        								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</p>
	        								<ul class="cart__action d-flex">
	        									<li class="cart"><a href="#">소설 관리</a></li>
	        								</ul>

	        							</div>
	        						</div>
	        						<!-- End Single Product -->
	        						
	        						</c:forEach>
	        					</div><!-- list__view__wrapper -->
	        				</div><!-- #nav-list -->
	        				
	        				
	        				<!-- Start pagination -->
	        				<div class="col-lg-12">
	        					<ul class="wn__pagination">
	        						<li class="active"><a href="#">1</a></li>
	        						<li><a href="#">2</a></li>
	        						<li><a href="#">3</a></li>
	        						<li><a href="#">4</a></li>
	        						<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
	        					</ul>
	        				</div>
	        				<!-- End pagination -->
					        					
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
	
</body>

<jsp:include page="../views/include/footer.jsp" />

</html>
<script>
$(document).ready(function() {

});
</script>
