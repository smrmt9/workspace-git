<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>웹소설 | 장르별</title>
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
/* 작품 영역 */
.product .product__content .action {
	bottom: 30px;
	left: 0;
	opacity: 0;
	position: absolute;
	right: 0;
	transform: translateY(-50%);
	visibility: hidden;
	z-index: 1;
	transition: .4s;
	margin-bottom: 8px;
	display: none;
}
/* 작품 영역 */
.product__hover--content {
	display: none;
}
/* 작품 영역 */
.product:hover .product__content h4, .product:hover .product__content ul.prize {
    opacity: 0;
    visibility: hidden;
    transition: all 0.2s ease 0s;
    display: none !important;
}
</style>

<body>
	<!-- Main wrapper -->
	<jsp:include page="../views/include/header.jsp" />
		
		<div class="ht__bradcaump__area bg-image--6">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="bradcaump__inner text-center">
                        	<h2 class="bradcaump-title">웹소설</h2>
                            <nav class="bradcaump-content">
                            	<a class="breadcrumb_item" href="#">Home</a>
                              	<span class="brd-separetor">/</span>
                              	<span class="breadcrumb_item active">웹소설</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
		
		<div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        	<div class="container">
        		<div class="row">
        			
        			<!-- 왼쪽 영역 -->
        			<jsp:include page="../views/include/w_novel_left.jsp" />
        			
        			<div class="col-lg-9 col-12 order-1 order-lg-2">
        				<div class="row">
        					<div class="col-lg-12">
        						
        						<!-- 안내 -->
        						<nav class="bradcaump-content" style="text-align: right;">
                            	<a class="breadcrumb_item" href="#">Home</a>
                              	<span class="brd-separetor">/</span>
                              	<a class="breadcrumb_item" href="#">웹소설</a>
                              	<span class="brd-separetor">/</span>
                              	<span class="breadcrumb_item active">로맨스</span>
                            	</nav>
        					
								<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
									<div class="shop__list nav justify-content-center" role="tablist">
			                            <a class="nav-item nav-link active" data-toggle="tab" href="#nav-grid" role="tab" aria-selected="true"><i class="fa fa-th"></i></a>
			                            <a class="nav-item nav-link" data-toggle="tab" href="#nav-list" role="tab" aria-selected="false"><i class="fa fa-list"></i></a>
			                        </div>
			                        <p> 총 40 작품 </p>
			                        <div class="orderby__wrapper">
			                        	<span>정 렬</span>
			                        	<select class="shot__byselect">
			                        		<option>최신순</option>
			                        		<option>인기순</option>
			                        		<option>조회순</option>
			                        	</select>
			                        </div>
		                        </div>
        					</div>
        				</div>
        				<div class="tab__container">
        					
        					<!-- 기본 뷰 -->
	        				<div class="shop-grid tab-pane fade active show" id="nav-grid" role="tabpanel">
	        					<div class="row">
	        						
	        						<c:forEach begin="0" end="11" step="1">
	        						
	        						<!-- Start Single Product -->
		        					<div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
			        					<div class="product__thumb">
											<a class="first__img" href="single-product.html"><img src="../resources/images/books/1.jpg" alt="product image"></a>
											<a class="second__img animation1" href="single-product.html"><img src="../resources/images/books/2.jpg" alt="product image"></a>
											<div class="hot__box">
												<span class="hot-label">Hoo 작가</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4><a href="single-product.html">검은고양이 네로</a></h4>
											<ul class="prize d-flex">
												<li>by 작가필명</li>
												<!-- <li class="old_prize">$35.00</li> -->
											</ul>
											
											<!-- 별점 -->
											<div class="product__hover--content">
												<ul class="rating d-flex">
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</ul>
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
	        								<a class="first__img" href="single-product.html"><img src="../resources/images/product/1.jpg" alt="product images"></a>
	        								<a class="second__img animation1" href="single-product.html"><img src="../resources/images/product/2.jpg" alt="product images"></a>
	        							</div>
	        							<div class="content">
	        								<h2><a href="single-product.html">검은 고양이 네로</a></h2>
	        								<ul class="rating d-flex">
	        									<li class="on"><i class="fa fa-star-o"></i></li>
	        									<li class="on"><i class="fa fa-star-o"></i></li>
	        									<li class="on"><i class="fa fa-star-o"></i></li>
	        									<li class="on"><i class="fa fa-star-o"></i></li>
	        									<li><i class="fa fa-star-o"></i></li>
	        									<li><i class="fa fa-star-o"></i></li>
	        								</ul>
	        								<ul class="prize__box">
	        									<li>by 작가필명</li>
	        									<!-- <li class="old__prize">$220.00</li> -->
	        								</ul>
	        								<a href="#">
	        									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</p>
	        								</a>
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
	
		<div id="quickview-wrapper">
		    <!-- Modal -->
		    <div class="modal fade show" id="productmodal" tabindex="-1" role="dialog" style="display: none; aria-hidden;">
		        <div class="modal-dialog modal__container" role="document">
		            <div class="modal-content">
		                <div class="modal-header modal__header">
		                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		                </div>
		                <div class="modal-body">
		                    <div class="modal-product">
		                        <!-- Start product images -->
		                        <div class="product-images">
		                            <div class="main-image images">
		                                <img alt="big images" src="../resources/images/product/big-img/1.jpg">
		                            </div>
		                        </div>
		                        <!-- end product images -->
		                        <div class="product-info">
		                            <h1>Simple Fabric Bags</h1>
		                            <div class="rating__and__review">
		                                <ul class="rating">
		                                    <li><span class="ti-star"></span></li>
		                                    <li><span class="ti-star"></span></li>
		                                    <li><span class="ti-star"></span></li>
		                                    <li><span class="ti-star"></span></li>
		                                    <li><span class="ti-star"></span></li>
		                                </ul>
		                                <div class="review">
		                                    <a href="#">4 customer reviews</a>
		                                </div>
		                            </div>
		                            <div class="price-box-3">
		                                <div class="s-price-box">
		                                    <span class="new-price">$17.20</span>
		                                    <span class="old-price">$45.00</span>
		                                </div>
		                            </div>
		                            <div class="quick-desc">
		                                Designed for simplicity and made from high quality materials. Its sleek geometry and material combinations creates a modern look.
		                            </div>
		                            <div class="select__color">
		                                <h2>Select color</h2>
		                                <ul class="color__list">
		                                    <li class="red"><a title="Red" href="#">Red</a></li>
		                                    <li class="gold"><a title="Gold" href="#">Gold</a></li>
		                                    <li class="orange"><a title="Orange" href="#">Orange</a></li>
		                                    <li class="orange"><a title="Orange" href="#">Orange</a></li>
		                                </ul>
		                            </div>
		                            <div class="select__size">
		                                <h2>Select size</h2>
		                                <ul class="color__list">
		                                    <li class="l__size"><a title="L" href="#">L</a></li>
		                                    <li class="m__size"><a title="M" href="#">M</a></li>
		                                    <li class="s__size"><a title="S" href="#">S</a></li>
		                                    <li class="xl__size"><a title="XL" href="#">XL</a></li>
		                                    <li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
		                                </ul>
		                            </div>
		                            <div class="social-sharing">
		                                <div class="widget widget_socialsharing_widget">
		                                    <h3 class="widget-title-modal">Share this product</h3>
		                                    <ul class="social__net social__net--2 d-flex justify-content-start">
		                                        <li class="facebook"><a href="#" class="rss social-icon"><i class="zmdi zmdi-rss"></i></a></li>
		                                        <li class="linkedin"><a href="#" class="linkedin social-icon"><i class="zmdi zmdi-linkedin"></i></a></li>
		                                        <li class="pinterest"><a href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
		                                        <li class="tumblr"><a href="#" class="tumblr social-icon"><i class="zmdi zmdi-tumblr"></i></a></li>
		                                    </ul>
		                                </div>
		                            </div>
		                            <div class="addtocart-btn">
		                                <a href="#">구독하기</a>
		                            </div>
		                        </div>
		                    </div>
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
