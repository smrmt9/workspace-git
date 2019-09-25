<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home | 도전 작가 웹소설 읽기</title>
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
body{
	cursor: default;
}
.m-5p{
	width: 700px;
	margin-top: 5%;
}

/* nav */
.breadcrumb_item {
    font-size: 14px;
    font-style: italic;
    font-weight: 400;
    text-transform: capitalize;
}
/* nav active*/
.breadcrumb_item.active {
    font-size: 14px;
    font-style: italic;
    font-weight: 400;
    text-transform: capitalize;
    color: #e59285;
}
/* 입력한 텍스트 html */
#eg-previewer{
	visibility: hidden;
    position: absolute;
    left: -555px;
}

/* 제목 */
.title_area{
	margin: 30px 0 30px 0;
}
/* 부제목 */
h4.sub_title{
	color: grey;
	margin-top : 10px;
}

/* 내용 */
#froala-editor{
	font-size: 16px;
    line-height: 30px;
}
/* 버튼 */
.btn {
    margin: 0 20px;
}

/* 별점 */
.ly_grade_wrap {
   position: absolute;
   display:none;
   z-index: 100;
   left: 0;
   right: 0;
   border: 1px solid #d3ced2;
   background: #fff;
   width: 288px;
   margin: 10px auto 0;
}

/* 별점 영역 */
.ly_grade {
    width: 288px;
    padding: 20px 20px;
    text-align: center;
}
.grade_num {
    display: block;
    font-size: 41px !important;
    font-family: arial;
    color: #e59285 !important;
    text-align: center;
    line-height: 49px;
}
.blind {
    position: absolute;
    clip: rect(0 0 0 0);
    width: 1px;
    height: 1px;
    margin: -1px;
    overflow: hidden;
}
.viewer_footer .section_grade .grade_bw {
    overflow: hidden;
    width: 210px;
    margin: 3px auto 18px;
}

.star_rating {font-size:0; letter-spacing:-4px;}
.star_rating a {
    font-size:22px;
    letter-spacing:0;
    display:inline-block;
    margin-left:5px;
    color:#e5928530;
    text-decoration:none;
}
.star_rating a:first-child {margin-left:0;}
.star_rating a.on {color:#e59285;}

.htxt_gradedsc{
	color: #e59285;
	font-size: 12px;
}
i.fa.fa-star, i.fa.fa-star-o{
	color: #e59285;
}
/* ---------------------------------- */

/* 작가의 말 */
.author_say {
    min-height: 130px;
    border: 1px solid #d3ced2;
    border-radius: 8px;
    padding: 16px;
}

@media only screen and (max-width: 768px){
	.m-5p{
		width: 100%;
		padding : 0 20px;
	}
	div#wrapper {
    	margin-top: 25%;
	}
	/* 버튼 */
	.btn {
    	margin: 0 5px;
	}

}
</style>

