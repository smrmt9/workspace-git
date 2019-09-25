<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>도서리뷰 | 도서관 베스트</title>
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
/* 메인 부분 */
.page-shop-sidebar.left--sidebar.bg--white.section-padding--lg {
    margin-top: 5%;
}
/* 두번째 이미지 */
a.second__img.animation1 {
    text-align: center;
}
/* 첫번째 이미지 */
a.first__img {
    text-align: center;
}
/* 책 표지 */
.book_cover{
    max-width: 50%;
}
/* 지은이|출판사 */
.prize li {
    margin-right: 5px !important;
}
/* ISBN hover 영역 */
.product .product__content .action {
    bottom: 0px;
    left: 0px;
}
/* 리스트뷰 책 이미지 */
.list_view_img{
	max-width: 55%;
}
/* 리스트뷰 책 설명 */
.list__view .content {
    padding-left: 0px;
}
/* 리스트뷰 책 이미지 왼쪽 정렬 */
.list_view_a{
	text-align: left !important;
}
/* 리스트뷰 책 정보 */
.list__view .content {
    padding-left: 0px;
    position: absolute;
    left: 230px;
}
@media only screen and (max-width: 768px){
	/* 모바일 메인 */
	.page-shop-sidebar.left--sidebar.bg--white.section-padding--lg {
    	margin-top: 25%;
	}
	/* 리스트뷰 책 이미지 중앙 정렬 */
	.list_view_a{
		text-align: center !important;
	}
	/* 리스트뷰 책 정보 */
	.list__view .content {
	    padding-left: 0px;
	    position: initial;
	    left: 0;
	}
	/* 버튼 정렬 */
	.d-flex {
    	justify-content: center;
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
        			<%-- <jsp:include page="../views/include/w_novel_left.jsp" /> --%>
        			
        			<div class="col-lg-12 col-12 order-1 order-lg-2">
        				<div class="row">
        					<div class="col-lg-12">
        						
        						<!-- 안내 -->
        						<nav class="bradcaump-content" style="text-align: right;">
                            	<a class="breadcrumb_item" href="#">Home</a>
                              	<span class="brd-separetor">/</span>
                              	<a class="breadcrumb_item" href="#">도서 리뷰</a>
                              	<span class="brd-separetor">/</span>
                              	<span class="breadcrumb_item active">도서관 베스트</span>
                            	</nav>
        					
								<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
									<div class="shop__list nav justify-content-center" role="tablist">
			                            <a id="nav-grid_a" class="nav-item nav-link active" data-toggle="tab" href="#nav-grid" role="tab" aria-selected="true"><i class="fa fa-th"></i></a>
			                            <a id="nav-list_a" class="nav-item nav-link" data-toggle="tab" href="#nav-list" role="tab" aria-selected="false"><i class="fa fa-list"></i></a>
			                        </div>
			                        <p> 도서관 베스트 </p>
			                        <div class="orderby__wrapper">
			                        	<select class="shot__byselect">
			                        		<option>2019</option>
			                        	</select>
			                        	<span>년</span>
			                        	<select class="shot__byselect">
			                        		<option>1</option>
			                        		<option>2</option>
			                        		<option>3</option>
			                        		<option>4</option>
			                        		<option selected="selected">5</option>
			                        		<option>6</option>
			                        		<option>7</option>
			                        		<option>8</option>
			                        		<option>9</option>
			                        		<option>10</option>
			                        		<option>11</option>
			                        		<option>12</option>
			                        	</select>
			                        	<span>월</span>
			                        	<select class="shot__byselect">
			                        		<option>1</option>
			                        		<option>2</option>
			                        		<option selected="selected">3</option>
			                        		<option>4</option>
			                        	</select>
			                        	<span>주</span>
			                        </div>
		                        </div>
        					</div>
        				</div>
        				<div class="tab__container">
        					
        					<!-- 기본 뷰 -->
	        				<div class="shop-grid tab-pane fade active show" id="nav-grid" role="tabpanel">
	        					<div class="row">
	        						
	        						<c:forEach begin="1" end="30" step="1">
	        						
	        						<!-- Start Single Product -->
		        					<div class="product product__style--3 col-lg-3 col-md-3 col-sm-6 col-12">
			        					<div class="product__thumb">
											<a class="first__img" href="#"><img class="book_cover" src="../resources/images/books/1.jpg" alt="product image"></a>
											<a class="second__img animation1" href="#"><img class="book_cover" src="../resources/images/books/2.jpg" alt="product image"></a>
											<div class="hot__box">
												<span class="hot-label"><a href="#" style="color: #fff;">리뷰(1)</a></span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="#">여행의 이유</a></h4>
											<ul class="prize d-flex">
												<li>김영하</li>
												<li>|</li>
												<li>문학동네</li>
												
											</ul>
											<div class="action">
												<div class="actions_inner_r">
													<ul class="add_to_links_r">
														<li>
															<strong>ISBN</strong><br>
															<a class="isbn_link" href="#" style="color: #ce7852;">9783161484100</a>
														</li>
													</ul>
												</div>
											</div>
											
										</div>
		        					</div>
		        					<!-- End Single Product -->
	        						
	        						</c:forEach>
	        						
	        					</div><!-- row -->
	        				</div>
	        				
	        				<!-- 리스트 뷰 -->
	        				<div class="shop-grid tab-pane fade" id="nav-list" role="tabpanel">
	        					<div class="list__view__wrapper">
	        					
	        						<c:forEach begin="0" end="11" step="1">
	        					
	        						<!-- Start Single Product -->
	        						<div class="list__view" style="margin-bottom: 40px;">
	        							<div class="thumb">
	        								<a class="first__img list_view_a" href="#"><img class="list_view_img" src="../resources/images/product/1.jpg" alt="product images"></a>
	        								<a class="second__img animation1 list_view_a" href="#"><img class="list_view_img" src="../resources/images/product/2.jpg" alt="product images"></a>
	        							</div>
	        							<div class="content">
	        								<h2><a href="#">여행의 이유</a></h2>
	        								<ul class="prize__box">
	        									<li style="margin-right: 5px; color: #ce7852;">김영하</li>
												<li style="margin-right: 5px; color: #ce7852;">|</li>
												<li style="margin-right: 5px; color: #ce7852;">문학동네</li>
	        								</ul>
	        								<a href="#">
	        									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</p>
	        								</a>
	        								
	        								<ul class="cart__action d-flex">
	        									<li class="cart"><a href="#">공공대출 보상권 조회</a></li>
	        									<li class="cart"><a href="#">리뷰 작성</a></li>
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
//모바일 기기 감지
function isMobile() {
    return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
}
</script>
<script>
$(document).ready(function() {
	if(isMobile()){
		$('#nav-grid').removeClass('active');
		$('#nav-grid').removeClass('show');
		$('#nav-grid_a').removeClass('active');
		$('#nav-list').addClass('active');
		$('#nav-list').addClass('show');
		$('#nav-list_a').addClass('active');
	}else{
		return false;
	}
	
});
</script>
