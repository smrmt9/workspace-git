<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>웹소설 | 도전작가 글쓰기</title>
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

/* 작품소개 */
textarea#intro_write {
    width: 100%;
    height: 200px;
    border: 1px solid #ebebeb;
    resize: none;
}
/* placeholder color */
::placeholder {
  color: grey;
}
/* 표지이미지 input */
form.fileUpload {
    border-bottom: 1px solid #ebebeb;
}
/* 업로드 아이콘 */
i.fa.fa-upload {
    font-size: 15px;
}
/* 업로드한 이미지 이름 */
input#upload_readonly {
    border: 0;
    font-size: 14px;
    padding-left: 10px;
    width: 90%;
}
/* 업로드 버튼 wrapper */
.upload-btn-wrapper {
	position: relative;
  	overflow: hidden;
  	display: inline-block;
	width: 100%;
}
/* 업로드 버튼css */
.btn {
  border: 2px solid gray;
  color: gray;
  background-color: white;
  border-radius: 8px;
  font-size: 14px;
  font-weight: bold;
}
/* 업로드 input css */
.upload-btn-wrapper input[type=file] {
  font-size: 100px;
  position: absolute;
  left: 0;
  top: 0;
  opacity: 0;
}

/* 표지 div */
.coverWrap{
	height: 0px;
}

/* 표지삭제 버튼 */
#delete_cover{
	visibility: hidden;
	display: block;
    margin: 5px auto;
}

/* 장르선택 */
select#genre {
    display: block;
    position: relative;
    min-width: 71px;
    height: 32px;
    padding: 0 25px 0 10px;
    border: solid 1px #d7d7d7;
    line-height: 32px;
    color: #333;
    background-color: #fff;
    width: 200px;
    font-size: 16px;
}

