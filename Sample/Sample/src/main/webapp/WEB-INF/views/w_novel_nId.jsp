<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>웹소설 | 클릭한 작품</title>
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

/* 작가명 및 날짜 */
p.info{
	margin: 15px 0 15px !important;
}
/* 메인 */
.page-shop-sidebar.left--sidebar.bg--white.section-padding--lg {
    margin-top: 5%;
}
/* 별점 아이콘 색 */
i.fa.fa-star,i.fa.fa-star-o,i.fa.fa-eye,i.fa.fa-calendar{
	color: #e59285;
}
/* 작품 관리 버튼 */
.list__view .content .cart__action li.cart a{
	padding: 0 20px;
}
/* 회차 */
.recent-posts ul li {
    border-bottom: 1px dashed #e1e1e1;
    line-height: 45px;
    text-align: left;
    text-transform: capitalize;
}
/* placeholder color */
::placeholder {
  color: grey;
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
        			
        			
        			<div class="col-lg-9 col-12">
        				<div class="row">
        					<div class="col-lg-12">
        						
        						<!-- 안내 -->
        						<nav class="bradcaump-content" style="text-align: right;">
                            	<a class="breadcrumb_item" href="#">Home</a>
                              	<span class="brd-separetor">/</span>
                              	<a class="breadcrumb_item" href="#">웹소설</a>
                              	<span class="brd-separetor">/</span>
                              	<span class="breadcrumb_item active">클릭한 작품</span>
                            	</nav>
        					
								<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
			                        <h2> {클릭한 작품 제목} </h2>
			                        <span style="padding-top: 8px;">장르 : 로맨스</span>
		                        </div>
        					</div>
        				</div>
        				<div class="tab__container">
        					
	        				<!-- 리스트 뷰 -->
	        				<div class="shop-grid tab-pane fade active show" id="nav-list" role="tabpanel">
	        					<div class="list__view__wrapper">
	        					
	        						<!-- Start Single Product -->
	        						<div class="list__view" style="margin-bottom: 40px;">
	        							<div class="thumb">
	        								<a class="first__img" href="#"><img src="../resources/images/product/1.jpg" alt="product images"></a>
	        								<a class="second__img animation1" href="#"><img src="../resources/images/product/2.jpg" alt="product images"></a>
	        							</div>
	        							<div class="content">
	        								<h3>
	        									<i class="fa fa-star" aria-hidden="true"></i>
	        									<i class="fa fa-star" aria-hidden="true"></i>
	        									<i class="fa fa-star" aria-hidden="true"></i>
	        									<i class="fa fa-star-o" aria-hidden="true"></i>
	        									<i class="fa fa-star-o" aria-hidden="true"></i>
	        									<span style="color: #e59285;">6.0</span>
	        								</h3>
	        								<p class="info">by 작가필명</p>
	        								<p class="info">2019.05.16</p>
	        								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</p>
	        								<ul class="cart__action d-flex">
	        									<li class="cart"><a href="#">첫회보기</a></li>
	        									<li class="cart"><a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 1,201</a></li>
	        									<li class="cart"><a href="#"><i class="fa fa-bookmark-o" aria-hidden="true"></i> 북마크</a></li>
	        									<li class="cart"><a href="#"><i class="fa fa-commenting-o" aria-hidden="true"></i> 댓글</a></li>
	        								</ul>
											
	        							</div>
	        						</div>
	        						<!-- End Single Product -->
	        						
	        						<!-- 회차연재 -->
	        						<h3 class="wedget__title">작품회차 (20회)</h3>
	        						<div class="recent-posts">
        							<ul>
        								<c:forEach begin="1" end="10" step="1" var="i">
        								<li style="margin: 15px 0 15px 0px;">
        									<div class="post-wrapper d-flex">
        										<div class="content">
        											<h5><a href="#">${10-i+1}. 회차별 제목 </a></h5>
        											<p>
        												<i class="fa fa-star rate"></i> 10
        												<i class="fa fa-eye" aria-hidden="true"></i> 2,200
        												<i class="fa fa-calendar" aria-hidden="true"></i> 2019-05-16
        											</p>
        											<p>#로맨스 #쇼윈도 #웹소설</p>
        										</div>
        									</div>
        								</li>
        								</c:forEach>
        							</ul>
        						</div>
	        					
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
							
							 <!-- 댓글 -->
							 <jsp:include page="../views/include/w_novel_nId_reply.jsp" />
							 
        				</div>
        			</div>
        			
        			<!-- 오른쪽 영역 -->
        			<jsp:include page="../views/include/w_novel_right.jsp" />
        			
        		</div>
        	</div>
        </div>
	
</body>

<jsp:include page="../views/include/footer.jsp" />

</html>
<script>
//댓글 글자수 300 제한
function reply_word_count(word){
	var char_count = document.getElementById('char_count');
	
	if(word.length >=301 ){
		alert('300자 이상은 작성할 수 없습니다.');
		char_count.innerHTML = word.length-1 + '/' + '300';
	}else{
		char_count.innerHTML = word.length + '/' + '300';
	}	
	
}
</script>
<script>
$(document).ready(function() {

});
</script>
