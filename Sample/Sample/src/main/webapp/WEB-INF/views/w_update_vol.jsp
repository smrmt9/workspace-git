<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>생성한 작품명 | 회차수정</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="../views/include/template.jsp" />

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

</head>

<style>
*:focus {
    outline: none;
}
label{
	font-weight: bold;
}
.container{
	width: 775px;
	margin-top: 5%;
}

/* Breadcumb */
.breadcrumb_item{
	font-size: 14px;
    font-style: italic;
    font-weight: 400;
    text-transform: capitalize;
}
/* Breadcumb */
.breadcrumb_item.active{
	font-size: 14px;
    font-style: italic;
    font-weight: 400;
    text-transform: capitalize;
	color: #e59285;
}

/* 제목 */
input .required, .g-input{
    width: 100%;
    border-top: 0;
    border-left: 0;
    border-right: 0;
}

/* 에디터 메뉴 */
.fr-toolbar.fr-ltr.fr-desktop.fr-top.fr-basic.fr-sticky-off {
    width: 45px;
    height: 100%;
    margin: 0 auto;
    position: absolute;
    right: -15px;
    border: 0px;
    box-shadow: 0 0px rgba(0, 0, 0, 0);
}

/* 내용 가로 */
.fr-wrapper {
    width: 95%;
}

/* 내용 테두리 삭제 */
.fr-box.fr-basic.fr-top .fr-wrapper {
	webkit-box-shadow: 0 0px 0px rgba(0, 0, 0, 0.12), 0 0px 0px 0px rgba(0, 0, 0, 0.16);
    -moz-box-shadow: 0 0px 0px rgba(0, 0, 0, 0.12), 0 0px 0px 0px rgba(0, 0, 0, 0.16);
    box-shadow: 0 0px 0px rgba(0, 0, 0, 0.12), 0 0px 0px 0px rgba(0, 0, 0, 0.16);
}

/* 글자수 */
.fr-counter {
    display: contents;
}

/* 등록버튼 */
button#save_temp {
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

/* placeholder color */
::placeholder {
  color: grey;
}

/* 작가의 말 */
textarea#author_say {
    width: 100%;
    height: 150px;
    border: 1px solid #ebebeb;
    resize: none;
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
/* 태그 */
.t-input{
    width: 100%;
    border-top: 0;
    border-left: 0;
    border-right: 0;
}
/* 등록,취소 버튼 */
.form__btn > .btn{
	margin-left: 15px;
	margin-right: 15px;
}

@media only screen and (max-width: 768px){
	.container{
		padding : 0 20px;
	}
	div#wrapper {
    	margin-top: 25%;
	}
}
</style>

