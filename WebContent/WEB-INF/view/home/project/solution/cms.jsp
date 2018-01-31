<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/JDC/resource/bootstrap/assets/css/docs_cms.css" rel="stylesheet">

<div class="container" style="margin-top:80px;">
    <div class="row">
      <div class="span3 bs-docs-sidebar">
        <ul class="nav nav-list bs-docs-sidenav affix" style="margin-top:100px;*margin-left: -120px;float:left;">
          <li class="active"><a href="#process"><i class="icon-chevron-right"></i> 학술대회 관리 체계</a></li>
          <li><a href="#registration"><i class="icon-chevron-right"></i> 1. 저자</a></li>
          <li><a href="#judge"><i class="icon-chevron-right"></i> 2. 심사위원</a></li>
          <li><a href="#editor"><i class="icon-chevron-right"></i> 3. 편집위원장(관리자)</a></li>
          <li><a href="#chairman"><i class="icon-chevron-right"></i> 4. 학술대회 참가등록</a></li>
          <li><a href="http://210.115.58.69/test_kwcms"><i class="icon-chevron-right"></i> 체험 사이트 </a></li>
        </ul>
      </div>
      <div class="span9">
          <section id="process">
              <h2>
                논문 심사 프로세스
              </h2>
            <div class="download-btn">
              <h4>심사절차</h4>
              <img src="/JDC/resource/home/solution/cms/kwconf_process.png" />
            </div>
          </section><!-- /download -->
          
          <section id="registration">
              <h2>
                1. 저자
              </h2>
           <div class="row">
				<div id="myCarousel" class="carousel slide">
					<ol class="carousel-indicators"> 
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<c:forEach varStatus="i" begin="1" end="4"> 
							<li data-target="#myCarousel" data-slide-to="${i.count}"></li>
						</c:forEach>
					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="active item">신규 논문 접수<img src="/JDC/resource/home/solution/cms/author/1.png" >
						</div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/author/2.png" >
						</div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/author/3.png" >
						</div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/author/4.png" >
						</div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/author/5.png" >
							<!-- <div class="carousel-caption">
								<h4>논문 접수 확인</h4>
								<p>논문 접수 확인 페이지입니다.</p>
							</div> -->
						</div>
					</div>
					<!-- Carousel nav -->
					<a class="carousel-control left" href="#myCarousel"	data-slide="prev">&lsaquo;</a> 
						<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
					</div>
				</div><!-- /row -->
          </section>

          <section id="judge">
              <h2>
                2. 심사위원
              </h2>
            <div class="row">
				<div id="myCarousel2" class="carousel slide">
					<ol class="carousel-indicators"> 
						<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel2" data-slide-to="1"></li>
					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="active item"><img src="/JDC/resource/home/solution/cms/reviewer/1.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/reviewer/2.png" ></div>
						<!-- Carousel nav -->
						<a class="carousel-control left" href="#myCarousel2" data-slide="prev">&lsaquo;</a> 
						<a class="carousel-control right" href="#myCarousel2" data-slide="next">&rsaquo;</a>
					</div>
				</div>
			</div><!-- /row -->
          </section>


          <section id="editor">
              <h2>
                3. 편집위원장(관리자)
              </h2>
            <div class="row">
				<div id="myCarousel3" class="carousel slide">
					<ol class="carousel-indicators"> 
						<li data-target="#myCarousel3" data-slide-to="0" class="active"></li>
						<c:forEach varStatus="i" begin="1" end="11"> 
							<li data-target="#myCarousel3" data-slide-to="${i.count}"></li>
						</c:forEach>
					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="active item"><img src="/JDC/resource/home/solution/cms/chair/01.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/02.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/03.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/04.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/05.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/06.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/07.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/08.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/09.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/10.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/11.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/chair/12.png" ></div>
					</div>
					<!-- Carousel nav -->
					<a class="carousel-control left" href="#myCarousel3" data-slide="prev">&lsaquo;</a> 
					<a class="carousel-control right" href="#myCarousel3" data-slide="next">&rsaquo;</a>
				</div>
            </div><!-- /row -->
          </section>

		<section id="chairman">
			<h2>
				4. 행사 참가 등록
			</h2>
			<div class="row">
				<div id="myCarousel4" class="carousel slide">
					<ol class="carousel-indicators"> 
						<li data-target="#myCarousel4" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel4" data-slide-to="1"></li>
					</ol>
					
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="active item"><img src="/JDC/resource/home/solution/cms/registration/1.png" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/cms/registration/2.png" ></div>
					</div>
					<!-- Carousel nav -->
					<a class="carousel-control left" href="#myCarousel4" data-slide="prev">&lsaquo;</a> 
					<a class="carousel-control right" href="#myCarousel4" data-slide="next">&rsaquo;</a>
				</div>
            </div><!-- /row -->
          </section>
      </div>
    </div>

  </div>

