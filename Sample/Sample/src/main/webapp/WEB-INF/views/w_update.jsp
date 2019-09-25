<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>웹소설 | 웹작품 수정</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="../views/include/template.jsp" />

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

/* 연재일정 변경불가 문구 */
#info_p{
	color: #e59285;
	overflow: hidden;
    display: inline-block;
    margin-top: -15px;
    zoom: 1;
}

/* 요일연재 요일 css */
.day_list{
	overflow: hidden;
    display: inline-block;
    visibility: hidden;
    margin-top: -15px;
    zoom: 1;
}
/* 요일연재 요일 css */
.day_list span:first-child {
    margin-left: 0;
}
/* 요일연재 요일 css */
.day_list span {
    float: left;
    position: relative;
    width: 38px;
    height: 34px;
    margin-left: -1px;
}
/* 요일연재 요일 css */
.day_list > span > input{
    -webkit-appearance: none;
    border: none;
    border-radius: 0;
    background: none;
}
/* 요일연재 요일 css */
.day_list input {
    position: absolute;
    top: 0;
    left: 0;
    width: 38px;
    height: 34px;
}
/* 요일연재 요일 css */
.day_list label.off {
    color: #959595;
    cursor: pointer;
}
/* 요일연재 요일 css */
.day_list label {
    position: absolute;
    top: 0;
    left: 0;
    width: 36px;
    height: 32px;
    line-height: 32px;
    border: 1px solid #e0e0e0;
    background: #fff;
    text-align: center;
    cursor: pointer;
}
/* 요일연재 요일 css */
.day_list label {
    position: absolute;
    top: 0;
    left: 0;
    width: 36px;
    height: 32px;
    line-height: 32px;
    border: 1px solid #e0e0e0;
    background: #fff;
    text-align: center;
    cursor: pointer;
}