<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false"><!-- 드레그&우클릭 방지 -->
	<!-- Main wrapper -->
	<jsp:include page="../views/include/header.jsp" />
	
	<div class="row">
		<div class="container m-5p">
			
			<div class="wrapper" id="wrapper">
				
				<nav class="bradcaump-content" style="text-align: right;">
            		<a class="breadcrumb_item" href="#">Home</a>
                	<span class="brd-separetor">/</span>
					<a class="breadcrumb_item" href="#">웹소설</a>
					<span class="brd-separetor">/</span>
					<a class="breadcrumb_item" href="#">도전! 작가</a>
					<span class="brd-separetor">/</span>
					<span class="breadcrumb_item active">작품명</span>
				</nav>				
        		
				<!-- 제목 -->
				<div class="title_area">
					<h2 class="main_title" style="text-align: center;">
						공기 청정, 하늘은 맑음 
					</h2>
				</div>
				
				<!-- 내용 -->
				<div class="fr-view" id="froala-editor">
					2. 강나루에서의 대혈전<br>
					 질주하는 말 위에 탄 자들은 머리에 검은 색의 두건을 두르고 있었는데 두건 중앙에는 원형의 노란색 수가 새겨져있었다.<br>
					'아뿔싸, 최정예대구나!'<br>
					 염정이 아무리 대단한 검의 고수이더라도 최정예대 수십 명이 한꺼번에 들이닥치니 간담이 서늘해지지 않을 수 없었다. 게다가 염정은 추적자들로부터 달아나는 동안 내력을 많이 소모한지라 몸이 정상적인 상태가 아니었다.<br> 
					 거리상으로 보아 이제 그들은 2, 3분이면 도달할 터였다. <br>
					 염정은 불현듯 옆에 앉아있는 젊은 부부를 생각했다.<br>
					'설령 내가 저들을 막다 잘못 된다하더라도, 이들에게 맡긴다면...'<br>
					 그 생각과 동시에 그는 돌연 젊은 부부를 향해 큰 절을 올렸다. 부부는 갑작스런 그의 모습에 영문을 몰라하며 깜짝 놀랬다. 안 그래도 이쪽으로 들이닥치는 수 십마리의 인마에 놀라고 있었는데, 자신들보다 훨씬 나이많아 보이는 모르는 사나이가 큰 절을 올리니 말이다.<br>
					"어, 어찌 절을 올리십니까?!"<br>
					 남편이 크게 놀라며 입을 열었다.<br>
					 남편의 물음에 염정은 부부와 뱃사공에게 말을 시작했다.<br>
					"자세히 설명할 시간이 없습니다! 이제 곧 저들이 이곳에 들이닥치면, 저는 저들과 결전을 벌일 것입니다. 저들이 노리고 있는 것은 이 아기이온데, 아기가 저들에게 붙잡힌다면 필시 죽임을 당할 것입니다. 그러니 이 강을 건너시면 두 분께서 이 아기를 맡아 길러주십시오. 그리고 강을 건너시면 할 수 있는 한 최대한 멀리 남쪽으로 내려가십시오."<br>
					"그..그것이..."<br>
					 놀라는 남편을 향하여 염정이 들고있던 보따리를 건네며 말했다.<br>
					"아이에 관련된 모든 것들은 안에 적혀있는 서신에 적혀있습니다. 또한 짐 속의 모든 금덩어리를 드릴테니 그것으로 두 분의 생활에 보태시고 아이를 기르는데 사용해 주십시오!"<br>
					"도대체 무슨 상황인지 이해가..."<br><br>
					 남편의 말에 아랑곳없이 염정은 배 밖으로 몸을 날렸다. 그리고는 뱃사공을 향해 소리를 질렀다.<br>
					"사공 어른, 저들은 아이는 물론 당신들 모두를 죽일려 할 겁니다. 녀석들이 화살을 쏠 것이니 화살의 사정권 밖으로 최대한 멀리 벗어나십시오!"<br>
					"아, 알겠수다!"<br>
					 염정의 경고에 겁을 집어먹은 사공 노인은 최대한 힘을 다해 노를 젓기 시작했다. 또한 아직도 멍해있는 남편에게 다그치듯 말했다.<br>
					"말 못들었수? 멍하게 있을 때가 아니니 당신도 같이 노를 잡으쇼!"<br>
					"아, 네네"<br>
					 사공의 다그침에 조금 정신을 차린 남편도 노를 잡아 힘을 다해 젓기 시작했다. 배는 강나루로부터 서서히 벗어나기 시작했다.<br> 
					 염정은 마지막으로 고개를 뒤로 돌려 아기를 바라보았다. 부인이 아기를 다정히 안고 있었다. 오랜 강호 생활을 통해 염정은 사람을 보는 눈이 있었는데 그가 보기에 젊은 부부는 신의가 있고 인심이 두터운 사람들이었다.<br>
					 마지막으로 아기를 향해 내심 중얼거렸다.<br>
					'아기씨, 어쩌면 지금이 얼굴을 보는 마지막 순간이겠군요. 무시히 강을 건너 꼭 살아남으셔서, 언젠가 아버님의 자리를 다시 회복하셔야 합니다!'<br>
					 생각을 마친 염정은 앞을 바라보았다. 수십 마리의 인마들은 불과 자신의 십 여미터 앞까지 도착해있었다.<br>
					 "따그닥~따그닥~~"<br>
					 "끼이잉!"<br>
					 '오너라! 아기씨가 강을 건널 시간을 벌어드리기 위해, 죽을때까지 이곳에서 너놈들과 싸워주마.'<br>
					 염정은 검집에서 검을 뽑아들었다. 날카로운 검광이 아침햇살에 반사되어 예리하게 빛나고 있었다. <br>
					 말 위의 무사들은 염정이 사정권 안에 들어오자 바로 화살을 날리기 시작했다.<br>
					"피유웅~!"<br><br>
					 한꺼번에 수 십대의 화살이 염정을 향해 날아오기 시작했다. 염정은 이미 내력이 거의 소진된 터였지만 마지막 남아있는 기운을 끌어모았다.<br>
					'남은 내력으로 마지막 벽뇌검을!'<br>
					 염정은 남은 내력을 검에 실어 마지막 벽뇌검을 펼쳤다.<br>
					'벽뇌검!'<br>
					 염정의 검이 날아드는 화살을 향해 번개같은 속도로 허공을 수평으로 갈랐다. 그러자 검에서 다시 한번 강한 검기가 빛나 화살과 그것을 쏜 자들을 향해 쏘아졌다.<br>
					 '번쩍!'<br>
					 그러자, 염정의 강력한 검기에 무섭게 날라오던 화살들은 조각조각 잘라져 흩어졌고 화살을 쏜 자들의 몸도 갈기 갈기 잘려져나갔다.<br>
					 "헉"<br>
					 또 다시 무서운 아비규환이 펼쳐졌다. 선두에서 화살을 쏘며 달려온 이들은 물론 그들이 타고온 말들까지 두 동강이 난 놈에, 목이 잘린 놈에, 내장이 터져 나온 놈에...말할 수 없이 참혹한 광경이 또 다시 재현되었다.<br>
					 수 십의 인마 중 앞장 서 달려온 십 수기의 인마가 염정이 펼친 한 번의 벽뇌감에 저승으로 떨어진 것이다.<br>
					 뒤에서 그 모습을 지켜 본 무사들은 압도적인 염정의 벽뇌검에 경악을 금치 못했다. 곧, 그들 중 두목으로 보이는 자가 소리쳤다.<br>
					"저 놈은 이미 내력을 거의 다 소진했다! 더 이상 벽뇌감을 펼치지 못할 터이니  두려워 말라. 염정을 빨리 죽이고 저 나룻배를 빨리 잡아야 한다!"<br>
					 곧 그들은 말에서 내린 후, 염정을 에워쌌고 두목이 날카로운 눈으로 염정을 바라보며 입을 열었다.<br>
					"염정! 감히 내 동생을 죽였겠다. 내 오늘 너를 죽여, 그 시신을 처참하게 조각  내 주마. 아울러 저 갓난아기도 잡아 너와 같이 보네주마."<br>
					"야율강, 이 피도 눈물도 없는 놈. 저 아기는 너에게 하늘 같은 은혜를 베풀어 준 분의 아들이거늘...감히 그런 소리를 한단 말이냐?!" <br>
					 염정이 크게 격분하여 소리쳤다.<br>
					"잔말말고 저승으로 떠날 준비를 하라!"<br>
					 야율강이 수신호를 내리자 남아있는 수 십명의 무사들이 염정의 주변을 에워쌌다.<br>
					"지금은 벽뇌검을 쓰지 못할테니, 저놈을 단숨에 죽여라!"<br>
					 야율강의 명령과 함께 수 십개의 검이 염정의 몸을 노리기 시작했다. 그리고 그들 공격의 중심에는 이들의 두목이자 최고수인 야율강이 있었다.<br> 
					 야율강의 날카로운 공격이 염정의 목을 날카롭게 베워갔다.<br>
					 염정은 그의 매서운 공격을 피하며 자신의 절기 중 하나인 '운무 십삼식 검법'(雲舞 十三式 劍法)을 펼치며 자신을 향해 달려주는 수 십개의 검 공격에 맞서기 시작했다.<br>
					 비록 지금의 염정은 내력을 거의 소모했지만, 이 운무 십삼식 검법은 내력이 부족한 자라도 펼치면 능히 수 십의 상대를 막아낼수 있는 뛰어난 검법이었다. <br>
					 한참동안 염정은 운무검법으로 야율강과 그의 부하들의 검을 막아내고 있었다. 그러나 내력이 소진된 상태에서 수 십명의 적들과 맞서자니 점차 체력이 고갈되고 있었다.<br>
					'이..이런..몸이 점점...'<br>
					 구름처럼 가벼웠던 그의 몸놀림이 점차 둔해지기 시작했다. 그러면서 그의 동작에 점차 헛점이 나타나기 시작했다. 염정과 맞서던 야율강은 찰나의 순간, 염정의 왼팔에 생긴 헛점을 발견했다.<br>
					 그는 번개처럼 달려들며 야율강의 왼쪽어깨를 베었다.<br>
					"악"<br>
					 야율강의 검에 왼팔을 베인 염정은 고통에 비명을 질렀다. 염정이 아무리 대단한 무사라 할 지라도 검에 베일때의 커다란 고통은 참을 수 없는 것이다.<br> 
					 염정은 고통을 참고 운무검으로 여전히 적들에 맞섰지만 왼팔에서 커다란 출혈까지 발생하자 체력은 더욱 고갈되어갔다. 최선을 다해 방어를 하며 맞섰지만 점차 녀석들의 공격에 몸 이곳 저곳이 베이고 찔렀다.<br>
					 염정의 모습을 본 야율강이 입가에 썩은 미소를 흘리며 부하들에게 명했다.<br>
					"놈은 이제 다 죽은 거나 다름없다. 나 혼자 녀석을 처리할테니 나머지는 배를 쫓아라!"<br>
					"네!"<br>
					 야율강의 명령에 나머지 부하들은 배를 쫓기 시작했다. 그러나 그들이 강나루에 도달하니 배는 이미 상당히 멀리 벗어난 터였다.<br>
					"화살을 날려라!"<br>
					 한 녀석의 명령에 수 십의 무사들이 활을 뽑아 나룻배를 향해 화살을 쏘았다.   화살이 빗발처럼 나룻배를 향해 쏘아지기 시작했다. 그러나 나룻배는 이미 활의 사정권을 벗어난 터라 포물선을 그리며 날라간 화살들은 나룻배에 도달하지 못하고 그 후미 근방으로만 떨어졌다.<br>  
					 사공과 부부는 자신들을 향해 빗발처럼 날라오는 화살들을 잠시 공포에 질려 올려다보았으나 자신들을 맞추지 못한다는 것을 알고는 안도의 한숨을 쉬었다.<br>
					"무서운 놈들인 것 같으니, 더욱 멀리 벗어납시다! 젊은 양반 노를 더욱 힘차게 저어요!"<br>
					"네, 어르신!"<br>
					 염정의 말이 사실인 것을 안 사공과 남편은 더욱 사력을 다해 노를 저어나갔다. 잠시 놀랐던 부인은 이내 평정을 찾고는 품에 안고 있는 아기를 달랬다.<br>
					"응애 응애~!"<br>
					"아가야, 이제 무서워할 필요 없어. 나쁜 놈들에게 멀리 달아나고 있으니 이제는 안심해도 되."<br>
					 그 말과 함께 부인은 아기의 얼굴에 살짝 뽀뽀를 했다. 그러자 아기는 기분이 좋아서는 연신 방글거렸다. 그 모습에 부인은 아기가 마치 자신의 품에서 난 친 자식같다는 생각이 들었다.<br>
					 "어쩜, 웃는 모습이 이렇게 귀엽고 사랑스러울까?!"<br>
					 그녀는 많은 아기들을 봐왔지만 지금 품에 안고있는 아이처럼 이토록 사랑스런 아기는 처음이었다.<br>
					 <br><br><br>
					 한편, 염정은 야율강과 일대일로 간신히 맞서고 있었지만 이미 체력이 완전히 고갈된 그는 더 이상 야율강의 적수가 될 수 없었다.<br>
					"너가 내 동생을 그렇게 만든 것처럼 나 또한 너를 이곳에서 갈기갈기 찢어 죽여주마!"<br>
					 번뜩이는 살기로 가득한 야율청이 그 말과 함께 비호처럼 달려들며 염정의 복부를 찔렀다. 이미 기운이 다 빠진 염정은 야율청의 공격을 막아내지 못하고 그대로 복부에 검을 허용했다.<br>
					 복부에 검이 관통당하자, 아까보다 몇 배는 큰 고통이 느껴졌다.<br>
					"헉!"<br>
					 또 다시 너무나 큰 고통에 염정은 순간 몸이 그대로 고꾸라질 것 같았다.<br> 
					 야율강은 복부에서 피가 뿜어져 나오는 염정을 향해 악귀같은 미소를 지으며 천천히 다가왔다.<br> 
					 "너의 몸을 여러 조각으로 잘게 잘라 가장 고통스럽고 비참하게 죽여주마. 이얏!"<br>
					 그 말과 함께 그의 검은 염정의 몸을 내리치고 있었다.<br>
					 의식을 잃어가는 염정의 눈에 자신을 향해 내리쳐지는 야율강의 모습이 들어왔다. 이제 곧 그는 저승으로 떨어질 터였다.<br> 
					'이..이제 죽는구나. 차라리 잘 됬어. 하늘에 가면 그분들을 만날테니까..'<br>
					<br><br><br>
				</div>
				
				<!-- 이전화 목록 다음화 -->
				<div class="account__form" style="text-align: center;">
					<div class="form__btn">
						<button class="btn" id="prev_btn" type="button">이전글</button>
						<button class="btn" id="list_btn" type="button">목록</button>
						<button class="btn" id="next_btn" type="button">다음글</button>
					</div>
				</div>
				
				<!-- 별점주기 -->
				<div class="account__form" style="text-align: center;">
					<div class="form__btn">
						<div style="display: inline-block;">
							<h2>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								<i class="fa fa-star-o" aria-hidden="true"></i>
								 <em style="color: #e59285">6점</em>
							</h2>
						</div>
						<div>
							<button class="rate_btn" id="rate_btn" type="button">별점주기</button>
							
							<div class="ly_grade_wrap" id="starScoreLayer">
								<div class="ly_grade">
									<span class="grade_num" id="selectedStarScore">10<span class="blind">점</span></span>
									
									<!-- 별점 영역 -->
									<p class="star_rating">
									    <a href="#" class="on">★</a><span class="blind jumsu">2</span>
									    <a href="#" class="on">★</a><span class="blind jumsu">4</span>
									    <a href="#" class="on">★</a><span class="blind jumsu">6</span>
									    <a href="#" class="on">★</a><span class="blind jumsu">8</span>
									    <a href="#" class="on">★</a><span class="blind jumsu">10</span>
									</p>

									<p class="htxt_gradedsc">별을 클릭하세요</p>
									
								<button type="button" class="give_rate_btn">등록</button>
								<button type="button" class="rate_btn rate_close">닫기</button>
							</div>
						</div>
							
						</div>
					</div>
				</div>
				
				<!-- 작가의 말 -->
				<label style="margin-top:2%;"><strong>작가의 말</strong></label>
				<div class="author_say">
					작가의 말 영역
				</div>
				
				<!-- 댓글 -->
				<jsp:include page="../views/include/w_novel_nId_reply.jsp" />
				
			</div>
		</div><!-- container -->
		
	</div><!-- row -->
</body>

</html>

<jsp:include page="../views/include/footer.jsp" />

<script>
$(function() { 
	
	//별점 등록 레이어 보기
	$('.rate_btn').click(function(){
		$('#starScoreLayer').toggle();
	});
  	
	//별점 정하기
	var jumsu = '';
	$(".star_rating a").click(function() {
	     $(this).parent().children("a").removeClass("on");
	     $(this).addClass("on").prevAll("a").addClass("on");
	     
	     jumsu = $(this).next().text();			//별점 점수
	     console.log(jumsu);
	     
	     $('#selectedStarScore').text(jumsu);
	     
	     return false;
	});
	
	
	  
});
</script>

