<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>도서리뷰 | 리뷰쓰기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="../views/include/template.jsp" />

</head>
<!-- Include external CSS. -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.css">

<!-- Include Froala Editor styles -->
<link rel="stylesheet" href="/resources/css/edit/froala_editor.css" />
<link rel="stylesheet" href="/resources/css/edit/froala_editor.pkgd.css" />
<link rel="stylesheet" href="/resources/css/edit/froala_style.css" />

<!-- Include Froala Editor Plugins styles -->
<link rel="stylesheet" href="/resources/css/edit/plugins/char_counter.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/code_view.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/colors.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/draggable.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/emoticons.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/file.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/fullscreen.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/image_manager.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/image.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/line_breaker.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/quick_insert.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/special_characters.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/table.css">
<link rel="stylesheet" href="/resources/css/edit/plugins/video.css">

<!-- w.ro-pot.css -->
<link rel="stylesheet" href="/resources/css/w.ro-pot.css">

<style>

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
/* 좌측 영역 높이 */
.wn__order__box {
    height: 100%;
}
/* 버튼영역 */
.book_search_area {
    text-align: center;
    margin-top: 15px;
}
/* 버튼 */
button {
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
/* 버튼hover */
button:hover {
    background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
    border-color: #e59285;
    color: #e59285;
}

/* 책 정보 */
.order__total li:nth-child(2){
	color: #e59285;
	font-size: 16px;
}
/* 리뷰작성 영역 */
.customar__field {
    border: 1px solid #e1e1e1;
}

/* froala 테두리 삭제 */
.fr-box.fr-basic.fr-top .fr-wrapper {
	webkit-box-shadow: 0 0px 0px rgba(0, 0, 0, 0.12), 0 0px 0px 0px rgba(0, 0, 0, 0.16);
    -moz-box-shadow: 0 0px 0px rgba(0, 0, 0, 0.12), 0 0px 0px 0px rgba(0, 0, 0, 0.16);
    box-shadow: 0 0px 0px rgba(0, 0, 0, 0.12), 0 0px 0px 0px rgba(0, 0, 0, 0.16);
}
/* froala 메뉴 */
.fr-toolbar.fr-ltr.fr-desktop.fr-top.fr-basic.fr-sticky-off {
    border: 0px;
}
/*  froala 메뉴 */
.fr-toolbar.fr-top {
    -webkit-box-shadow: 0 0px 0px rgba(0, 0, 0, 0), 0 0px 0px 0px rgba(0, 0, 0, 0) !important;
    -moz-box-shadow: 0 0px 0px rgba(0, 0, 0, 0), 0 0px 0px 0px rgba(0, 0, 0, 0) !important;
    box-shadow: 0 0px 0px rgba(0, 0, 0, 0), 0 0px 0px 0px rgba(0, 0, 0, 0) !important;
}
/* 검색 input */
#review_search_book{
	background: #fff none repeat scroll 0 0;
    border: 1px solid #e1e1e1;
    border-radius: 0;
    height: 28px;
    max-width: 200px;
    padding: 0 0 0 10px;
}
/* 검색 버튼 */
#search_btn{
	font-size: 17.999px;
    font-weight: 700;
    line-height: 25px;
    padding: 0px 10px 0;
    text-transform: uppercase;
    transition: all 0.4s ease 0s;
}
/* 검색영역 */
.button_wrap{
	float: right
}
/* 검색 후 영역 */
.after_search{
	display: none;
}
/* 도서 검색 ul */
.order__total {
    padding: 16px 80px 16px;
}
/* placeholder color */
::placeholder {
  color: grey;
  font-size: 12px;
}
/* 책 소개 */
#book_intro{
	display: none;
}
/* modal 책이미지 */
.thumb {
    width: 100px;
    height: 120px;
}
/* modal 책정보 */
.content {
    width: 100%;
    padding: 0 0 10px 0;
}
/* modal 선 */
.modal-header {
    border-bottom: 1px solid #e59285;
}
/* modal 선 */
.modal-footer {
    border-top: 1px solid #e59285;
}
/* 책 선반 */
div#bookshelf {
    border: 5px solid #e59285;
    width: 320px;
    margin: 0 auto 10px;
    display: none;
    box-shadow: 5px 5px 5px;
}
@media only screen and (max-width: 768px){
	/* 모바일 메인 */
	.page-shop-sidebar.left--sidebar.bg--white.section-padding--lg {
    	margin-top: 25%;
	}
	/* 리뷰작성 */
	.customer_details {
    	margin: 25px 0;
	}
	/* froala 테두리 삭제 */
	.fr-box.fr-ltr.fr-basic.fr-top {
		webkit-box-shadow: 0 0px 0px rgba(0, 0, 0, 0), 0 0px 0px 0px rgba(0, 0, 0, 0);
	    -moz-box-shadow: 0 0px 0px rgba(0, 0, 0, 0), 0 0px 0px 0px rgba(0, 0, 0, 0);
	    box-shadow: 0 0px 0px rgba(0, 0, 0, 0), 0 0px 0px 0px rgba(0, 0, 0, 0);
	}
	/* froala 메뉴 */
	.fr-toolbar.fr-ltr.fr-mobile.fr-top.fr-basic.fr-sticky-ios {
	    border: 0px;
	}
	/*  froala 메뉴 */
	.fr-toolbar.fr-top {
	    -webkit-box-shadow: 0 0px 0px rgba(0, 0, 0, 0), 0 0px 0px 0px rgba(0, 0, 0, 0) !important;
	    -moz-box-shadow: 0 0px 0px rgba(0, 0, 0, 0), 0 0px 0px 0px rgba(0, 0, 0, 0) !important;
	    box-shadow: 0 0px 0px rgba(0, 0, 0, 0), 0 0px 0px 0px rgba(0, 0, 0, 0) !important;
	}
	/* 버튼영역 */
	.btn_area{
		text-align: center;
	}
	/* 도서 검색 ul */
	.order__total {
    	padding: 16px 20px 16px;
	}
}
</style>