<body>
	<!-- Main wrapper -->
	<jsp:include page="../views/include/header.jsp" />
	
	<div class="row">
		<div class="container">
			
			<nav class="bradcaump-content" style="text-align: right;">
            	<a class="breadcrumb_item" href="#">Home</a>
                <span class="brd-separetor">/</span>
				<a class="breadcrumb_item" href="#">웹소설</a>
				<span class="brd-separetor">/</span>
				<a class="breadcrumb_item" href="#">작품명</a>
				<span class="brd-separetor">/</span>
				<span class="breadcrumb_item active">회차수정</span>
			</nav>
			
			<div class="wrapper account__form" id="wrapper" style="margin-top:0 !important;">
				
				<form action="#" name="create_form">
					
				<div class="">
		        	<h3> { 생성한 작품명 } </h3>
		        	<p style="font-size: small;">저작권 등 다른 사람의 권리를 침해하거나 명예를 훼손하는 게시물은 이용약관 및 관련 법률에 의하여 제재를 받을 수 있습니다.</p>
		        	<p style="margin-bottom:5%;font-size: small;">성인물, 폭력물 등 운영원칙에 위배되는 작품은 통보 없이 삭제될 수 있습니다.<a href="#" style="color:#e59285;"> 자세히 보기</a></p>
		        </div>
        		
				<!-- 회차제목 -->
				<div><input id="title" name="title" type="text" class="g-input" style="font-size:23px; margin-bottom:5%;" placeholder="회차 제목을 입력하세요." value="작성한 회차 제목" /></div>
				
				<!-- 내용소개 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 내용 </label>
				<textarea id="froala-editor" style="padding: 16px; margin-bottom : 3%;" placeholder="20,000자 이하로 작성해주세요.">수정할 내용</textarea>
				
				<!-- 작가의 말 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 작가의 말</label>
				<textarea id="author_say" style="padding: 16px; margin-bottom : 3%;" placeholder="300자 이하로 작성해주세요." maxlength="300" onkeyup="chk_word(this.value)">수정할 작가의 말</textarea>
				
								
				<!-- 공개여부 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 공개 여부</label>
				<div class="">
					
					<ul class="ro-tool-pack">
						<li class="ro-input-form">
							<input type="radio" name="p_status" value="public" id="public" checked="checked">
							<label class="ro-input-radio ro-color-picton_blue" for="public"><h4 class="ro-font">공개</h4></label>
						</li>
						<li class="ro-input-form">
							<input type="radio" name="p_status" value="private" id="private">
							<label class="ro-input-radio ro-color-picton_blue" for="private"><h4 class="ro-font">비공개</h4></label>
						</li>
					</ul>
				
				</div>
				
				<!-- 완결 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 완결 여부</label>
				<div class="">
					
					<ul class="ro-tool-pack">
						<li class="ro-input-form">
							<input type="radio" name="f_status" value="unfinish" id="unfinish" checked="checked">
							<label class="ro-input-radio ro-color-picton_blue" for="unfinish"><h4 class="ro-font">미완결</h4></label>
						</li>
						<li class="ro-input-form">
							<input type="radio" name="f_status" value="finish" id="finish">
							<label class="ro-input-radio ro-color-picton_blue" for="finish"><h4 class="ro-font">완결</h4></label>
						</li>
					</ul>
				
				</div>
				
				<!-- 태그 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 태그 </label>
				<div><input id="tag" name="tag" type="text" class="t-input" style="font-size:16px; margin-bottom:5%;" placeholder="예시 : #로맨스,#웹소설,#창작  *최대 5개까지 등록 가능합니다.(콤마로 구분)" /></div>
				
				<!-- 운영원칙 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 운영원칙 동의</label>
				<p>
					<input type="checkbox" name="agree">
					운영원칙에 동의합니다. <a href="#" style="color:#e59285;"> 운영원칙 확인</a>
				</p>
				
				</form>
				
			</div>
			
			<div class="account__form" style="text-align: center;">
				<div class="form__btn">
					<button class="btn" id="cancel_btn" type="button">취소</button>
					<button class="btn" id="temSave_btn" type="button">임시저장</button>
					<button class="btn" id="preview_btn" type="button">미리보기</button>
					<button class="btn" id="update_btn" type="button">수정</button>
				</div>
			</div>
			
		</div><!-- container -->
	</div><!-- row -->
</body>

<%-- <jsp:include page="../views/include/footer.jsp" /> --%>

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
//replaceAll 함수
function replaceAll(str, searchStr, replaceStr) {
	return str.split(searchStr).join(replaceStr);
}
//글자수 체크
function chk_word(word){
	if(word.length > 300) alert('작가의 말은 300자 이하로 작성해주세요.');
}
</script>

<script>
$(function() { 
	/* Froala Editor */
	$('#froala-editor').froalaEditor({
		language: 'ko',
		toolbarSticky: true,
		charCounterMax: 20000,
		height : 650,
		quickInsertButtons: ['image', 'hr'],
		toolbarButtons: ['bold', 'italic', 'underline', 'strikeThrough','fontFamily', 'fontSize', 'color', 'lineHeight', 'paragraphFormat', 'align', 'formatUL',  'quote', 'insertLink', 'insertImage', 'insertHR', 'selectAll', 'undo', 'redo']
	});
	
	//수정
  	$('#update_btn').on('click', function(){
  		
  		var title = $('#title').val();																				//제목
  		console.log('제목 : ' + title);
  		  		
		var content_html = $('#froala-editor').froalaEditor('html.get');
		var content_html = replaceAll( content_html, '</p><p', '</p>\r\n<p');
		content_html = replaceAll( content_html, '<br>', '\r\n');
		content_html = replaceAll( content_html, '\r\n\r\n', '\r\n');
		content_html = replaceAll(content_html,'?','<!Q!>');										//키오스크 출력 시 <!Q!> -> ? 으로 출력됨
        console.log(content_html);
		var content=$(content_html).text();
        console.log(content);
        
		var p_status=$("input:radio[name='p_status']:checked").val();					//공개여부 public or private		
		console.log('공개여부 : '+p_status);
		
		var f_status=$("input:radio[name='f_status']:checked").val();						//완결여부 finish or unfinish
		console.log('완결여부 : '+f_status);
		
		var agree = $('input:checkbox[name=agree]').is(':checked');						//운영원칙 동의
		
		if(title.length > 30 || title.length <= 0) alert('제목은 1자 이상 30자 이하로 작성해주세요.');
		else if(content.length > 20000 || content.length <= 0) alert('내용은 1자 이상, 20,000자 이하로 작성해주세요.');
		else if(!agree) alert('운영원칙 동의 선택해주세요.');
		else alert('회차생성');
	});
	  
});
</script>

