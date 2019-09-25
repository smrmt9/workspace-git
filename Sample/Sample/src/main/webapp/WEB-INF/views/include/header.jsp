<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Header -->
<header id="wn__header"
	class="header__area header__absolute sticky__header">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-6 col-lg-2">
				<!-- Start logo -->
				<div class="logo">
					<a href="index.html"> <img	src="../resources/images/logo/logo.png" alt="logo images">
					</a>
				</div><!-- End logo -->
			</div>
			
			<div class="col-lg-8 d-none d-lg-block">
				<nav class="mainmenu__nav">
					<ul class="meninmenu d-flex justify-content-start">
						<li class="drop with--one--item"><a href="/">Home</a></li>
						<li class="drop"><a href="/w_novel_genre">웹소설</a>
							<div class="megamenu dropdown">
								<ul class="item item01">
									<li><a href="/w_novel_week">요일별 웹소설</a></li>
									<li><a href="/w_novel_genre">로맨스</a></li>
									<li><a href="/w_novel_genre">판타지</a></li>
									<li><a href="/w_novel_genre">무협</a></li>
									<li><a href="/w_novel_genre">기타</a></li>
									<li><a href="/c_novel_list">도전! 작가</a></li>
									<li><a href="/relay_list">릴레이 소설</a></li>
								</ul>
							</div>
						</li>
						<li class="drop"><a href="#">행복한가</a>
							<div class="megamenu dropdown">
								<ul class="item item01">
									<li><a href="#">일상스토리</a></li>
									<li><a href="#">일상웹툰</a></li>
								</ul>
							</div>
						</li>
						<li class="drop"><a href="#">도서/리뷰</a>
							<div class="megamenu dropdown">
								<ul class="item item01">
									<li><a href="#">베스트 셀러</a></li>
									<li><a href="#">도서관 베스트</a></li>
									<li><a href="#">리뷰</a></li>
								</ul>
							</div>
						</li>
						<li class="drop"><a href="#">편지</a>
							<div class="megamenu dropdown">
								<ul class="item item01">
									<li><a href="#">편지쓰기</a></li>
									<li><a href="#">보낸 편지함</a></li>
								</ul>
							</div>
						</li>
						<li class="drop"><a href="#">커뮤니티</a>
							<div class="megamenu dropdown">
								<ul class="item item01">
									<li><a href="#">사회/이휴</a></li>
									<li><a href="#">정보/취미</a></li>
									<li><a href="#">유머/재미</a></li>
								</ul>
							</div>
						</li>
						<!-- <li><a href="#">Contact</a></li> -->
					</ul>
				</nav>
			</div>
			
			<div class="col-md-6 col-sm-6 col-6 col-lg-2">
				<ul class="header__sidebar__right d-flex justify-content-end align-items-center">
					<li class="shop_search"><a class="search__active" href="#"></a></li>
					<!-- 
					<li class="setting__bar__icon"><a class="setting__active" href="#"></a>
						<div class="searchbar__content setting__block">
							<div class="content-inner">
								<div class="switcher-currency">
									<strong class="label switcher-label">
										<span>Currency</span>
									</strong>
									<div class="switcher-options">
										<div class="switcher-currency-trigger">
											<span class="currency-trigger">USD - US Dollar</span>
											<ul class="switcher-dropdown">
												<li>GBP - British Pound Sterling</li>
												<li>EUR - Euro</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="switcher-currency">
									<strong class="label switcher-label">
										<span>Language</span>
									</strong>
									<div class="switcher-options">
										<div class="switcher-currency-trigger">
											<span class="currency-trigger">English01</span>
											<ul class="switcher-dropdown">
												<li>English02</li>
												<li>English03</li>
												<li>English04</li>
												<li>English05</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="switcher-currency">
									<strong class="label switcher-label">
										<span>Select Store</span>
									</strong>
									<div class="switcher-options">
										<div class="switcher-currency-trigger">
											<span class="currency-trigger">Fashion Store</span>
											<ul class="switcher-dropdown">
												<li>Furniture</li>
												<li>Shoes</li>
												<li>Speaker Store</li>
												<li>Furniture</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="switcher-currency">
									<strong class="label switcher-label">
										<span>My Account</span>
									</strong>
									<div class="switcher-options">
										<div class="switcher-currency-trigger">
											<div class="setting__menu">
												<span><a href="#">Compare Product</a></span>
												<span><a href="#">My Account</a></span>
												<span><a href="#">My Wishlist</a></span>
												<span><a href="#">Sign In</a></span>
												<span><a href="#">Create An Account</a></span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					 -->
				</ul>
			</div>
		</div>
		<!-- Start Mobile Menu -->
		<div class="row d-none">
			<div class="col-lg-12 d-none">
				<nav class="mobilemenu__nav">
					<ul class="meninmenu">
						<li><a href="/index">Home</a></li>
						<li><a href="/w_novel_genre">웹소설</a>
							<ul>
								<li><a href="/w_novel_week">요일별 웹소설</a></li>
								<li><a href="/w_novel_genre">로맨스</a></li>
								<li><a href="/w_novel_genre">판타지</a></li>
								<li><a href="/w_novel_genre">무협</a></li>
								<li><a href="/w_novel_genre">기타</a></li>
								<li><a href="/c_novel_list">도전! 작가</a></li>
								<li><a href="/relay_list">릴레이 소설</a></li>
							</ul>
						</li>
						<li><a href="#">행복한가</a>
							<ul>
								<li><a href="#">일상스토리</a></li>
								<li><a href="#">일상웹툰</a></li>
							</ul>
						</li>
						<li><a href="#">도서/리뷰</a>
							<ul>
								<li><a href="#">베스트 셀러</a></li>
								<li><a href="#">도서관 베스트</a></li>
								<li><a href="#">리뷰</a></li>
							</ul>
						</li>
						<li><a href="#">편지</a>
							<ul>
								<li><a href="#">편지쓰기</a></li>
								<li><a href="#">보낸 편지함</a></li>
							</ul>
						</li>
						<li><a href="#">커뮤니티</a>
							<ul>
								<li><a href="#">사회/이슈</a></li>
								<li><a href="#">정보/취미</a></li>
								<li><a href="#">유머/재미</a></li>
							</ul>
						</li>
						<!-- <li><a href="#">Contact</a></li> -->
					</ul>
				</nav>
			</div>
		</div>
		<!-- End Mobile Menu -->
		<div class="mobile-menu d-block d-lg-none"></div>
		<!-- Mobile Menu -->
	</div>
</header>
<!-- //Header -->

<!-- Start Search Popup -->
<div
	class="brown--color box-search-content search_active block-bg close__top">
	<form id="search_mini_form" class="minisearch" action="#">
		<div class="field__search">
			<input type="text" placeholder="작가 또는 작품 검색">
			<div class="action">
				<a href="#"><i class="zmdi zmdi-search"></i></a>
			</div>
		</div>
	</form>
	<div class="close__wrap">
		<span>닫기</span>
	</div>
</div>
<!-- End Search Popup -->