<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home | VSC Sample</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="../views/include/template.jsp" />

</head>

<style>

</style>

<body>

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
		<jsp:include page="../views/include/header.jsp" />

		<div class="slider-area brown__nav slider--15 slide__activation slide__arrow01 owl-carousel owl-theme">
		<!-- Start Slider area -->

			<!-- Start Single Slide -->
			<div 	class="slide animation__style10 bg-image--1 fullscreen align__center--left">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="slider__content">
								<div class="contentbox">
									<h2><span>키오스크</span>를 통해</h2>
									<h2><span>웹소설</span>을</h2>
									<h2><span>출력</span>해 드립니다.</h2>
									<a class="shopbtn" href="#">오늘의 웹소설</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Single Slide -->

			<!-- Start Single Slide -->
			<div	class="slide animation__style10 bg-image--7 fullscreen align__center--left">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="slider__content">
								<div class="contentbox">
									<h2><span>빅데이터</span>를 활용한</h2>
									<h2><span>도서정보 서비스</span>를</h2>
									<h2>제공합니다.</h2>
									<a class="shopbtn" href="#">서비스 이용하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Single Slide -->
		</div>
		<!-- End Start Slider area -->
		
		<!-- Start BEst Seller Area -->
		<section class="wn__product__area brown--color pt--80  pb--30">
			<div class="container">
				
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center">
							<h2 class="title__be--2">상업적 무료 <span class="color--theme">폰트</span></h2>
							
							<p class="makgulee" style="font-size: 16px;">막걸리체  : 키오스크를 통해 출력 서비스를 제공합니다. Font Test abcdefg / ABCDEFG</p><br>
							<p class="swagger" style="font-size: 16px;">스웨거체  : 키오스크를 통해 출력 서비스를 제공합니다. Font Test abcdefg / ABCDEFG</p><br>
							<p class="nanumGothic" style="font-size: 16px;">나눔고딕  : 키오스크를 통해 출력 서비스를 제공합니다. Font Test abcdefg / ABCDEFG</p><br>
							<p class="yeonsung" style="font-size: 16px;">연성체  : 키오스크를 통해 출력 서비스를 제공합니다. Font Test abcdefg / ABCDEFG</p><br>
							<p class="jooa" style="font-size: 16px;">주아체  : 키오스크를 통해 출력 서비스를 제공합니다. Font Test abcdefg / ABCDEFG</p><br>
							<p class="binggre" style="font-size: 16px;">빙그레체  : 키오스크를 통해 출력 서비스를 제공합니다. Font Test abcdefg / ABCDEFG</p><br>
							<p class="hanmaum-Gothic" style="font-size: 16px;">한마음고딕체  : 키오스크를 통해 출력 서비스를 제공합니다. Font Test abcdefg / ABCDEFG</p><br>
							<p class="seoul-namsan" style="font-size: 16px;">서울 남산체  : 키오스크를 통해 출력 서비스를 제공합니다. Font Test abcdefg / ABCDEFG</p><br>
							<p class="seoul-hangang" style="font-size: 16px;">서울 한강체  : 키오스크를 통해 출력 서비스를 제공합니다. Font Test abcdefg / ABCDEFG</p><br>
							<p class="goyang" style="font-size: 16px;">고양체  : 키오스크를 통해 출력 서비스를 제공합니다. Font Test abcdefg / ABCDEFG</p><br>
							
						</div>
					</div>
				</div>
				
				<div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50"><!-- owl-carousel 추가 시, 슬라이드 적용(active.js - furniture--4 주석 해지 해야함 -->
					
					<c:forEach begin="0" end="3" step="1">
					
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6" >
							<div class="product__thumb">
								<a class="first__img" href="single-product.html"><img src="../resources/images/books/jobs.jpg" alt="product image"></a>
								<a class="second__img animation1" href="single-product.html"><img src="../resources/images/books/jobs2.jpg" alt="product image"></a>
								<div class="hot__box">
									<span class="hot-label">new</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="single-product.html">스티브 잡스</a></h4>
								<ul class="prize d-flex">
									<li>무료</li>
									<!-- <li class="old_prize">$35.00</li> -->
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<!-- <li><a class="cart" href="cart.html"><i class="bi bi-shopping-bag4"></i></a></li> -->
											<li><a class="wishlist" href="wishlist.html" title="대여하기"><i class="bi bi-shopping-cart-full"></i></a></li>
											<!-- <li><a class="compare" href="#"><i class="bi bi-heart-beat"></i></a></li> -->
											<li><a data-toggle="modal" title="정보확인" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
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
					</div>
					<!-- Start Single Product -->
	
					</c:forEach>
					
				</div><!-- furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50 -->
				
			</div><!-- container -->
		</section>
		<!-- Start BEst Seller Area -->
		
		<!-- Start Recent Post Area -->
		<section class="wn__recent__post bg--gray ptb--80">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center">
							<h2 class="title__be--2">도서 관련 <span class="color--theme">서비스</span></h2>
							<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered lebmid alteration in some ledmid form</p>
						</div>
					</div>
				</div>
				<div class="row mt--50">
				
					
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3><a href="blog-details.html">북쉘빙 (Book Shelving) </a></h3>
								<p>도서 빅데이터 서비스 제공 We are proud to announce the very first the edition of the frankfurt news.We are proud to announce the very first of  edition of the fault frankfurt news for us.</p>
								<!-- <div class="post__time">
									<span class="day">Dec 06, 18</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"></i>77</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"></i>20</a></li>
										</ul>
									</div>
								</div> -->
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3><a href="blog-details.html">이야기 Hoo(후) </a></h3>
								<p>문학창작 서비스 제공 We are proud to announce the very first the edition of the frankfurt news.We are proud to announce the very first of  edition of the fault frankfurt news for us.</p>
								<!-- <div class="post__time">
									<span class="day">Dec 06, 18</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"></i>77</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"></i>20</a></li>
										</ul>
									</div>
								</div> -->
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3><a href="blog-details.html">PLR (Public Lending Right) </a></h3>
								<p>도서공공 대출 보상권 서비스 We are proud to announce the very first the edition of the frankfurt news.We are proud to announce the very first of  edition of the fault frankfurt news for us.</p>
								<!-- <div class="post__time">
									<span class="day">Dec 06, 18</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"></i>77</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"></i>20</a></li>
										</ul>
									</div>
								</div> -->
							</div>
						</div>
					</div>
					
				</div><!-- row mt--50 -->
			</div>
		</section>
		<!-- End Recent Post Area -->
		
		
		<!-- QUICKVIEW PRODUCT 사람책 정보보기 모달 -->
		<div id="quickview-wrapper">
		    <!-- Modal -->
		    <div class="modal fade" id="productmodal" tabindex="-1" role="dialog">
		        <div class="modal-dialog modal__container" role="document">
		            <div class="modal-content">
		                <div class="modal-header modal__header">
		                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		                </div>
		                <div class="modal-body">
		                    <div class="modal-product">
		                        <!-- Start product images -->
		                        <div class="product-images">
		                            <div class="main-image images">
		                                <img alt="big images" src="../resources/images/product/big-img/jobs3.jpg">
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
		                                <a href="#">Add to cart</a>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- END QUICKVIEW PRODUCT -->
		
		
		
	</div>
	<!-- End Main wrapper -->
</body>

<jsp:include page="../views/include/footer.jsp" />

</html>
<script>
$(document).ready(function() {

});
</script>
