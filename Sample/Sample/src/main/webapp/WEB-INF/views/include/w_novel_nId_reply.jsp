<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<style>
/* 댓글 */
textarea#reply_textarea {
    width: 100%;
    min-height: 120px;
    width: 100%;
    border: 1px solid #ebebeb;
    resize: none;
    padding: 16px;
}

/* 댓글리스트 */
.reply_content {
    border: 1px solid #ececec;
    border-radius: 3px;
    margin-left: 10px;
    padding: 10px;
    width: 100%;
    position: relative;
}
/* 댓글 유저 프로필 사진 */
.wn__comment{
	display: flex;
}
/* 댓글 좋아요 */
.rep_like{
	margin-left: 10px;
	width: 100%;
    text-align: right;
}
/* 댓글 등록 버튼 wrap */
.reply_btn_wrap{
	margin-top: 2px;
    display: inline-block;
    float: right;
}
</style>

<!-- 댓글 -->
<div class="account__form">
	<h3 class="wedget__title">댓글 (20개)</h3>
	<span>by 아이디</span><!-- 로그인 시 -->
	<div>
		<textarea id="reply_textarea" maxlength="300"
			placeholder="악성댓글은 삭제될 수 있습니다." onkeyup="reply_word_count(this.value)"></textarea>
		<span id="char_count">0/300</span>
		<div class="form__btn reply_btn_wrap" style="text-align: right; margin-top: 2px;">
			<button type="button">등록</button>
		</div>
	</div>
	<!-- 댓글 리스트 -->
	<div class="comments_area">
		<h3 class="comment__title" style="visibility: hidden;">댓글 목록</h3>
		<ul class="comment__list">

			<c:forEach begin="1" end="10" step="1">
				<li style="margin: 0 0 30px;">
					<div class="wn__comment">
						<div class="thumb">
							<img src="../resources/images/blog/comment/1.jpeg"
								alt="comment images">
						</div>
						<div class="content reply_content">
							<div class="comnt__author d-block d-sm-flex">
								<span><a href="#">testID111</a></span>
								<div class="rep_like">
									<a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> <span style="font-size: 12px;">10 </span></a>
									<a href="#"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> <span style="font-size: 12px;">2</span></a>
								</div>
							</div>
							<p>Sed interdum at justo in efficitur. Vivamus gravida
								volutpat sodales. Fusce ornare sit</p>
							<span style="color: black; font-size: 10px;"><i
								class="fa fa-calendar" aria-hidden="true" style="color: black;"></i>
								2019-05-16</span>
								
							<span style="display: inline-block; float: right;"><a href="#"><i class="fa fa-trash" aria-hidden="true"></i> 삭제</a></span>
								
						</div>
					</div>
				</li>
			</c:forEach>

		</ul>

		<!-- 댓글 페이지 -->
		<div class="col-lg-12">
			<ul class="wn__pagination">
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
			</ul>
		</div>
		<!-- 댓글페이지 -->

	</div>

</div>