<body>
	<!-- Main wrapper -->
	<jsp:include page="../views/include/header.jsp" />
		
		<div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        	<div class="container">
        		<div class="row">
        				
       				<div class="col-lg-12">
       					<!-- 안내 -->
       					<nav class="bradcaump-content" style="text-align: right;">
                        	<a class="breadcrumb_item" href="#">Home</a>
                            <span class="brd-separetor">/</span>
                           	<a class="breadcrumb_item" href="#">도서 리뷰</a>
                           	<span class="brd-separetor">/</span>
                       	   	<span class="breadcrumb_item active">리뷰쓰기</span>
						</nav>
       				</div>
        				
        			<!-- 책 검색 영역-->
					<div class="col-lg-6 col-12 md-mt-40 sm-mt-40">
        				<div class="customer_details">
        					<h3>도서 정보
        						
        						<span class="button_wrap">	
        							<input type="text" id="review_search_book" placeholder="책 또는 작가 검색...">
        							<button type="button" id="search_btn" data-toggle="modal" data-target="#search_book_modal"><i class="fa fa-search"></i></button>		
        						</span>	
        					</h3>
        					
        					<div class="wn__order__box before_search">
	       						<div class="book_search_area">
	       							<img src="../resources/images/books/1.jpg" id="book_cover_img1" alt="book_cover" style="margin-top:20px; width: 270px; height: 340px;">
	       							<span style="display: block;">
	       								<h3 style="margin: 20px 0 20px;">도서를 검색해주세요.</h3>
	       							</span>									        							        							
								</div>
        					</div>
        					
        					<div class="wn__order__box after_search">
	       						<div class="book_search_area">
	       							<div style="text-align: center;">
	       								<img src="https://bookthumb-phinf.pstatic.net/cover/147/403/14740358.jpg?udate=20190518" id="book_cover_img2" alt="book_cover" style="margin-top:20px; width: 240px; height: 320px;">
	       								<div id="bookshelf"></div>
	       							</div>
	       							<ul class="order__total">
	       								<li>도서명</li>
	       								<li>여행의 이유</li>
	       							</ul>
	       							
	       							<ul class="order__total">
	       								<li>작가</li>
	       								<li>김영하</li>
	       							</ul>
	       							
									<ul class="order__total">
										<li>출판사</li>
	       								<li>문학동네</li>
									</ul>
									
									<ul class="order__total">
										<li>출판일</li>
	       								<li>2019.05.23</li>
									</ul>
									
									<ul class="order__total" style="margin-">
	       								<li>ISBN</li>
	       								<li>9783161484100</li>
	       							</ul>
								</div>
        					</div>
        					
        					<div class="btn_area">
		        				<button type="button" style="margin: 30px auto 0;" id="book_intro"  data-toggle="modal" data-target="#search_book_intro_modal">책 소개</button>
        					</div>
        					
        				</div>
					</div>
        			
        			<!-- 리뷰 작성 -->
        			<div class="col-lg-6 col-12">
        				<div class="customer_details">
        					<h3>리뷰 작성</h3>
        					<div class="customar__field">
        						<!-- 내용 -->
        						<textarea id="froala-editor" style="padding: 16px; margin-bottom : 3%;"></textarea>
        					</div>
        					
        					<div class="btn_area">
	        					<button type="button" style="margin: 27px auto 0;">취소</button>
	        					<button type="button" style="margin: 27px auto 0;">임시저장</button>
	        					<button type="button" style="margin: 27px auto 0;">등록</button>
        					</div>
        					
        				</div>
        			</div>
        			
        			
        		</div>
        	</div>
        </div>
	
		<!-- 책 검색 모달-->
  		<div class="modal fade" id="search_book_modal">
    		<div class="modal-dialog modal-dialog-centered">
      			<div class="modal-content">
      
        			<!-- Modal Header -->
        			<div class="modal-header">
          				<h4 class="modal-title">여행의 이유</h4>
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
        			</div>
        
        			<!-- Modal body -->
        			<div class="modal-body">
          				<div class="modal_info_area">
          					<aside class="widget recent_widget">
								<div class="recent-posts">
									<ul>
										<c:forEach begin="1" end="7" step="1">
										<li style="margin-bottom : 5%; border-bottom:1px solid #e59285;">
											<div class="post-wrapper d-flex">
												<div class="thumb">
													<a href="#"><img src="https://bookthumb-phinf.pstatic.net/cover/147/403/14740358.jpg?udate=20190518" alt="blog images"></a>
												</div>
												<div class="content" style="padding-left: 15px;">
													<h4 class="select_book"><a href="#">여행의 이유</a></h4>
													<p>	김영하</p>
													<p>	문학동네</p>
													<p>	2019.05.23</p>
													<p>ISBN 9783161484100</p>
												</div>
											</div>
										</li>
										</c:forEach>
									</ul>
								</div>
							</aside>
          				</div>
        			</div>
        
        			<!-- Modal footer -->
        			<div class="modal-footer">
          				<button type="button"  data-dismiss="modal">닫기</button>
        			</div>
        
	      		</div>
    		</div>
  		</div>
		
		<!-- 책 소개 모달-->
  		<div class="modal fade" id="search_book_intro_modal">
    		<div class="modal-dialog modal-dialog-centered">
      			<div class="modal-content">
      
        			<!-- Modal Header -->
        			<div class="modal-header">
          				<h4 class="modal-title">여행의 이유</h4>
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
        			</div>
        
        			<!-- Modal body -->
        			<div class="modal-body">
          				여행이 내 인생이었고, 인생이 곧 여행이었다!<br>

						여행의 감각을 일깨우는 소설가 김영하의 매혹적인 이야기 『여행의 이유』. 꽤 오래전부터 여행에 대해 쓰고 싶었던 저자가 처음 여행을 떠났던 순간부터 최근의 여행까지 자신의 모든 여행의 경험을 담아 써내려간 아홉 개의 이야기를 담은 책이다. 지나온 삶에서 글쓰기와 여행을 가장 많이, 열심히 해온 저자는 여행이 자신에게 무엇이었는지, 무엇이었기에 그렇게 꾸준히 다녔던 것인지, 인간들은 왜 여행을 하는지, 스스로에게 질문을 던졌고, 여행의 이유를 찾아가며 그 답을 알아가고자 한다.<br>

						<br>2005년, 집필을 위한 중국 체류 계획을 세우고 중국으로 떠났으나 입국을 거부당하고 추방당했던 일화로 시작해 사람들이 여행을 하는 목적에 대한 질문으로 이어지는 《추방과 멀미》, 일상과 가족, 인간관계에서 오는 상처와 피로로부터 도망치듯 떠나는 여행에 관해 다룬 《상처를 몽땅 흡수한 물건들로부터 달아나기》, 즐겁고 유쾌하게만 보이는 예능 프로그램 《알쓸신잡》에 출연하면서 하게 된 독특한 여행에 대한 글 《알아두면 쓸데없는 신비한 여행》 등의 이야기를 통해 매순간 여행을 소망하는 여행자의 삶, 여행의 의미에 대해 함께 생각해보게 된다.<br>
        			</div>
        
        			<!-- Modal footer -->
        			<div class="modal-footer">
          				<button type="button"  data-dismiss="modal">닫기</button>
        			</div>
        
	      		</div>
    		</div>
  		</div>
		
		
