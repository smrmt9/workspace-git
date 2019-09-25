<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>릴레이소설 | 클릭한 릴레이소설</title>
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
    width: 100%;
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

/* 버튼영역 */
.blog_meta {
    border-bottom: 1px solid #e1e1e1;
    border-top: 1px solid #e1e1e1;
    color: #333;
    display: flex;
    font-size: 12px;
    margin: 40px 0;
    padding: 10px 0;
    justify-content: space-between;
}
/* 버튼 */
button{
	background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
    border: 2px solid #333;
    color: #333;
    display: inline-block;
    font-size: 12px;
    font-weight: 700;
    line-height: 34px;
    padding: 2px 20px 0;
    text-transform: uppercase;
    transition: all 0.4s ease 0s;
}
/* 버튼 */
button:hover{
	background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
    border-color: #e59285;
    color: #e59285;
}

@media only screen and (max-width: 768px){
	/* 모바일 메인 */
	.page-shop-sidebar.left--sidebar.bg--white.section-padding--lg {
    	margin-top: 25%;
	}
	/* 제목 */
	.post_header {
    	margin-top: 10px;
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
                              	<a class="breadcrumb_item" href="#">릴레이 소설</a>
                              	<span class="brd-separetor">/</span>
                              	<span class="breadcrumb_item active">클릭한 릴레이 소설</span>
                            	</nav>
        					
        					</div>
        				</div>
        				
        				<div class="tab__container">
        					
        					<!-- 릴레이 소설 주제 제목 -->
        					<div class="post_wrapper">
        						<div class="post_header">
									<h2>릴레이 소설 이어쓰기 주제1</h2>
									<div class="blog-date-categori">
										<ul style="margin: 0 0 25px;">
											<li>2019.05.21</li>
											<li><a href="#" title="Posts by boighor" rel="author">by Admin</a></li>
										</ul>
									</div>
								</div>
								
								<!-- 릴레이 소설 주제 내용 -->
								<div class="post_content">
									<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Crastoup pretium arcu ex. Aenean posuere libero eu augue rhoncus. Praesent ornare tortor ac ante egestas hendrerit. Aliquam et metus pharetra, bibendum massa nec, fermentum odio. Nunc id leo ultrices, mollis ligula in, finibus tortor. Mauris eu dui ut lectus fermentum eleifend. Pellentesque faucibus sem ante, non malesuada odio varius nec. Suspendisse potenti. Proin consectetur aliquam odio nec fringilla. Sed interdum at justo in efficitur. Vivamus gravida volutpat sodales. Fusce ornare sit amet ligula condimentum sagittis.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehendrit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore of to magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehnderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia dser mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo.</p>
								</div>
								
								<!-- 버튼 -->
								<ul class="blog_meta">
									<li class="cart"><button type="button">이전</button></li>
									<li class="cart"><button type="button">목록</button></li>
									<li class="cart"><button type="button">다음</button></li>
								</ul>
								
        					</div>	
	        							
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
//댓글 글자수 500 제한
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
