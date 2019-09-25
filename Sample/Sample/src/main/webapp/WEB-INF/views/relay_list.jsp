<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>릴레이소설 | 목록</title>
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

/* 게시글 목록 */
.content {
    padding-left: 10px;
    line-height: 2;
    width: 100%;
    flex-basis: 100% !important;
}

/* 게시글 밑 dotted 글 */
article.blog__post.d-flex.flex-wrap {
    border-bottom: 1px dotted #e1e1e1;
}
/* 이어쓰기 */
.blog__btn {
    margin-bottom: 5px;
}

i.rate{
	color: #e59285;
}

/* 메인 */
.page-shop-sidebar.left--sidebar.bg--white.section-padding--lg {
    margin-top: 5%;
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
                              	<span class="breadcrumb_item active">릴레이 소설</span>
                            	</nav>
        					
        					</div>
        				</div>
        				
        				<div class="tab__container">
        					 <div class="col-lg-12">
        					 	<div class="blog-page">
        					 		<div class="page__header">
        								<h2>릴레이 소설</h2>
        							</div>
        							
        							<c:forEach begin="1" step="1" end="5" var="i">
        							<article class="blog__post d-flex flex-wrap">
        								<div class="content">
        									<h4><a href="#">릴레이소설 주제 ${5+1-i} </a></h4>
        									<ul class="post__meta">
        										<li>Posts by : <a href="#">Admin</a></li>
        										<li class="post_separator">/</li>
        										<li>2019.05.21</li>
        									</ul>
        									<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Crastoup pretium arcu ex. Aenean posuere libero eu augue rhoncus Praesent ornare tortor amet.</p>
        									<div class="blog__btn">
        										<button type="button" onclick="relay_nId();">이어쓰기</button>
        									</div>
        								</div>
        							</article>
        							</c:forEach>
									
									<!-- Start pagination -->
	        						<div class="col-lg-12" style="margin-top: 35px;">
	        							<ul class="wn__pagination">
	        								<li class="active"><a href="#">1</a></li>
	        								<li><a href="#">2</a></li>
	        								<li><a href="#">3</a></li>
	        								<li><a href="#">4</a></li>
	        								<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
	        							</ul>
	        						</div>
	        						<!-- End pagination -->
									        							
        					 	</div><!-- blog-page -->
        					 </div><!-- col-lg-9 col-12 -->
        				</div><!-- tab__container -->
        				
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
//이어쓰기
function relay_nId(){
	location.href='/relay_nId';
}
</script>
<script>
$(document).ready(function() {

});
</script>