/* 요일연재 요일 css */
.day_list label.on {
    border: 1px solid #e59285;
    color: #e59285;
    z-index: 5;
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
				<a class="breadcrumb_item" href="#">작품명</a>
				<span class="brd-separetor">/</span>
				<span class="breadcrumb_item active">작품수정</span>
			</nav>
			
			<div class="wrapper account__form" id="wrapper" style="margin-top:0 !important;">
				
				<form action="#" name="create_form">
					
				<div class="">
		        	<h3> 웹소설 - 작품 수정</h3>
		        	<p style="font-size: small;">저작권 등 다른 사람의 권리를 침해하거나 명예를 훼손하는 게시물은 이용약관 및 관련 법률에 의하여 제재를 받을 수 있습니다.</p>
		        	<p style="margin-bottom:5%;font-size: small;">성인물, 폭력물 등 운영원칙에 위배되는 작품은 통보 없이 삭제될 수 있습니다.<a href="#" style="color:#e59285;"> 자세히 보기</a></p>
		        </div>
        		
				<!-- 제목 -->
				<div><input id="title" name="title" type="text" class="g-input" style="font-size:23px; margin-bottom:5%;" placeholder="작품 제목을 입력하세요." value="생성한 작품명 수정 불가" readonly="readonly"/></div>
				
				<!-- 작품소개 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 작품소개</label>
				<textarea id="intro_write" style="padding: 16px; margin-bottom : 3%;" placeholder="300자 이하로 작성해주세요." maxlength="300" onkeyup="chk_word(this.value)">작품소개 </textarea>
				
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
				
				<!-- 연재일정 선택 -->
				<label style="margin-top:2%;"><i class="fa fa-caret-right" aria-hidden="true"></i> 연재일정</label>
				<div>
					<ul class="ro-tool-pack">
						<li class="ro-input-form">
							<input type="radio" name="period" value="free_w" id="free_w" checked="checked">
							<label class="ro-input-radio ro-color-picton_blue" for="free_w"><h4 class="ro-font">자유연재</h4></label>
						</li>
						<li class="ro-input-form">
							<input type="radio" name="period" value="week_w" id="week_w">
							<label class="ro-input-radio ro-color-picton_blue" for="week_w"><h4 class="ro-font">요일연재</h4></label>
						</li>
					</ul>
					
					<p id="info_p">연재일정은 한번 선택하면 변경불가합니다.</p>
					<!-- 요일목록 -->
					<div class="day_list" id="day_list">
						<span>
							<input type="checkbox" name="day" id="day1" class="day_of_week_selectDay" style="cursor: pointer;" value="monday">
							<label for="day1" class="off">월</label>
						</span>
						<span>
							<input type="checkbox" name="day" id="day2" class="day_of_week_selectDay" style="cursor: pointer;" value="tuesday">
							<label for="day2" class="off">화</label>
						</span>
						<span>
							<input type="checkbox" name="day" id="day3" class="day_of_week_selectDay" style="cursor: pointer;" value="wednesday">
							<label for="day3" class="off">수</label>
						</span>
						<span>
							<input type="checkbox" name="day" id="day4" class="day_of_week_selectDay" style="cursor: pointer;" value="thursday">
							<label for="day4" class="off">목</label>
						</span>
						<span>
							<input type="checkbox" name="day" id="day5" class="day_of_week_selectDay" style="cursor: pointer;" value="friday">
							<label for="day5" class="off">금</label>
						</span>
						<span>
							<input type="checkbox" name="day" id="day6" class="day_of_week_selectDay" style="cursor: pointer;" value="saturday">
							<label for="day6" class="off">토</label>
						</span>
						<span>
							<input type="checkbox" name="day" id="day7" class="day_of_week_selectDay" style="cursor: pointer;" value="sunday">
							<label for="day7" class="off">일</label>
						</span>
					</div>
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
						<option value="general">일&nbsp;반</option>
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
					<button class="btn" id="cancel_btn">취소</button>
					<button class="btn" id="update_btn">수정</button>
				</div>
			</div>
			
		</div><!-- container -->
	</div><!-- row -->
</body>

<%-- <jsp:include page="../views/include/footer.jsp" /> --%>

</html>

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
	
	//표지 삭제
	$("#delete_cover").click(function(){
		//$('#delete_cover').css('visibility','hidden');
		$('#delete_cover').hide();
		$('#image_section').attr('src', '');
		$('.coverWrap').css('height','0px');
		$('#upload').val('');
		$('#upload_readonly').val('');
	});
	
	//요일연재-요일목록 불러오기
	$("input:radio[name=period]").click(function(){
		 if($("input:radio[name=period]:checked").val() == 'week_w'){
			 console.log('요일연재');		        
			 $("#day_list").css("visibility","visible");
			 $("#info_p").hide();
		    }else{
		    	console.log('자유연재');
		    	$("#day_list").css("visibility","hidden");
		    	$("#info_p").show();
				//요일체크 css 기본으로
		    	if($('.day_of_week_selectDay').next().hasClass('on')){
		    		$('.day_of_week_selectDay').next().removeClass('on');
					$('.day_of_week_selectDay').next().addClass('off');	
		    	}
		    	
		    }
	});
	
	//요일 선택
	 $('.day_of_week_selectDay').click(function(){
		if($(this).next().hasClass('off')){
			$(this).next().removeClass('off');
			$(this).next().addClass('on');
		}else{
			$(this).next().removeClass('on');
			$(this).next().addClass('off');
		}
		
	 });

	//수정
  	$('#update_btn').on('click', function(){
  		
  		var title = $('#title').val();																				//제목
  		console.log('제목 : ' + title);
  		  		
		var intro_write = $('#intro_write').val();
  		console.log('소개본문 : '+ intro_write);															//소개 본문
		
		console.log('이미지 경로 : '+$('#upload_readonly').val());									//이미지 이름
		
		var period = $('input:radio[name="period"]:checked').val();							//자유연재 free_w or 요일연재 week_w
		var test;
		var days = new Array();
		var sw = 0;																									//스위치(0->요일연재 1->자유연재)
		
		if(period=='week_w'){
			test = '요일연재';

		    $('input:checkbox[name=day]').each(function() {									//요일연재 -> 선택한 요일
		    	if($(this).is(':checked'))
		    		days.push($(this).val());
		    		sw = 0;
		    });
		  
		}else{
			test = '자유연재';
			console.log('연재일정 : '+test);
			days.length = 0;
			sw = 1;
		} 
					
		console.log('장르선택 : '+$("select[name=genre]").val());								//장르
		
		var p_status=$("input:radio[name='p_status']:checked").val();					//공개여부 public or private		
		console.log('공개여부 : '+p_status);
		
		var ap_status=$("input:radio[name='ap_status']:checked").val();				//평가여부 appraise or no_appraise
		console.log('평가여부 : '+ap_status);
		
		/* 선택요일 출력
	  	for(var i=0; i<days.length; i++){
	    	console.log('선택한 요일 : '+days[i]);	
	    }
		*/
		
		var agree = $('input:checkbox[name=agree]').is(':checked');						//운영원칙 동의
		
		if(title.length > 30 || title.length <= 0) alert('제목은 1자 이상 30자 이하로 작성해주세요.');
		else if(days.length==0 && sw==0) alert('요일연재 시, 날짜선택은 필수입니다.');
		else if($("select[name=genre]").val()=='0') alert('장르는 필수선택 입니다.');
		else if(!agree) alert('운영원칙 동의 선택해주세요.');
		else alert('작품생성');
	});
	  
});
</script>

