<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/JDC/resource/bootstrap/assets/css/docs.css" rel="stylesheet">

<div class="container" style="margin-top:80px;">
    <div class="row">
      <div class="span3 bs-docs-sidebar">
        <ul class="nav nav-list bs-docs-sidenav affix" style="margin-top:100px;*margin-left: -120px;float:left;">
          <li class="active"><a href="#process"><i class="icon-chevron-right"></i> 논문 프로세스</a></li>
          <li><a href="#registration"><i class="icon-chevron-right"></i> 1. 투고자</a></li>
          <li><a href="#judge"><i class="icon-chevron-right"></i> 2. 심사위원</a></li>
          <li><a href="#editor"><i class="icon-chevron-right"></i> 3. 편집위원</a></li>
          <li><a href="#chairman"><i class="icon-chevron-right"></i> 4. 편집위원장</a></li>
          <li><a href="http://210.115.58.68/JMS_KOR/xtest2"><i class="icon-chevron-right"></i> 체험 사이트 </a></li>
        </ul>
      </div>
      <div class="span9">
          <section id="process">
              <h2>
                논문 심사 프로세스
              </h2>
            <div class="download-btn">
              <h4>심사절차</h4>
              <img src="/JDC/resource/home/solution/jms/jms_process.png" />
            </div>
          </section><!-- /download -->
          
          <section id="registration">
              <h2>
                1. 투고자
              </h2>
           <div class="row">
				<div id="myCarousel" class="carousel slide">
					<ol class="carousel-indicators"> 
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<c:forEach varStatus="i" begin="0" end="24"> 
							<li data-target="#myCarousel" data-slide-to="${i.count}"></li>
						</c:forEach>
					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="active item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740001.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740002.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740003.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740004.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740005.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740006.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740007.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740008.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740009.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b74000a.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b74000b.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b74000c.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b74000d.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b74000e.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b74000f.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740010.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740011.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740012.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740013.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740014.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740015.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740016.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740017.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740018.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/registration/gva00001b740019.gif" ></div>							
					</div>
					<!-- Carousel nav -->
					<a class="carousel-control left" href="#myCarousel"
						data-slide="prev">&lsaquo;</a> <a class="carousel-control right"
						href="#myCarousel" data-slide="next">&rsaquo;</a>
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
						<c:forEach varStatus="i" begin="0" end="9"> 
							<li data-target="#myCarousel2" data-slide-to="${i.count}"></li>
						</c:forEach>
					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="active item"><img src="/JDC/resource/home/solution/jms/judge/gva000026740001.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/judge/gva000026740002.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/judge/gva000026740003.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/judge/gva000026740004.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/judge/gva000026740005.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/judge/gva000026740006.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/judge/gva000026740007.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/judge/gva000026740008.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/judge/gva000026740009.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/judge/gva00002674000a.gif" ></div>
					</div>
					<!-- Carousel nav -->
					<a class="carousel-control left" href="#myCarousel2"
						data-slide="prev">&lsaquo;</a> <a class="carousel-control right" href="#myCarousel2" data-slide="next">&rsaquo;</a>
					</div>
				</div><!-- /row -->
          </section>


          <section id="editor">
              <h2>
                3. 편집위원
              </h2>
            <div class="row">
				<div id="myCarousel3" class="carousel slide">
					<ol class="carousel-indicators"> 
						<li data-target="#myCarousel3" data-slide-to="0" class="active"></li>
						<c:forEach varStatus="i" begin="0" end="16"> 
							<li data-target="#myCarousel3" data-slide-to="${i.count}"></li>
						</c:forEach>
					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="active item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740001.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740002.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740003.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740004.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740005.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740006.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740007.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740008.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740009.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva00002674000a.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva00002674000b.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva00002674000c.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva00002674000d.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva00002674000e.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva00002674000f.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740010.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740011.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740012.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740013.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740014.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740015.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740016.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/editor/gva000026740017.gif" ></div>
					</div>
					<!-- Carousel nav -->
					<a class="carousel-control left" href="#myCarousel3"
						data-slide="prev">&lsaquo;</a> <a class="carousel-control right" href="#myCarousel3" data-slide="next">&rsaquo;</a>
					</div>
            </div><!-- /row -->
          </section>

          <section id="chairman">
              <h2>
                4. 편집위원장
              </h2>
            <div class="row">
				<div id="myCarousel4" class="carousel slide">
					<ol class="carousel-indicators"> 
						<li data-target="#myCarousel4" data-slide-to="0" class="active"></li>
						<c:forEach varStatus="i" begin="0" end="24"> 
							<li data-target="#myCarousel4" data-slide-to="${i.count}"></li>
						</c:forEach>
					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="active item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740001.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740002.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740003.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740004.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740005.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740006.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740007.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740008.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740009.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva00002674000a.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva00002674000b.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva00002674000c.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva00002674000d.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva00002674000e.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva00002674000f.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740010.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740011.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740012.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740013.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740014.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740015.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740016.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740017.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740018.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva000026740019.gif" ></div>
						<div class="item"><img src="/JDC/resource/home/solution/jms/chairman/gva00002674001a.gif" ></div>
					</div>
					<!-- Carousel nav -->
					<a class="carousel-control left" href="#myCarousel4"
						data-slide="prev">&lsaquo;</a> <a class="carousel-control right" href="#myCarousel4" data-slide="next">&rsaquo;</a>
					</div>
            </div><!-- /row -->
          </section>
      </div>
    </div>

  </div>