</body>

<jsp:include page="../views/include/footer.jsp" />

</html>
<!-- Include external JS libs. -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/froala_editor.min.js"></script>

<!-- Include Froala Editor Plugins -->
<script type="text/javascript" src="/resources/js/edit/plugins/align.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/char_counter.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/code_beautifier.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/code_view.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/colors.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/emoticons.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/entities.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/file.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/font_family.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/font_size.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/fullscreen.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/image.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/image_manager.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/inline_style.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/line_breaker.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/link.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/lists.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/paragraph_format.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/paragraph_style.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/quote.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/save.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/table.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/video.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/plugins/quick_insert.min.js"></script>
<script type="text/javascript" src="/resources/js/edit/ko.js"></script>
<script>
$(document).ready(function() {
	
	/* Froala Editor */
	$('#froala-editor').froalaEditor({
		language: 'ko',
		toolbarSticky: true,
		charCounterMax: 20000,
		height : 600,
		toolbarButtons: ['insertImage', 'insertHR', 'fontSize', 'bold', 'italic', 'align', '|', 'undo', 'redo'],
		toolbarButtonsXS : ['insertHR', 'fontSize', 'bold', 'italic', 'align', '|', 'undo', 'redo'],
		quickInsertButtons: ['image', 'hr'],
		imageEditButtons: ['imageReplace', 'imageAlign', 'imageCaption', 'imageRemove','imageSize'],
	});
	
	//책 검색 후 선택
	$('.select_book').click(function(){
		$('.after_search').css('display','block');
		$('#book_intro').css('display','block');
		$('.before_search').css('display','none');
		$('.close').trigger('click');
		$('#bookshelf').css('display','block');
	});
		
});
</script>
