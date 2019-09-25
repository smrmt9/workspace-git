<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>도서리뷰 | 리뷰</title>
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

i.rate{
	color: #e59285;
}
/* 메인 부분 */
.page-shop-sidebar.left--sidebar.bg--white.section-padding--lg {
    margin-top: 5%;
}

/* 지은이|출판사 */
.prize li {
    margin-right: 5px !important;
}

/* 책 이미지 영역 */
.list__view .thumb {
    flex-basis: 20%;
}
/* 책 정보 영역 */
.list__view .content {
    flex-basis: 80%;
}

/* 책 썸네일 이미지 */
.list__view .thumb a img {
    height: 265px;
}

/* 책 썸네일 이미지(책제목) */
p.book_name {
    text-align: center;
}

/* 리뷰 정보란 */
.post__meta{
	display: flex;
    padding: 0 0 10px;
    position: relative;
}
/* 리뷰 정보란 */
.post__meta li {
    color: #333;
    font-size: 11px;
    font-weight: 600;
    text-transform: uppercase;
}
/* 리뷰 정보란 / */
.post_separator {
    margin: 0 5px;
}
/* 리뷰 정보란 밑줄 */
.post__meta::after {
    background: #ce7852 none repeat scroll 0 0;
    bottom: 0;
    content: "";
    display: block;
    height: 2px;
    left: 0;
    position: absolute;
    width: 40px;
}

@media only screen and (max-width: 768px){
	/* 모바일 메인 */
	.page-shop-sidebar.left--sidebar.bg--white.section-padding--lg {
    	margin-top: 25%;
	}
	/* 책 썸네일 이미지 */
	.list__view .content {
    	flex-basis: 100%;
	}
	/* 책 썸네일 이미지(책제목) */
	.list__view .thumb {
    	flex-basis: 100%;
	}
	/* 책 썸네일 이미지 영역 가운데*/
	.thumb {
    	text-align: center;
	}
	/* 책 썸네일 이미지 */
	.list__view .thumb a img {
    	height: auto;
    	width: 60%;
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
                              	<span class="breadcrumb_item active">리뷰</span>
                            	</nav>
        					
								<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
			                        <p> 리뷰 (12)건</p>
			                        <div class="orderby__wrapper">
			                        	<span>정렬</span>
			                        	<select class="shot__byselect">
			                        		<option>최신순</option>
			                        		<option>조회순</option>
			                        		<option>인기순</option>
			                        	</select>
			                        </div>
		                        </div>
        					</div>
        				</div>
        				<div class="tab__container">
        					
	        				<!-- 리스트 뷰 -->
	        				<div class="shop-grid tab-pane fade active show" id="nav-list" role="tabpanel">
	        					<div class="list__view__wrapper">
	        					
	        						<c:forEach begin="0" end="11" step="1">
	        					
	        						<!-- Start Single Product -->
	        						<div class="list__view" style="margin-bottom: 40px;">
	        							<div class="thumb">
	        								<a class="first__img list_view_a" href="#"><img class="list_view_img" src="../resources/images/product/1.jpg" alt="product images"></a>
	        								<a class="second__img animation1 list_view_a" href="#"><img class="list_view_img" src="../resources/images/product/2.jpg" alt="product images"></a>
	        								<p class="book_name"><a href="#">여행의 이유</a></p>
	        							</div>
	        							
	        							<div class="content">
	        								<h2><a href="#">김영하의 여행의 이유를 읽고 작성함</a></h2>
	        								<ul class="prize__box">
	        									<li style="margin-right: 5px; color: #ce7852;">김영하</li>
												<li style="margin-right: 5px; color: #ce7852;">|</li>
												<li style="margin-right: 5px; color: #ce7852;">문학동네</li>
	        								</ul>
	        								<a href="#">
	        									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.
	        											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.
	        									</p>
	        								</a>
	        								
	        								<ul class="post__meta">
        										<li><a href="#">작성자_ID</a></li>
        										<li class="post_separator">/</li>
        										<li>2019.05.22</li>
        										<li class="post_separator">/</li>
        										<li><i class="fa fa-heart rate"></i> 1,101</li>
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
