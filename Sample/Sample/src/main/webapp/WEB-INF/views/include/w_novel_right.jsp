<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	
		

        			<div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
        				<div class="shop__sidebar">
        					<aside class="wedget__categories poroduct--cat">
        						<h3 class="wedget__title">소설 장르</h3>
        						<ul>
        							<li><a href="#">로맨스<span>(3)</span></a></li>
        							<li><a href="#">판타지<span>(4)</span></a></li>
        							<li><a href="#">무   협<span>(6)</span></a></li>
        							<li><a href="#">기   타<span>(7)</span></a></li>
        							<li><a href="#">릴레이소설<span>(2)</span></a></li>
        						</ul>
        					</aside>
        					<aside class="wedget__categories poroduct--tag">
        						<h3 class="wedget__title">인기 해시태그</h3>
        						<ul>
        							<li><a href="#">#로맨스</a></li>
        							<li><a href="#">#무협</a></li>
        							<li><a href="#">#먼치킨</a></li>
        							<li><a href="#">#추리</a></li>
        							<li><a href="#">#스릴러</a></li>
        						</ul>
        					</aside>
        					<aside class="wedget__categories poroduct--cat">
        						<h3 class="wedget__title">Hoo 추천작</h3>
        						<div class="recent-posts">
        							<ul>
        								<c:forEach begin="0" step="1" end="2">
        								<li>
        									<div class="post-wrapper d-flex">
        										<div class="thumb">
        											<a href="#"><img src="../resources/images/blog/sm-img/1.jpg" alt="blog images" style="min-height: fit-content;"></a>
        										</div>
        										<div class="content">
        											<h4><a href="#"><strong>완벽한 쇼윈도</strong></a></h4>
        											<p>로맨스</p>
        											<p><i class="fa fa-star rate"></i> 10 <i class="fa fa-heart rate"></i> 1,201</p>
        										</div>
        									</div>
        								</li>
        								</c:forEach>
        							</ul>
        						</div>
        					</aside>
        					<aside class="wedget__categories sidebar--banner">
        						<h3 class="wedget__title">Hoo 작가 신청!</h3>
								<img src="../resources/images/others/banner_left.jpg" alt="banner images">
        					</aside>
        				</div>
        			</div>
       
        			
        			