/* 에디터 메뉴 */
.fr-toolbar.fr-ltr.fr-desktop.fr-top.fr-basic.fr-sticky-off {
    width: 45px;
    height: 100%;
    margin: 0 auto;
    position: absolute;
    right: -5px;
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

/* 태그 */
.t-input{
    width: 100%;
    border-top: 0;
    border-left: 0;
    border-right: 0;
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
				<a class="breadcrumb_item" href="#">도전! 작가</a>
				<span class="brd-separetor">/</span>
				<span class="breadcrumb_item active">글쓰기</span>
			</nav>
			
			<div class="wrapper account__form" id="wrapper" style="margin-top:0 !important;">
				
				<form action="#" name="create_form">
					
				<div class="">
		        	<h3> 당신의 창작활동을 응원합니다.</h3>
		        	<p style="font-size: small;">저작권 등 다른 사람의 권리를 침해하거나 명예를 훼손하는 게시물은 이용약관 및 관련 법률에 의하여 제재를 받을 수 있습니다.</p>
		        	<p style="margin-bottom:5%;font-size: small;">성인물, 폭력물 등 운영원칙에 위배되는 작품은 통보 없이 삭제될 수 있습니다.<a href="#" style="color:#e59285;"> 자세히 보기</a></p>
		        </div>
        		
				<!-- 제목 -->
				<div><input id="title" name="title" type="text" class="g-input" style="font-size:23px; margin-bottom:5%;" placeholder="작품 제목을 입력하세요." /></div>
				
				<!-- 작품소개 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 작품소개</label>
				<textarea id="intro_write" style="padding: 16px; margin-bottom : 3%;" placeholder="300자 이하로 작성해주세요." maxlength="300" onkeyup="chk_word(this.value)"></textarea>
				
				<!-- 표지 이미지 -->
				<div class="">
					<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 표지 이미지(권장 : 270px * 340px, 3MB 미만)</label>
					<!-- 미리보기 -->
					<div class="coverWrap" style="text-align: center;">
						<img id="image_section" alt="" src="" width="270px" height="340px"><button id="delete_cover" class="btn" type="button">표지 삭제</button>
					</div>
					<form action="#" class="fileUpload">
						<div class="upload-btn-wrapper">
  							<button class="btn"><i class="fa fa-upload" aria-hidden="true"></i></button>
  							<input type="file" name="myfile" id="upload"  accept=".png, .jpg, .jpeg" onchange='chk_file_type(this)'/>
  							<input type="text" name="upload_readonly" id="upload_readonly" readonly="readonly" placeholder="표지 없음" />
						</div>
					</form>
				</div>
				
				<!-- 장르선택 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 장르 선택</label>
				
				<div class="select_boxWrap" style="margin-bottom: 2%;">
					<select class="select_box" name="genre" id="genre" required="required">
						<option value="0">분류</option>
						<option value="romance">로맨스</option>
						<option value="fantasy">판타지</option>
						<option value="moohyup">무&nbsp;협</option>
						<option value="detect">추&nbsp;리</option>
						<option value="sf">S&nbsp;F</option>
						<option value="horror">호&nbsp;러</option>
						<option value="general">기&nbsp;타</option>
					</select>
				</div>
				
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
				
				<!-- 작품평가 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 작품 평가</label>
				<div class="">
					
					<ul class="ro-tool-pack">
						<li class="ro-input-form">
							<input type="radio" name="ap_status" value="appraise" id="appraise" checked="checked">
							<label class="ro-input-radio ro-color-picton_blue" for="appraise"><h4 class="ro-font">허용</h4></label>
						</li>
						<li class="ro-input-form">
							<input type="radio" name="ap_status" value="no_appraise" id="no_appraise">
							<label class="ro-input-radio ro-color-picton_blue" for="no_appraise"><h4 class="ro-font">비허용</h4></label>
						</li>
					</ul>
				
				</div>
				
				<!-- 내용 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 내용 </label>
				<textarea id="froala-editor" style="padding: 16px; margin-bottom : 3%;" placeholder="20,000자 이하로 작성해주세요."></textarea>
				
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
					<button class="btn" id="create_btn" type="button">생성</button>
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
//표지이미지 유효성(이미지만 업로드 가능)
function chk_file_type(obj) {
	var file_kind = obj.value.lastIndexOf('.');
 	var file_name = obj.value.substring(file_kind+1,obj.length);
 	var file_type = file_name.toLowerCase();

 	var check_file_type=['jpg','gif','png','jpeg','bmp'];
	
 	// 용량 체크
    var maxSize  = 3 * 1024 * 1024    //3MB
    var fileSize = 0;
 	
 	// 브라우저 확인
	var browser=navigator.appName;
	console.log(browser);
 	
	// 익스플로러일 경우
	if (browser=="Microsoft Internet Explorer"){
		var oas = new ActiveXObject("Scripting.FileSystemObject");
		fileSize = oas.getFile( file.value ).size;
		console.log(fileSize);
	}
	// 익스플로러가 아닐경우
	else	{
		fileSize = obj.files[0].size;
		console.log(fileSize);
	}
 	
	console.log("파일사이즈 : "+ fileSize +", 최대파일사이즈 : 3MB");
	
	if(fileSize > maxSize)    {
        alert("첨부파일 사이즈는 3MB 이내로 등록 가능합니다.    ");
        return;
    }
	
 	if(check_file_type.indexOf(file_type)==-1){
  		alert('이미지 파일만 선택할 수 있습니다.');
  		var parent_Obj=obj.parentNode
  		var node=parent_Obj.replaceChild(obj.cloneNode(true),obj);
  		return false;
 	}else{
		var fileName = $('#upload').val().split("\\").pop();
	 	$('#upload_readonly').val(fileName); 
	 	
	 	var reader = new FileReader();
	 	reader.onload = function (e) {
            $('#image_section').attr('src', e.target.result);
        }
	 	reader.readAsDataURL(obj.files[0]);
	 	
	 	$('#delete_cover').css('visibility','visible');
	 	$('#delete_cover').show();
	 	$('.coverWrap').css('height','auto');
 	}
}

//replaceAll 함수
function replaceAll(str, searchStr, replaceStr) {
	return str.split(searchStr).join(replaceStr);
}
//글자수 체크
function chk_word(word){
	if(word.length > 300) alert('작품소개는 300자 이하로 작성해주세요.');
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
	
	//표지 삭제
	$("#delete_cover").click(function(){
		//$('#delete_cover').css('visibility','hidden');
		$('#delete_cover').hide();
		$('#image_section').attr('src', '');
		$('.coverWrap').css('height','0px');
		$('#upload').val('');
		$('#upload_readonly').val('');
	});
	
	
	//등록
  	$('#create_btn').on('click', function(){
  		
  		var title = $('#title').val();																				//제목
  		console.log('제목 : ' + title);
  		  		
		var intro_write = $('#intro_write').val();
  		console.log('소개본문 : '+ intro_write);															//소개 본문
		
		console.log('이미지 경로 : '+$('#upload_readonly').val());									//이미지 이름
		
		
		var test;
		var days = new Array();
				
							
		console.log('장르선택 : '+$("select[name=genre]").val());								//장르
		
		var p_status=$("input:radio[name='p_status']:checked").val();					//공개여부 public or private		
		console.log('공개여부 : '+p_status);
		
		var ap_status=$("input:radio[name='ap_status']:checked").val();				//평가여부 appraise or no_appraise
		console.log('평가여부 : '+ap_status);
		
				
		var agree = $('input:checkbox[name=agree]').is(':checked');						//운영원칙 동의
		
		if(title.length > 30 || title.length <= 0) alert('제목은 1자 이상 30자 이하로 작성해주세요.');
		else if($("select[name=genre]").val()=='0') alert('장르는 필수선택 입니다.');
		else if(!agree) alert('운영원칙 동의 선택해주세요.');
		else alert('작품생성');
	});
	  
});
</script>

