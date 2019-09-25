<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home | VSC Sample_web_novel</title>
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

</head>

<style>
*:focus {
    outline: none;
}
.container{
	width: 700px;
	margin-top: 5%;
}

/* 입력한 텍스트 html */
#eg-previewer{
	visibility: hidden;
    position: absolute;
    left: -555px;
}
/* 에디터 메뉴 */
.fr-toolbar.fr-ltr.fr-desktop.fr-top.fr-basic.fr-sticky-off {
    width: 45px;
    height: 100%;
    margin: 0 auto;
    position: absolute;
    right: -50px;
    border: 0px;
    box-shadow: 0 0px rgba(0, 0, 0, 0);
}

/* 제목 */
input .required, .g-input{
    width: 100%;
    border-top: 0;
    border-left: 0;
    border-right: 0;
}

/* 작가의 말 */
div#writer_say, div#intro_write{
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 1px 1px rgba(0, 0, 0, 0.16);
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

/* 장르선택 */
span.genre-span {
    display: inline-block;
    width: 13.699999%;
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
			
			<div class="wrapper" id="wrapper">
				<!-- <button  id="save_temp">등록</button> -->
				
				<div class="">
		        	<h3 style="margin-top:5%;"> 웹소설 - 새로운 작품 생성</h3>
		        	<p style="margin-bottom:5%;">인신공격이나 비방, 욕설 등은 경고 없이 바로 삭제처리 될 수 있습니다.</p>
		        </div>
        		
				<!-- 제목 -->
				<div><input id="title" class="g-input" style="font-size:23px; margin-bottom:5%;" placeholder="제목을 입력하세요" /></div>
				
				<!-- 작품소개 -->
				<label style="margin-top:2%;">작품소개</label>
				<div id="intro_write" style="padding: 16px; margin-bottom : 3%;"></div>
				
				<!-- 내용 -->
				<label style="margin-top:2%;">내용</label>
				<textarea class="fr-view" id="froala-editor" maxlength="80" placeholder="내용"></textarea>
				
				<!-- 작가의 말 -->
				<label style="margin-top:2%;">작가의 말</label>
				<div class="writer_say" id="writer_say" style="padding: 16px; margin-bottom : 3%;"></div>
				
				<!-- 장르선택 -->
				<label style="margin-top:2%;">장르 선택</label>
				<div class="">
					<span class="genre-span"><input type="checkbox" name="genre" id="genre-romance" value="romance" class="required">로맨스</span>
					<span class="genre-span"><input type="checkbox" name="genre" id="genre-fantasy" value="fantasy" class="required">판타지</span>
					<span class="genre-span"><input type="checkbox" name="genre" id="genre-moohyup" value="moohyup" class="required">무&nbsp;협</span>
					<span class="genre-span"><input type="checkbox" name="genre" id="genre-detect" value="detect" class="required">추&nbsp;리</span>
					<span class="genre-span"><input type="checkbox" name="genre" id="genre-sf" value="sf" class="required">S&nbsp;F</span>
					<span class="genre-span"><input type="checkbox" name="genre" id="genre-horror" value="horror" class="required">호&nbsp;러</span>
					<span class="genre-span"><input type="checkbox" name="genre" id="genre-general" value="general" class="required">일&nbsp;반</span>
				</div>
				
				<!-- 공개여부 -->
				<label style="margin-top:5%;">공개 여부</label>
				<div class="">
					<span class="genre-span"><input type="radio" name="p_status" id="public" class="required">공개</span>
					<span class="genre-span"><input type="radio" name="p_status" id="private" class="required">비공개</span>
				</div>
				
				<!-- 태그 -->
				<label style="margin-top:5%;">해시태그</label>
				<div class="">
					<input type="text" class="g-input" name="hash_tag" id="hash_tag" place>
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
$(function() { 
	/* Froala Editor */
	$('#intro_write').froalaEditor({
		language: 'ko',
		placeholderText: '작품소개를 입력해주세요 (300자)',
		toolbarInline: true,
		quickInsertButtons: ['hr'],
	    charCounterMax: 300,
	    height : 100,
		toolbarButtons: ['bold', 'italic', 'underline', 'strikeThrough','fontFamily', 'fontSize', 'color', 'lineHeight', 'paragraphFormat', 'align', 'undo', 'redo'],
	});
	
	$('#froala-editor').froalaEditor({
		language: 'ko',  
		charCounterMax: 80, //영문만 가능... 한글 질의 남김
		height : 650,
		quickInsertButtons: ['image', 'hr'],
		toolbarButtons: ['bold', 'italic', 'underline', 'strikeThrough','fontFamily', 'fontSize', 'color', 'lineHeight', 'paragraphFormat', 'align', 'formatUL',  'quote', 'insertLink', 'insertImage', 'insertHR', 'selectAll', 'undo', 'redo']
	});
	
	$('#writer_say').froalaEditor({
		language: 'ko',
		toolbarInline: true,
		quickInsertButtons: ['hr'],
	    charCounterMax: 300,
	    height : 100,
		toolbarButtons: ['bold', 'italic', 'underline', 'strikeThrough','fontFamily', 'fontSize', 'color', 'lineHeight', 'paragraphFormat', 'align', 'undo', 'redo'],
	});
	
  	//
  	$('#save_temp').on('click', function(){
  		alert($('#intro_write').froalaEditor('html.get'));
		alert($('#froala-editor').froalaEditor('html.get'));
		alert($('#writer_say').froalaEditor('html.get'));
	});
	  
});
</script>

