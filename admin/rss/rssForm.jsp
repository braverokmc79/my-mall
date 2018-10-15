<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ include file="/admin/header.jsp" %>


<%@ include file="/admin/topMenu.jsp" %>

<%@ include file="/admin/left.jsp" %>




 
 <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">RSS 관리 </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<div class="row">


<article>
 
<div style="border: 1px solid blue; padding: 3px; margin: 5px;">
<h4>현재 RSS  URL </h4>
<ol id="rssOl">
<c:forEach items="${ rssVO }"  var="rss">
 <li>${ rss.rssUrl }</li>
</c:forEach>

</ol>
</div> 
 

<form class="form-horizontal" id="frm1"  name="frm1" >
  <div class="form-group">
    <input type="hidden" value="1" name="bno" >
    <label for="rssUrl" class="col-sm-2 control-label">첫번째  RSS</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"  name="rssUrl" placeholder="URL">
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary" >확인</button>
    </div>
  </div>
  
</form>
	

<form class="form-horizontal" id="frm2"  name="frm2">
 <input type="hidden" value="2" name="bno" >
  <div class="form-group">
    <label for="rssUrl" class="col-sm-2 control-label">두번째  RSS</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"  name="rssUrl" placeholder="URL">
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">확인</button>
    </div>
  </div>
</form>
	
<form class="form-horizontal" id="frm3"  name="frm3">
 <input type="hidden" value="3" name="bno" >
  <div class="form-group">
    <label for="rssUrl" class="col-sm-2 control-label">세번째  RSS</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"   name="rssUrl" placeholder="URL">
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">확인</button>
    </div>
  </div>
</form>

<div style="border: 1px solid red; padding: 3px;">
<p>
네이버 블로그 RSS 주소: http://blog.rss.naver.com/아이디.xml</p>
<p>
티스토리 블로그 RSS 주소: http://아이디.tistory.com/rss 
</p>		

</div>

<div class="form-horizontal">
<label for="inputEmail3" class="col-sm-2 control-label">RSS  주소 모음</label>
<textarea rows="20" cols="" class="form-control">
* 전자신문*
오늘의 뉴스 http://rss.etnews.co.kr/Section901.xml
뉴스속보 http://rss.etnews.co.kr/Section902.xml
오늘의 인기기사 http://rss.etnews.co.kr/Section903.xml
오늘의 추천기사 http://rss.etnews.co.kr/Section904.xml
통신방송 http://rss.etnews.co.kr/Section031.xml
네트워크 http://rss.etnews.co.kr/Section034.xml
정보화 http://rss.etnews.co.kr/Section041.xml
솔루션 http://rss.etnews.co.kr/Section042.xml
보안 http://rss.etnews.co.kr/Section045.xml
디바이스·산전 http://rss.etnews.co.kr/Section061.xml
에너지·신성장 http://rss.etnews.co.kr/Section062.xml
생활가전 http://rss.etnews.co.kr/Section601.xml
정보가전 http://rss.etnews.co.kr/Section602.xml
자동차 http://rss.etnews.co.kr/Section603.xml
유통 http://rss.etnews.co.kr/Section604.xml
콘텐츠 http://rss.etnews.co.kr/Section101.xml
인터넷 http://rss.etnews.co.kr/Section102.xml
게임 http://rss.etnews.co.kr/Section103.xml 
교육·과학 http://rss.etnews.co.kr/Section021.xml
금융·증권 http://rss.etnews.co.kr/Section022.xml
전국뉴스 http://rss.etnews.co.kr/Section023.xml
경제 http://rss.etnews.co.kr/Section024.xml
부동산 http://rss.etnews.co.kr/Section026.xml
국제 http://rss.etnews.co.kr/Section050.xml
열린마당 http://rss.etnews.co.kr/Section110.xml
포토뉴스 http://rss.etnews.co.kr/Section800.xml

*이데일리* 
전체뉴스 http://rss.edaily.co.kr/edaily_news.xml
주식/펀드뉴스 http://rss.edaily.co.kr/stock_news.xml
경제/정책뉴스 http://rss.edaily.co.kr/economy_news.xml
금융/M&A뉴스 http://rss.edaily.co.kr/finance_news.xml
채권/외환뉴스 http://rss.edaily.co.kr/bondfx_news.xml
기업뉴스 http://rss.edaily.co.kr/enterprise_news.xml
월드뉴스 http://rss.edaily.co.kr/world_news.xml
부동산뉴스 http://rss.edaily.co.kr/realestate_news.xml
문화/생활뉴스 http://rss.edaily.co.kr/happypot_news.xml
이데일리칼럼 http://rss.edaily.co.kr/edaily_column.xml 
전체뉴스 http://rss.edaily.co.kr/spn_news.xml
연예뉴스 http://rss.edaily.co.kr/ent_news.xml
스포츠뉴스 http://rss.edaily.co.kr/sports_news.xml
창업뉴스 http://rss.edaily.co.kr/efn_news.xml

쿠키뉴스
전체기사 http://www.kukinews.com/rss/kukiRssAll.xml
사회 http://www.kukinews.com/rss/kukiSocRss.xml
정치 http://www.kukinews.com/rss/kukiPolRss.xml
지구촌 http://www.kukinews.com/rss/kukiIntRss.xml
스포츠 http://www.kukinews.com/rss/kukiSpoRss.xml
연예 http://www.kukinews.com/rss/kukiEntRss.xml
문화 http://www.kukinews.com/rss/kukiCulRss.xml
생활 http://www.kukinews.com/rss/kukiLifRss.xml
톡톡 http://www.kukinews.com/rss/kukiTokRss.xml
ONLY http://www.kukinews.com/rss/kukiOnyRss.xml
쿠키방송 http://www.kukinews.com/rss/kukiBroRss.xml

*국민일보
전체기사 http://www.kukinews.com/rss/kmibRssAll.xml
정치 http://www.kukinews.com/rss/kmibPolRss.xml
경제 http://www.kukinews.com/rss/kmibEcoRss.xml
사회 http://www.kukinews.com/rss/kmibSocRss.xml
국제 http://www.kukinews.com/rss/kmibIntRss.xml
스포츠 http://www.kukinews.com/rss/kmibSpoRss.xml
문화 http://www.kukinews.com/rss/kmibCulRss.xml
생활 http://www.kukinews.com/rss/kmibLifRss.xml
사설/칼럼 http://www.kukinews.com/rss/kmibColRss.xml
기독교소식 http://www.kukinews.com/rss/kmibChrRss.xml
겨자씨 http://www.kukinews.com/rss/kmibSeedRss.xml
역경의열매 http://www.kukinews.com/rss/kmibAdvRss.xml
가정예배 http://www.kukinews.com/rss/kmibWorRss.xml

*경향닷컴*
전체뉴스 http://www.khan.co.kr/rss/rssdata/total_news.xml 
오피니언 http://www.khan.co.kr/rss/rssdata/opinion.xml 
정치 http://www.khan.co.kr/rss/rssdata/politic.xml 
경제 http://www.khan.co.kr/rss/rssdata/economy.xml 
사회 http://www.khan.co.kr/rss/rssdata/society.xml 
문화 http://www.khan.co.kr/rss/rssdata/culture.xml 
IT과학 http://www.khan.co.kr/rss/rssdata/itnews.xml 
국제 http://www.khan.co.kr/rss/rssdata/world.xml 
스포츠 http://www.khan.co.kr/rss/rssdata/sports.xml 
매거진X http://www.khan.co.kr/rss/rssdata/mx.xml 
인물 http://www.khan.co.kr/rss/rssdata/people.xml 
스포츠전체 http://www.khan.co.kr/rss/rssdata/kh_sports.xml 
엔터테인먼트 http://www.khan.co.kr/rss/rssdata/kh_entertainment.xml 
펀 http://www.khan.co.kr/rss/rssdata/kh_fun.xml 
운세 http://www.khan.co.kr/rss/rssdata/kh_unse.xml 
기획 http://www.khan.co.kr/rss/rssdata/kh_special.xml 

*동아일보 기사 
전체기사 http://rss.donga.com/total.xml 
정치 http://rss.donga.com/politics.xml 
사회 http://rss.donga.com/national.xml 
경제 http://rss.donga.com/economy.xml 
국제 http://rss.donga.com/international.xml 
사설칼럼 http://rss.donga.com/editorials.xml 
의학과학 http://rss.donga.com/science.xml 
문화연예 http://rss.donga.com/culture.xml 
스포츠 http://rss.donga.com/sports.xml 
사람속으로 http://rss.donga.com/inmul.xml 

*스포츠동아 기사 
야구&MLB http://rss.donga.com/sportsdonga/baseball.xml 
축구 http://rss.donga.com/sportsdonga/soccer.xml 
골프 http://rss.donga.com/sportsdonga/golf.xml 
종합 http://rss.donga.com/sportsdonga/sports_general.xml 
엔터테인먼트 http://rss.donga.com/sportsdonga/entertainment.xml 

* 스포츠 서울
전체기사 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1 
야구기사 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=1 
축구기사 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=2 
스포츠종합기사 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=3 
연예기사 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=4 
라이프기사 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=5 
경마/경륜/경정기사 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=6 

*조선닷컴*
전체기사 http://www.chosun.com/site/data/rss/rss.xml
오늘의 주요뉴스 http://myhome.chosun.com/rss/www_section_rss.xml
경제 http://www.chosun.com/site/data/rss/economy.xml
정치 http://www.chosun.com/site/data/rss/politics.xml
사회 http://www.chosun.com/site/data/rss/national.xml
국제 http://www.chosun.com/site/data/rss/international.xml
문화 http://www.chosun.com/site/data/rss/culture.xml
사설.칼럼 http://www.chosun.com/site/data/rss/editorials.xml
IT http://www.chosun.com/site/data/rss/it.xml
과학 http://www.chosun.com/site/data/rss/science.xml
글로벌경제 http://www.chosun.com/site/data/rss/world_economy.xml
핫경제인 http://www.chosun.com/site/data/rss/econo_people.xml
스포츠 http://www.chosun.com/site/data/rss/sports.xml
연예 http://www.chosun.com/site/data/rss/ent.xml
더스타 http://thestar.chosun.com/site/data/rss/rss.xml
키위닷컴 http://keywui.chosun.com/keywui_rss.xml

*아이뉴스24 * IT뉴스 
전체기사 http://www.inews24.com/rss/rss_inews.xml
통신방송 http://www.inews24.com/rss/rss_it.xml 
컴퓨팅 http://www.inews24.com/rss/rss_computing.xml
디지털라이프 http://www.inews24.com/rss/rss_digital.xml
과학기술 http://www.inews24.com/rss/rss_tech.xml
게임 http://www.inews24.com/rss/rss_game.xml
문화·콘텐츠 http://www.inews24.com/rss/rss_culture.xml
증권·경제 http://www.inews24.com/rss/rss_stock.xml
글로벌 http://www.inews24.com/rss/rss_global.xml
문화·연예 전체기사 http://joynews.inews24.com/rss/rss_enter_entire.xml
연예 http://joynews.inews24.com/rss/rss_enter.xml 
방송 http://joynews.inews24.com/rss/rss_broad.xml 
가요·공연 http://joynews.inews24.com/rss/rss_music.xml
영화 http://joynews.inews24.com/rss/rss_movie.xml
스포츠 전체기사 http://joynews.inews24.com/rss/rss_sports.xml
야구 http://joynews.inews24.com/rss/rss_baseball.xml 
축구 http://joynews.inews24.com/rss/rss_soccer.xml
종합스포츠 http://joynews.inews24.com/rss/rss_total_sports.xml

*MBN(한국경제)
전체기사
http://mbn.mk.co.kr/rss/ 
정치 http://mbn.mk.co.kr/rss/politics/ 
경제 http://mbn.mk.co.kr/rss/economy/ 
사회 http://mbn.mk.co.kr/rss/society/ 
문화 http://mbn.mk.co.kr/rss/culture/ 
스포츠 http://mbn.mk.co.kr/rss/sports/ 
국제 http://mbn.mk.co.kr/rss/international/ 
증권 http://mbn.mk.co.kr/rss/stock/ 
부동산 http://mbn.mk.co.kr/rss/estate/

*한겨레
전체기사 http://www.hani.co.kr/rss/
정치 http://www.hani.co.kr/rss/politics/
경제 http://www.hani.co.kr/rss/economy/
사회 http://www.hani.co.kr/rss/society/
국제 http://www.hani.co.kr/rss/international/
대중문화 http://www.hani.co.kr/rss/culture/
스포츠 http://www.hani.co.kr/rss/sports/
과학 http://www.hani.co.kr/rss/science/
사설·칼럼 http://www.hani.co.kr/rss/opinion/
만화만평 http://www.hani.co.kr/rss/cartoon/
English Edition http://www.hani.co.kr/rss/english_edition/
한겨레섹션 http://www.hani.co.kr/rss/specialsection/
하니온리 http://www.hani.co.kr/rss/hanionly/
한겨레온리 http://www.hani.co.kr/rss/hkronly/
멀티하니 (사진뉴스) http://www.hani.co.kr/rss/multihani/
주요기사 http://www.hani.co.kr/rss/lead/
인기기사 http://www.hani.co.kr/rss/newsrank/


*한경닷컴
경제/금융 뉴스 http://rss.hankyung.com/economy.xml
증권 뉴스 http://rss.hankyung.com/stock.xml
부동산 뉴스 http://rss.hankyung.com/estate.xml
산업 뉴스 http://rss.hankyung.com/industry.xml
국제 뉴스 http://rss.hankyung.com/intl.xml
정치/사회 뉴스 http://rss.hankyung.com/politics.xml
스포츠/문화 뉴스 http://rss.hankyung.com/sports.xml
사설/칼럼 http://rss.hankyung.com/column.xml
취재기자 X-File http://rss.hankyung.com/xfile.xml
마켓리더스 http://rss.hankyung.com/leaders.xml
재테크 칼럼 http://rss.hankyung.com/ft.xml
자동차 칼럼 http://rss.hankyung.com/auto.xml
골프 칼럼 http://rss.hankyung.com/golf.xml
커뮤니티 칼럼 http://rss.hankyung.com/community.xml
장군의 아들 http://rss.hankyung.com/janggun.xml
므흣한 영어 http://rss.hankyung.com/english.xml


*기타(취업정보)
스카우트
ㆍ서울 http://www.scout.co.kr/jobs/area/rss.asp?ac=1 
ㆍ강원 http://www.scout.co.kr/jobs/area/rss.asp?ac=2 
ㆍ경기 http://www.scout.co.kr/jobs/area/rss.asp?ac=3 
ㆍ경남 http://www.scout.co.kr/jobs/area/rss.asp?ac=4 
ㆍ경북 http://www.scout.co.kr/jobs/area/rss.asp?ac=5 
ㆍ광주 http://www.scout.co.kr/jobs/area/rss.asp?ac=6 
ㆍ대구 http://www.scout.co.kr/jobs/area/rss.asp?ac=7 
ㆍ대전 http://www.scout.co.kr/jobs/area/rss.asp?ac=8 
ㆍ부산 http://www.scout.co.kr/jobs/area/rss.asp?ac=9 
ㆍ울산 http://www.scout.co.kr/jobs/area/rss.asp?ac=10 
ㆍ인천 http://www.scout.co.kr/jobs/area/rss.asp?ac=11 
ㆍ전남 http://www.scout.co.kr/jobs/area/rss.asp?ac=12 
ㆍ전북 http://www.scout.co.kr/jobs/area/rss.asp?ac=13 
ㆍ제주 http://www.scout.co.kr/jobs/area/rss.asp?ac=14 
ㆍ충남 http://www.scout.co.kr/jobs/area/rss.asp?ac=15 
ㆍ충북 http://www.scout.co.kr/jobs/area/rss.asp?ac=16 
ㆍ전국 http://www.scout.co.kr/jobs/area/rss.asp?ac=17



*머니투데이
최신기사
http://rss.mt.co.kr/mt_news.xml
스타뉴스 최신기사
http://rss.mt.co.kr/st_news.xml
머니투데이 칼럼
http://rss.mt.co.kr/mt_column.xml
창업센터
http://rss.mt.co.kr/biz_news.xml
쿨머니
http://rss.mt.co.kr/coolmoney_news.xml

*헤럴드경제
전체기사
http://biz.heraldm.com/rss/010000000000.xml
생생코스닥
http://biz.heraldm.com/rss/010200000000.xml
부동산
http://biz.heraldm.com/rss/010300000000.xml
연예.스포츠
http://biz.heraldm.com/rss/010400000000.xml
라이프
http://biz.heraldm.com/rss/010500000000.xml

*KoreaHerald(english)
National
http://www.koreaherald.com/rss/020100000000.xml
Business
http://www.koreaherald.com/rss/020200000000.xml
Life&Style
http://www.koreaherald.com/rss/020300000000.xml
Entertainment
http://www.koreaherald.com/rss/020400000000.xml
Opinion
http://www.koreaherald.com/rss/020600000000.xml
English Cafe
http://www.koreaherald.com/rss/021000000000.xml


*MBC
- 전체
http://imnews.imbc.com/rss/news/news_00.xml
- 정치
http://imnews.imbc.com/rss/news/news_01.xml
- 통일외교
http://imnews.imbc.com/rss/news/news_02.xml
- 국제
http://imnews.imbc.com/rss/news/news_03.xml
- 경제
http://imnews.imbc.com/rss/news/news_04.xml
- 사회
http://imnews.imbc.com/rss/news/news_05.xml
- 문화/연예
http://imnews.imbc.com/rss/news/news_06.xml
- 스포츠
http://imnews.imbc.com/rss/news/news_07.xml
- 건강/과학
http://imnews.imbc.com/rss/news/news_08.xml
*다시보기
- 뉴스데스크
http://imnews.imbc.com/rss/replay/replay_01.xml
- 뉴스투데이
http://imnews.imbc.com/rss/replay/replay_02.xml
- 1045뉴스
http://imnews.imbc.com/rss/replay/replay_03.xml
- 뉴스와경제
http://imnews.imbc.com/rss/replay/replay_04.xml
- 5시뉴스
http://imnews.imbc.com/rss/replay/replay_05.xml
- 저녁뉴스
http://imnews.imbc.com/rss/replay/replay_06.xml
- 스포츠뉴스
http://imnews.imbc.com/rss/replay/replay_07.xml
- 뉴스24
http://imnews.imbc.com/rss/replay/replay_08.xml
*위클리
- 시사매거진2580
http://imnews.imbc.com/rss/weekly/weekly_01.xml
- 100분토론
http://imnews.imbc.com/rss/weekly/weekly_02.xml
- 뉴스후
http://imnews.imbc.com/rss/weekly/weekly_03.xml
- 지구촌리포트
http://imnews.imbc.com/rss/weekly/weekly_04.xml
- 통일전망대
http://imnews.imbc.com/rss/weekly/weekly_07.xml
- 경제매거진M
http://imnews.imbc.com/rss/weekly/weekly_05.xml
- 일요인터뷰人
http://imnews.imbc.com/rss/weekly/weekly_08.xml
- 스포츠매거진
http://imnews.imbc.com/rss/weekly/weekly_06.xml
*풀영상
- 라이브풀영상
http://imnews.imbc.com/rss/fullmov/fullmov_01.xml
- MBC풀영상
http://imnews.imbc.com/rss/fullmov/fullmov_02.xml
- 해외풀영상
http://imnews.imbc.com/rss/fullmov/fullmov_03.xml
- 스포츠풀영상
http://imnews.imbc.com/rss/fullmov/fullmov_04.xml
- 토론회풀영상
http://imnews.imbc.com/rss/fullmov/fullmov_05.xml
- 연예풀영상
http://imnews.imbc.com/rss/fullmov/fullmov_06.xml


*SBS 
뉴스 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=all
정치 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=politics
경제 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=economy
사회 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=society
연예 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=entertainment
국제 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=international
스포츠 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=sports
문화과학 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=culture
8뉴스 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=8news
아침종합뉴스 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=morning_news
생생뉴스 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=real_news
뉴스랭킹 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=ranking
피겨 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=figure
취재파일 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=news_file
영상토크 http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=vod_talk


*kbs 
드라마
http://www.kbs.co.kr/rss/drama.xml
연예.오락
http://www.kbs.co.kr/rss/enter.xml

마이미츠
http://www.mymits.net/rss
컴맹의 IT 세상
http://boann.tistory.com/rss
스마트폰 No.1 앱 포털 앱톡_아이폰 
http://feeds.feedburner.com/apptalk
늑돌이네 라지온 lazion.com
http://kr.rss.blog.yahoo.com/ubiqwolf/rss.xml
링블로그-그만의 아이디어 
http://feeds2.feedburner.com/ringblog


*한RSS에 제공하는 인기RSS
(더 자세한정보나 더 많은정보는 http://www.hanrss.com/ 에서 확인하세요!)

시골의사 박경철 블로그 
http://blog.rss.naver.com/donodonsu.xml
비주얼 미디어 - ITViewpoint.com 
http://itviewpoint.com/blog/rss
블로거팁닷컴 
http://feeds.feedburner.com/bloggerztip
Channy's Blog 
http://feeds.feedburner.com/channy
생각이 없는 블로그 
http://feeds2.feedburner.com/lezhin
웹초보의 Tech 2.1 
http://feeds2.feedburner.com/Tech21
Read & Lead 
http://read-lead.com/blog/rss
칫솔_초이의 IT 휴게실 
http://chitsol.com/rss
도아의 세상사는 이야기 
http://offree.net/rss
이야기가 있는 멀티라이터 
http://feeds.feedburner.com/multiwriter
스마트플레이스 
http://feeds2.feedburner.com/smartplace
ozzyz review 허지웅의 블로그 
http://rss.egloos.com/blog/ozzyz
Inuit Blogged 
http://inuit.co.kr/rss
사진은 권력이다.
http://photohistory.tistory.com/rss
제닉스의 사고뭉치
http://rss.egloos.com/blog/xenix
학주니닷컴 
http://poem23.com/rss
라지온 LAZION.com 
http://feeds.feedburner.com/lazion
페니웨이™의 In This Film 
http://pennyway.net/rss
류한석의 피플웨어 (peopleware.kr) 
http://feeds2.feedburner.com/bobbyryu
링블로그-그만의 아이디어 
http://feeds2.feedburner.com/ringblog
더 나은 세상이 가능하다. 이정환닷컴!
http://www.leejeonghwan.com/media/index.xml?7bd12240
다인의 편의점 이것저것 
http://rss.egloos.com/blog/totheno1
광파리의 글로벌 IT 이야기 
http://blog.hankyung.com/rss.php?blogid=kim215
김국현의 낭만 IT 
http://feeds2.feedburner.com/goodhyun
버섯돌이의 인사이드 소셜웹 
http://feeds.feedburner.com/voiponweb20
머니야 머니야 
http://moneyamoneya.tistory.com/rss
올블로그 추천 글 
http://rss.allblog.net/BestPosts.xml
CRAZY 콜렉터의 보금자리 
http://blog.rss.naver.com/a1231724.xml
디자인 엔터 
http://feeds2.feedburner.com/design-enter
하루에 한가지만 판매, 원어데이 
http://www.oneaday.co.kr/rss.php
헷지드 월드 언헷지드 블로그 
http://blog.rss.naver.com/oneidjack.xml
웅크린 감자의 리뷰 
http://jamja.tistory.com/rss
IT문화원블로그
http://www.dal.kr/blog/index.xml
베스트 셀러 - 도서종합
http://www.aladin.co.kr:80/rss/bestseller/book
스마트가젯 SmartGadget 
http://feeds2.feedburner.com/smartgadget
snoopybox 
http://feeds.feedburner.com/snoopybox
디지털 통-세상 사는 이야기 
http://tongblog.net/rss
뿌와쨔쨔의 영어이야기 
http://puwazaza.com/rss
모바일 컨텐츠 이야기 
http://mobizen.pe.kr/rss
디지털을 말한다. By oojoo 
http://feeds.feedburner.com/oojoo


기타 외국 뉴스및 한국뉴스 
:: 한국뉴스 :: 

미디어다음
http://www.daum.net/rss.xml
종합 http://media.daum.net/rss/today/primary/all/rss2.xml
연예 http://media.daum.net/rss/part/primary/entertain/rss2.xml
스포츠 http://media.daum.net/rss/today/primary/sports/rss2.xml
사회 http://media.daum.net/rss/part/primary/society/rss2.xml
정치 http://media.daum.net/rss/part/primary/politics/rss2.xml
경제 http://media.daum.net/rss/part/primary/economic/rss2.xml
국제 http://media.daum.net/rss/part/primary/foreign/rss2.xml
문화생활 http://media.daum.net/rss/part/primary/culture/rss2.xml
IT과학 http://media.daum.net/rss/part/primary/digital/rss2.xml


구글 뉴스 
인기뉴스 http://news.google.co.kr/news?pz=1&ned=kr&hl=ko&topic=po&output=rss
주요뉴스 http://news.google.co.kr/news?pz=1&cf=all&ned=kr&hl=ko&topic=h&num=3&output=rss
정치 http://news.google.co.kr/news?pz=1&ned=kr&hl=ko&topic=p&output=rss
경제 http://news.google.co.kr/news?pz=1&ned=kr&hl=ko&topic=b&output=rss
사회 http://news.google.co.kr/news?pz=1&ned=kr&hl=ko&topic=y&output=rss
문화생활 http://news.google.co.kr/news?pz=1&ned=kr&hl=ko&topic=l&output=rss
세계 http://news.google.co.kr/news?pz=1&ned=kr&hl=ko&topic=w&output=rss
정보과학 http://news.google.co.kr/news?pz=1&ned=kr&hl=ko&topic=t&output=rss
연예 http://news.google.co.kr/news?pz=1&ned=kr&hl=ko&topic=e&output=rss
스포츠 http://news.google.co.kr/news?pz=1&ned=kr&hl=ko&topic=s&output=rss


파란뉴스
인기뉴스 http://media.paran.com/rss/rss.kth?view=10
주요뉴스 http://media.paran.com/rss/rss.kth?view=1
정치 http://media.paran.com/rss/rss.kth?view=2
사회 http://media.paran.com/rss/rss.kth?view=4
경제IT http://media.paran.com/rss/rss.kth?view=3
연예 http://media.paran.com/rss/rss.kth?view=5
스포츠 http://media.paran.com/rss/rss.kth?view=6
IT http://media.paran.com/rss/rss.kth?view=9
생활/문화 http://media.paran.com/rss/rss.kth?view=7
세계 http://media.paran.com/rss/rss.kth?view=8
칼럼 http://media.paran.com/rss/rss.kth?view=11


MBC 뉴스
전체 http://imnews.imbc.com/rss/news/news_00.xml
정치 http://imnews.imbc.com/rss/news/news_01.xml
통일외교 http://imnews.imbc.com/rss/news/news_02.xml
국제 http://imnews.imbc.com/rss/news/news_03.xml
경제 http://imnews.imbc.com/rss/news/news_04.xml
사회 http://imnews.imbc.com/rss/news/news_05.xml
문화/연예 http://imnews.imbc.com/rss/news/news_06.xml
스포츠 http://imnews.imbc.com/rss/news/news_07.xml
건강/과학 http://imnews.imbc.com/rss/news/news_08.xml


경향신문
전체뉴스 http://www.khan.co.kr/rss/rssdata/total_news.xml
오피니언 http://www.khan.co.kr/rss/rssdata/opinion.xml
정치 http://www.khan.co.kr/rss/rssdata/politic.xml
경제 http://www.khan.co.kr/rss/rssdata/economy.xml
사회 http://www.khan.co.kr/rss/rssdata/society.xml
문화 http://www.khan.co.kr/rss/rssdata/culture.xml
IT과학 http://www.khan.co.kr/rss/rssdata/itnews.xml
국제 http://www.khan.co.kr/rss/rssdata/world.xml
스포츠 http://www.khan.co.kr/rss/rssdata/sports.xml
매거진X http://www.khan.co.kr/rss/rssdata/mx.xml
인물 http://www.khan.co.kr/rss/rssdata/people.xml
스포츠전체 http://www.khan.co.kr/rss/rssdata/kh_sports.xml
엔터테인먼트 http://www.khan.co.kr/rss/rssdata/kh_entertainment.xml
펀 http://www.khan.co.kr/rss/rssdata/kh_fun.xml
운세 http://www.khan.co.kr/rss/rssdata/kh_unse.xml
기획 http://www.khan.co.kr/rss/rssdata/kh_special.xml


한겨레신문
전체 
http://www.hani.co.kr/rss/
정치 http://www.hani.co.kr/rss/politics/
경제 http://www.hani.co.kr/rss/economy/
사회 http://www.hani.co.kr/rss/society/
국제 http://www.hani.co.kr/rss/international/
대중문화 http://www.hani.co.kr/rss/culture/
스포츠 http://www.hani.co.kr/rss/sports/
과학 http://www.hani.co.kr/rss/science/
한국일보 전체기사 http://rss.hankooki.com/news/hk_main.xml
정치 http://rss.hankooki.com/news/hk_politics.xml
경제 http://rss.hankooki.com/news/hk_economy.xml
사회 http://rss.hankooki.com/news/hk_society.xml
문화 http://rss.hankooki.com/news/hk_culture.xml
라이프 http://rss.hankooki.com/news/hk_life.xml
국제 http://rss.hankooki.com/news/hk_world.xml
IT http://rss.hankooki.com/news/hk_it_tech.xml
피플 http://rss.hankooki.com/news/hk_people.xml
스포츠 http://rss.hankooki.com/news/hk_sports.xml
연예 http://rss.hankooki.com/news/hk_entv.xml
사설/칼럼 http://rss.hankooki.com/news/hk_opinion.xml
포토 http://rss.hankooki.com/news/hk_photoi.xml
TV http://rss.hankooki.com/news/hk_tv.xml


세계일보 
최신기사 http://rss.segye.com/segye_recent.xml
종합 http://rss.segye.com/segye_total.xml
정치 http://rss.segye.com/segye_politic.xml
국제 http://rss.segye.com/segye_international.xml
경제 http://rss.segye.com/segye_economy.xml
사회 http://rss.segye.com/segye_society.xml
문화 http://rss.segye.com/segye_culture.xml
스포츠 http://rss.segye.com/segye_sports.xml
연예 http://rss.segye.com/segye_entertainment.xml
피플 http://rss.segye.com/segye_people.xml
오피니언 http://rss.segye.com/segye_opinion.xml
전국 http://rss.segye.com/segye_local.xml


매일경제 
헤드라인 http://news.mk.co.kr/rss/headline.xml
이슈 http://news.mk.co.kr/rss/today_topic.xml
경제종합 http://news.mk.co.kr/rss/economy_all.xml
증권 http://news.mk.co.kr/rss/stock.xml
부동산 http://news.mk.co.kr/rss/land.xml
스포츠연예 http://news.mk.co.kr/rss/entertain.xml
한국경제 경제/금융 http://rss.hankyung.com/economy.xml
증권 http://rss.hankyung.com/stock.xml
부동산 http://rss.hankyung.com/estate.xml
산업 http://rss.hankyung.com/industry.xml
국제 http://rss.hankyung.com/intl.xml
정치/사회 http://rss.hankyung.com/politics.xml
스포츠/문화 http://rss.hankyung.com/sports.xml


이데일리 
전체 http://rss.edaily.co.kr/edaily_news.xml
주식/펀드 http://rss.edaily.co.kr/stock_news.xml
경제/정책 http://rss.edaily.co.kr/economy_news.xml
금융/M&A http://rss.edaily.co.kr/finance_news.xml
채권/외환 http://rss.edaily.co.kr/bondfx_news.xml
기업 http://rss.edaily.co.kr/enterprise_news.xml
월드 http://rss.edaily.co.kr/world_news.xml
부동산 http://rss.edaily.co.kr/realestate_news.xml
문화/생활 http://rss.edaily.co.kr/happypot_news.xml
칼럼 http://rss.edaily.co.kr/edaily_column.xml


쿠키뉴스 
전체 http://www.kukinews.com/rss/kukiRssAll.xml
사회 http://www.kukinews.com/rss/kukiSocRss.xml
정치 http://www.kukinews.com/rss/kukiPolRss.xml
지구촌 http://www.kukinews.com/rss/kukiIntRss.xml
스포츠 http://www.kukinews.com/rss/kukiSpoRss.xml
연예 http://www.kukinews.com/rss/kukiEntRss.xml
문화 http://www.kukinews.com/rss/kukiCulRss.xml
생활 http://www.kukinews.com/rss/kukiLifRss.xml


뷰스앤뉴스
전체기사 http://rss.viewsnnews.com/total.xml
정치 http://rss.viewsnnews.com/politics.xml
경제 http://rss.viewsnnews.com/economy.xml
사회 http://rss.viewsnnews.com/society.xml
세계 http://rss.viewsnnews.com/world.xml
문화 http://rss.viewsnnews.com/culture.xml
미디어 http://rss.viewsnnews.com/media.xml
칼럼 http://rss.viewsnnews.com/column.xml
연합뉴스 속보 http://www.yonhapnews.co.kr/RSS/sokbo.xml
정치 · 북한 http://www.yonhapnews.co.kr/RSS/politics.xml
경제 http://www.yonhapnews.co.kr/RSS/economy.xml
증권 http://www.yonhapnews.co.kr/RSS/stock.xml
사회 http://www.yonhapnews.co.kr/RSS/society.xml
전국 http://www.yonhapnews.co.kr/RSS/province.xml
세계 http://www.yonhapnews.co.kr/RSS/international.xml
문화 · 생활 http://www.yonhapnews.co.kr/RSS/culture.xml
스포츠 http://www.yonhapnews.co.kr/RSS/sports.xml
연예 http://www.yonhapnews.co.kr/RSS/entertainment.xml


일간스포츠
종합 http://rss.joins.com/joins_ilgan_list.xml
스포츠 http://rss.joins.com/joins_ilgan_sports_list.xml
엔터테인먼트 http://rss.joins.com/joins_ilgan_entertain_list.xml
스포츠서울 전체 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1
야구 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=1
축구 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=2
스포츠종합 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=3
연예 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=4
라이프 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=5
경마/경륜/경정 http://www.sportsseoul.com/rss/rss.asp?cp_flag=1&cat_flag=6
머니투데이 최신기사 http://rss.mt.co.kr/mt_news.xml
스타뉴스 http://rss.mt.co.kr/st_news.xml
칼럼 http://rss.mt.co.kr/mt_column.xml
창업센터 http://rss.mt.co.kr/biz_news.xml
쿨머니 http://rss.mt.co.kr/coolmoney_news.xml


조선일보 
전체기사 http://www.chosun.com/site/data/rss/rss.xml
오늘의 주요뉴스 http://myhome.chosun.com/rss/www_section_rss.xml
경제 http://www.chosun.com/site/data/rss/economy.xml
정치 http://www.chosun.com/site/data/rss/politics.xml
사회 http://www.chosun.com/site/data/rss/national.xml
국제 http://www.chosun.com/site/data/rss/international.xml
문화 http://www.chosun.com/site/data/rss/culture.xml
사설ㆍ칼럼 http://www.chosun.com/site/data/rss/editorials.xml
동영상 http://www.chosun.com/site/data/rss/video.xml
포토 http://photo.chosun.com/site/data/rss/photonews.xml
스포츠 http://www.chosun.com/site/data/rss/sports.xml
연예 http://www.chosun.com/site/data/rss/ent.xml
랭킹 (인기기사) http://newsplus.chosun.com/hitdata/xml/index/index.xml


중앙일보 
전체기사 http://rss.joins.com/joins_news_list.xml
주요기사 http://rss.joins.com/joins_homenews_list.xml
경제 http://rss.joins.com/joins_money_list.xml
사회 http://rss.joins.com/joins_life_list.xml
정치 http://rss.joins.com/joins_politics_list.xml
사설·칼럼 http://rss.joins.com/joins_opinion_list.xml
라이프 http://rss.joins.com/news/joins_lifenews_total.xml
지구촌 http://rss.joins.com/joins_world_list.xml
문화 http://rss.joins.com/joins_culture_list.xml
IT과학 http://rss.joins.com/joins_it_list.xml
핫이슈 http://rss.joins.com/issue/issue_total_list.xml
화제 http://rss.joins.com/joins_topic_list.xml
J-Only http://rss.joins.com/news/joins_jonly_list.xml
레인보우 http://rss.joins.com/news/joins_rainbow_list.xml


동아일보 
전체 http://rss.donga.com/total.xml
정치 http://rss.donga.com/politics.xml
사회 http://rss.donga.com/national.xml
경제 http://rss.donga.com/economy.xml
국제 http://rss.donga.com/international.xml
문화연예 http://rss.donga.com/culture.xml
스포츠 http://rss.donga.com/sportsdonga/sports_total.xml
엔터테인먼트 http://rss.donga.com/sportsdonga/entertainment.xml


오마이뉴스
주요기사 http://rss.ohmynews.com/rss/top.xml
사회 http://rss.ohmynews.com/rss/society.xml
문화 http://rss.ohmynews.com/rss/culture.xml
정치 http://rss.ohmynews.com/rss/politics.xml
경제 http://rss.ohmynews.com/rss/economy.xml
민족국제 http://rss.ohmynews.com/rss/international.xml
스포츠 http://rss.ohmynews.com/rss/sports.xml
영화 http://rss.ohmynews.com/rss/cinema.xml
미디어 http://rss.ohmynews.com/rss/media.xml


미디어오늘
전체기사 http://www.mediatoday.co.kr/rss/allArticle.xml
인기기사 http://www.mediatoday.co.kr/rss/clickTop.xml
미디어 http://www.mediatoday.co.kr/rss/S1N1.xml
정치 http://www.mediatoday.co.kr/rss/S1N4.xml
경제 http://www.mediatoday.co.kr/rss/S1N5.xml
사회 http://www.mediatoday.co.kr/rss/S1N6.xml
문화 http://www.mediatoday.co.kr/rss/S1N7.xml
국제 http://www.mediatoday.co.kr/rss/S1N23.xml


ZDNet Korea 
전체기사 http://www.zdnet.co.kr/services/rss/all/EUC/ZDNetKorea_News.asp
방송/통신 http://www.zdnet.co.kr/services/rss/all/EUC/NewsSection0010.asp
컴퓨팅 http://www.zdnet.co.kr/services/rss/all/EUC/NewsSection0020.asp
홈&모바일 http://www.zdnet.co.kr/services/rss/all/EUC/NewsSection0030.asp
인터넷 http://www.zdnet.co.kr/services/rss/all/EUC/NewsSection0040.asp
게임 http://www.zdnet.co.kr/services/rss/all/EUC/NewsSection0060.asp
메가뉴스TV http://www.zdnet.co.kr/services/rss/all/EUC/MegaNewsTv.asp


아이뉴스24
전체기사 http://www.inews24.com/rss/rss_inews.xml
문화연예 http://joynews.inews24.com/rss/rss_enter_entire.xml
스포츠 http://joynews.inews24.com/rss/rss_sports.xml
시사이슈 http://sisa-issue.inews24.com/rss/rss_sisa.xml
칼럼 http://column.inews24.com/rss/rss_column.xml
포토TV http://photo-tv.inews24.com/rss/rss_phototv.xml
엠톡 http://m-talk.inews24.com/rss/rss_mtalk.xml
DVDian http://dvdian.inews24.com/rss/rss_dvdian.xml
딴지일보 전체기사 http://www.ddanzi.com/rss/s/news


투데이코리아
전체기사 http://www.todaykorea.co.kr/rss/allArticle.xml
정치 http://www.todaykorea.co.kr/rss/S1N1.xml
경제·금융 http://www.todaykorea.co.kr/rss/S1N2.xml
산업·IT http://www.todaykorea.co.kr/rss/S1N3.xml
사회 http://www.todaykorea.co.kr/rss/S1N4.xml
문화·레저 http://www.todaykorea.co.kr/rss/S1N5.xml
스포츠 http://www.todaykorea.co.kr/rss/S1N15.xml
해외 http://www.todaykorea.co.kr/rss/S1N6.xml
피플 http://www.todaykorea.co.kr/rss/S1N7.xml
시사칼럼 http://www.todaykorea.co.kr/rss/S1N8.xml
증권 http://www.todaykorea.co.kr/rss/S1N12.xml
방송.연예 http://www.todaykorea.co.kr/rss/S1N14.xml
문학 http://www.todaykorea.co.kr/rss/S1N16.xml
라이프 http://www.todaykorea.co.kr/rss/S1N17.xml

The Korea Herald 
National http://www.koreaherald.com/rss/020100000000.xml
Business http://www.koreaherald.com/rss/020200000000.xml
Life&Style http://www.koreaherald.com/rss/020300000000.xml
Entertainment http://www.koreaherald.com/rss/020400000000.xml
Sports http://www.koreaherald.com/rss/020500000000.xml
Opinion http://www.koreaherald.com/rss/020600000000.xml
English Cafe http://www.koreaherald.com/rss/021000000000.xml


파이낸셜 뉴스
전체기사 http://www.fnnews.com/rss/fn_realnews_all.xml
인기기사 http://www.fnnews.com/rss/fn_manyview_all.xml
증권 http://www.fnnews.com/rss/fn_realnews_stock.xml
금융 http://www.fnnews.com/rss/fn_realnews_finance.xml
부동산 http://www.fnnews.com/rss/fn_realnews_realestate.xml
산업 http://www.fnnews.com/rss/fn_realnews_industry.xml
경제 http://www.fnnews.com/rss/fn_realnews_economy.xml
IT/과학 http://www.fnnews.com/rss/fn_realnews_it.xml
유통 http://www.fnnews.com/rss/fn_realnews_circulation.xml
국제 http://www.fnnews.com/rss/fn_realnews_international.xml
정치 http://www.fnnews.com/rss/fn_realnews_politics.xml
지역경제/사회 http://www.fnnews.com/rss/fn_realnews_society.xml
문화 http://www.fnnews.com/rss/fn_realnews_culture.xml
스포츠 http://www.fnnews.com/rss/fn_realnews_sports.xml
교육 http://www.fnnews.com/rss/fn_realnews_edu.xml
피플 http://www.fnnews.com/rss/fn_realnews_people.xml


전자신문 
오늘의 뉴스 http://rss.etnews.co.kr/Section901.xml
뉴스속보 http://rss.etnews.co.kr/Section902.xml
오늘의 인기기사 http://rss.etnews.co.kr/Section903.xml
오늘의 추천기사 http://rss.etnews.co.kr/Section904.xml


경인일보
전체기사 http://www.kyeongin.com/rss/allArticle.xml
인기기사 http://www.kyeongin.com/rss/clickTop.xml
정치 http://www.kyeongin.com/rss/S1N1.xml
경제 http://www.kyeongin.com/rss/S1N2.xml
사회 http://www.kyeongin.com/rss/S1N3.xml
지역종합 http://www.kyeongin.com/rss/S1N4.xml
문화 http://www.kyeongin.com/rss/S1N5.xml
연예 http://www.kyeongin.com/rss/S1N6.xml
스포츠 http://www.kyeongin.com/rss/S1N7.xml
국제 http://www.kyeongin.com/rss/S1N8.xml
기획특집(경기) http://www.kyeongin.com/rss/S1N9.xml
미분류 http://www.kyeongin.com/rss/S1N12.xml
사람들 http://www.kyeongin.com/rss/S1N13.xml
포토존 http://www.kyeongin.com/rss/S1N16.xml
사설 http://www.kyeongin.com/rss/S1N17.xml
칼럼 http://www.kyeongin.com/rss/S1N18.xml
사고 http://www.kyeongin.com/rss/S1N19.xml
인천 http://www.kyeongin.com/rss/S1N21.xml
기획특집(인천) http://www.kyeongin.com/rss/S1N24.xml


경기일보 
전체기사 http://www.ekgib.com/rss/allArticle.xml
인기기사 http://www.ekgib.com/rss/clickTop.xml
정치 http://www.ekgib.com/rss/S1N1.xml
경제 http://www.ekgib.com/rss/S1N2.xml
사회 http://www.ekgib.com/rss/S1N3.xml
문화 http://www.ekgib.com/rss/S1N4.xml
국제 http://www.ekgib.com/rss/S1N5.xml
사설 http://www.ekgib.com/rss/S1N6.xml
스포츠 http://www.ekgib.com/rss/S1N7.xml
연예 http://www.ekgib.com/rss/S1N8.xml
KGⓔTV http://www.ekgib.com/rss/S1N11.xml
인천시 http://www.ekgib.com/rss/S1N15.xml
경기도 http://www.ekgib.com/rss/S1N15.xml
지역동정 http://www.ekgib.com/rss/S1N17.xml
포커스 http://www.ekgib.com/rss/S1N18.xml
공지사항 http://www.ekgib.com/rss/S1N19.xml
칼럼 http://www.ekgib.com/rss/S1N22.xml
아침브리핑 http://www.ekgib.com/rss/S1N24.xml
사통팔달 http://www.ekgib.com/rss/S1N25.xml
경기만평 http://www.ekgib.com/rss/S1N26.xml
오늘의 운세 http://www.ekgib.com/rss/S1N27.xml
패션·뷰티 http://www.ekgib.com/rss/S1N28.xml
생활·법률 http://www.ekgib.com/rss/S1N29.xml
건강·의학 http://www.ekgib.com/rss/S1N30.xml
week&joy http://www.ekgib.com/rss/S1N31.xml
포토Today http://www.ekgib.com/rss/S1N32.xml
포토경기 http://www.ekgib.com/rss/S1N37.xml


매일신문 
전체기사 http://www.imaeil.com/rss/content/article01.xml
인기기사 http://www.imaeil.com/rss/content/article22.xml
사회 http://www.imaeil.com/rss/content/article02.xml
경제 http://www.imaeil.com/rss/content/article03.xml
부동산 http://www.imaeil.com/rss/content/article04.xml
정치 http://www.imaeil.com/rss/content/article05.xml
국제 http://www.imaeil.com/rss/content/article06.xml
문화 http://www.imaeil.com/rss/content/article07.xml
대구 http://www.imaeil.com/rss/content/article08.xml
경북 http://www.imaeil.com/rss/content/article09.xml
교육 http://www.imaeil.com/rss/content/article10.xml
사람들 http://www.imaeil.com/rss/content/article11.xml
건강 http://www.imaeil.com/rss/content/article12.xml
여성생활 http://www.imaeil.com/rss/content/article13.xml
스포츠 http://www.imaeil.com/rss/content/article14.xml
연예 http://www.imaeil.com/rss/content/article15.xml
사설 http://www.imaeil.com/rss/content/article16.xml
칼럼 http://www.imaeil.com/rss/content/article17.xml
수암칼럼 http://www.imaeil.com/rss/content/article18.xml
주말섹션 http://www.imaeil.com/rss/content/article19.xml
가볼만한 곳 http://www.imaeil.com/rss/content/article20.xml
맛집 http://www.imaeil.com/rss/content/article21.xml


강원도민일보
전체기사 http://www.kado.net/rss/allArticle.xml
인기기사 http://www.kado.net/rss/clickTop.xml
정치 http://www.kado.net/rss/S1N1.xml
경제 http://www.kado.net/rss/S1N2.xml
사회 http://www.kado.net/rss/S1N3.xml
문화 http://www.kado.net/rss/S1N4.xml
스포츠 http://www.kado.net/rss/S1N5.xml
지역 http://www.kado.net/rss/S1N6.xml
도민마당 http://www.kado.net/rss/S1N7.xml
오피니언 http://www.kado.net/rss/S1N8.xml
특집 http://www.kado.net/rss/S1N9.xml
경남신문 전체기사 http://www.knnews.co.kr/rss/Article00.xml
정치 http://www.knnews.co.kr/rss/Article6.xml
경제 http://www.knnews.co.kr/rss/Article7.xml
사회 http://www.knnews.co.kr/rss/Article8.xml
교육 http://www.knnews.co.kr/rss/Article26.xml
지역 http://www.knnews.co.kr/rss/Article10.xml
문화 http://www.knnews.co.kr/rss/Article13.xml
사람, PLUS http://www.knnews.co.kr/rss/Article22.xml
오피니언 http://www.knnews.co.kr/rss/Article9.xml
스포츠 http://www.knnews.co.kr/rss/Article11.xml
연예 http://www.knnews.co.kr/rss/Article12.xml
헤드라인 http://www.knnews.co.kr/rss/Article71.xml
속보 http://www.knnews.co.kr/rss/Article77.xml
포토 http://www.knnews.co.kr/rss/Article74.xml
사고/알림 http://www.knnews.co.kr/rss/Article152.xml
기획연재 http://www.knnews.co.kr/rss/Article81.xml
경남만평 http://www.knnews.co.kr/rss/Article188_189.xml


광주일보 
전체기사 http://www.kwangju.co.kr:8080/wikitree/content/rss/article01.xml
인기기사 http://www.kwangju.co.kr:8080/wikitree/content/rss/article31.xml
정치 http://www.kwangju.co.kr:8080/wikitree/content/rss/article02.xm
경제 http://www.kwangju.co.kr:8080/wikitree/content/rss/article03.xml
사회 http://www.kwangju.co.kr:8080/wikitree/content/rss/article04.xml
시군별뉴스 http://www.kwangju.co.kr:8080/wikitree/content/rss/article05.xml
문화 http://www.kwangju.co.kr:8080/wikitree/content/rss/article06.xml
피플&라이프 http://www.kwangju.co.kr:8080/wikitree/content/rss/article07.xml
외신 http://www.kwangju.co.kr:8080/wikitree/content/rss/article08.xml
스포츠 http://www.kwangju.co.kr:8080/wikitree/content/rss/article09.xml
연예 http://www.kwangju.co.kr:8080/wikitree/content/rss/article10.xml
사설 http://www.kwangju.co.kr:8080/wikitree/content/rss/article11.xml
칼럼 http://www.kwangju.co.kr:8080/wikitree/content/rss/article12.xml


인천일보 
전체 http://news.itimes.co.kr/News.xml
정치 http://news.itimes.co.kr/News100.xml
경제 http://news.itimes.co.kr/News200.xml
사회 http://news.itimes.co.kr/News300.xml
문화 http://news.itimes.co.kr/News400.xml
스포츠 http://news.itimes.co.kr/News500.xml
오피니언 http://news.itimes.co.kr/NewsA00.xml
인물 http://news.itimes.co.kr/News800.xml


중부매일 
전체기사 http://www.jbnews.com/rss/allArticle.xml
인기기사 http://www.jbnews.com/rss/clickTop.xml
정치 http://www.jbnews.com/rss/S1N1.xml
경제 http://www.jbnews.com/rss/S1N2.xml
사회 http://www.jbnews.com/rss/S1N3.xml
문화 http://www.jbnews.com/rss/S1N4.xml
충북 http://www.jbnews.com/rss/S1N5.xml
대전충남 http://www.jbnews.com/rss/S1N6.xml
오피니언 http://www.jbnews.com/rss/S1N7.xml
사람들 http://www.jbnews.com/rss/S1N8.xml
포토 http://www.jbnews.com/rss/S1N9.xml
스포츠/연예 http://www.jbnews.com/rss/S1N10.xml
라이프 http://www.jbnews.com/rss/S1N11.xml
기획특집 http://www.jbnews.com/rss/S1N12.xml
시민기자 http://www.jbnews.com/rss/S1N13.xml
미분류 섹션 http://www.jbnews.com/rss/S1N14.xml
임시 http://www.jbnews.com/rss/S1N15.xml
국제 http://www.jbnews.com/rss/S1N16.xml
전국 http://www.jbnews.com/rss/S1N18.xml


제주일보 
전체기사 http://www.jejunews.com/rss/allArticle.xml
정치/행정 http://www.jejunews.com/rss/S1N1.xml
사회 http://www.jejunews.com/rss/S1N2.xml
지역 http://www.jejunews.com/rss/S1N3.xml
문화 http://www.jejunews.com/rss/S1N4.xml
경제 http://www.jejunews.com/rss/S1N5.xml
기획 http://www.jejunews.com/rss/S1N6.xml
스포츠 http://www.jejunews.com/rss/S1N7.xml
사람과 사람 http://www.jejunews.com/rss/S1N8.xml
오피니언 http://www.jejunews.com/rss/S1N9.xml
열린페이지 http://www.jejunews.com/rss/S1N10.xml
라이프 http://www.jejunews.com/rss/S1N11.xml
미분류 http://www.jejunews.com/rss/S1N13.xml
교육/과학 http://www.jejunews.com/rss/S1N17.xml
국제 http://www.jejunews.com/rss/S1N18.xml
전국종합 http://www.jejunews.com/rss/S1N19.xml
제주만평 http://www.jejunews.com/rss/S1N20.xml


부산일보 
종합 http://news20.busan.com/content/rss/1010000000.xml
사회 http://news20.busan.com/content/rss/1010010000.xml
경제해양 http://news20.busan.com/content/rss/1010020000.xml
정치 http://news20.busan.com/content/rss/1010030000.xml
문화 http://news20.busan.com/content/rss/1010090000.xml
국제 http://news20.busan.com/content/rss/1010100000.xml
사람 http://news20.busan.com/content/rss/1010010100.xml
사설칼럼 http://news20.busan.com/content/rss/1010110000.xml
스포츠 http://news20.busan.com/content/rss/1010050000.xml
연예 http://news20.busan.com/content/rss/1010130000.xml


:: 블로그 ::
- Google 블로그 
전체보기 http://blogsearch.google.co.kr/blogsearch/feeds?bc_lang=ko&hl=ko&output=rss
연예 http://blogsearch.google.co.kr/blogsearch/feeds?bc_lang=ko&hl=ko&topic=en&output=rss
IT/과학 http://blogsearch.google.co.kr/blogsearch/feeds?bc_lang=ko&hl=ko&topic=t&output=rss
경제 http://blogsearch.google.co.kr/blogsearch/feeds?bc_lang=ko&hl=ko&topic=ec&output=rss
스포츠 http://blogsearch.google.co.kr/blogsearch/feeds?bc_lang=ko&hl=ko&topic=sp&output=rss
건강 http://blogsearch.google.co.kr/blogsearch/feeds?bc_lang=ko&hl=ko&topic=h&output=rss
문화 http://blogsearch.google.co.kr/blogsearch/feeds?bc_lang=ko&hl=ko&topic=c&output=rss
정치 http://blogsearch.google.co.kr/blogsearch/feeds?bc_lang=ko&hl=ko&topic=p&output=rss
사회 http://blogsearch.google.co.kr/blogsearch/feeds?bc_lang=ko&hl=ko&topic=so&output=rss
올블로그 오늘 추천글 http://rss.allblog.net/TodayBestPosts.xml
어제 추천글 http://rss.allblog.net/BestPosts.xml
-블로그코리아 
시사 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1516.xml
만화 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1513.xml
도서 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1514.xml
포토 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1523.xml
푸드 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1522.xml
IT/게임 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1518.xml
여행/세계 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1519.xml
영화/연예 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1512.xml
비즈니스 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1517.xml
문화/예술 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1511.xml
학문/교육 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1515.xml
라이프/스타일 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1521.xml
스포츠/레저 http://www.blogkorea.net/bnmsvc/file/rssfeed/top130rss_1520.xml
-Daum view 
베스트 
http://v.daum.net/best/rss
전체 
http://v.daum.net/ch/all/rss
라이프 http://v.daum.net/ch/life/rss
문화연예 http://v.daum.net/ch/art/rss
IT과학 http://v.daum.net/ch/technology/rss
스포츠 http://v.daum.net/ch/sports/rss
경제 http://v.daum.net/ch/economy/rss
시사 http://v.daum.net/ch/current/rss
-이글루스
전체 http://valley.egloos.com/rss/theme.php
영화 http://valley.egloos.com/theme/rss/recent/movie
음악 http://valley.egloos.com/theme/rss/recent/music
도서 http://valley.egloos.com/theme/rss/recent/book
뉴스비평 http://valley.egloos.com/theme/rss/recent/news
게임 http://valley.egloos.com/theme/rss/recent/game
공연&전시 http://valley.egloos.com/theme/rss/recent/performance
과학 http://valley.egloos.com/theme/rss/recent/science
만화 http://valley.egloos.com/theme/rss/recent/comic
방송&연예 http://valley.egloos.com/theme/rss/recent/entertainment
사진 http://valley.egloos.com/theme/rss/recent/photo
세계 http://valley.egloos.com/theme/rss/recent/world
스포츠 http://valley.egloos.com/theme/rss/recent/sports
애니메이션 http://valley.egloos.com/theme/rss/recent/animation
애완동물 http://valley.egloos.com/theme/rss/recent/pet
얼리어답터 http://valley.egloos.com/theme/rss/recent/earlyadopter
여행 http://valley.egloos.com/theme/rss/recent/travel
역사 http://valley.egloos.com/theme/rss/recent/history
연애 http://valley.egloos.com/theme/rss/recent/love
육아 http://valley.egloos.com/theme/rss/recent/baby
음식 http://valley.egloos.com/theme/rss/recent/food
자동차 http://valley.egloos.com/theme/rss/recent/auto
지름 http://valley.egloos.com/theme/rss/recent/shopping
창작 http://valley.egloos.com/theme/rss/recent/creation
토이 http://valley.egloos.com/theme/rss/recent/toy
패션&뷰티 http://valley.egloos.com/theme/rss/recent/fashion
IT http://valley.egloos.com/theme/rss/recent/technology
-믹시 
실시간 인기 http://mixsh.com/rss/category/all/all/all/popular
오늘의 인기 http://mixsh.com/rss/category/all/all/all/popular_day
주간 인기 http://mixsh.com/rss/category/all/all/all/popular_week
월간 인기 http://mixsh.com/rss/category/all/all/all/popular_month
티스토리 전체 http://tistory.com/category/all/rss
이슈 http://tistory.com/category/issue/rss
사진 http://tistory.com/category/photo/rss
영화 http://tistory.com/category/movie/rss
여행 http://tistory.com/category/travel/rss
음식 http://tistory.com/category/food/rss
리뷰 http://tistory.com/category/review/rss
IT http://tistory.com/category/it/rss
일상 내 눈으로 본 한국, 한국인.... http://sayaka.tistory.com/rss
당찬여자 멋진엄마 예쁜아내 http://cyhome.cyworld.com/a0000406/rss2

요리/맛집 
-★콩지의 음식발기,,,,NO오븐 베이킹의 모든것~!!! http://blog.rss.naver.com/ohmytotoro.xml
gundown의 食遊記 http://kr.rss.blog.yahoo.com/igundown/rss.xml
문성실의 이야기가 있는 밥상 http://blog.rss.naver.com/shriya.xml
베비로즈의 cooking & living http://blog.rss.naver.com/jheui13.xml
-요리천사의 행복밥상 ♬ http://blog.rss.naver.com/yummycook.xml
취미 비겐의 군사 무기사진 블로그 http://kr.rss.blog.yahoo.com/shinecommerce/rss.xml
건강 다이어트, 피부미용, 무병장수 http://kr.rss.blog.yahoo.com/health_blog/rss.xml
여행 김치군의 '내 여행은 여전히 ~ing' http://www.kimchi39.com/rss
육아 아이러브나로(육아&아이요리) http://blog.rss.naver.com/tjrwnsdn.xml
문화/예술 아트 talk! talk! http://blog.rss.naver.com/guarneri.xml
IT/과학 bruce, 와이프 몰래 오븐을 지르다 http://brucemoon.net/rss
블로거팁닷컴 http://feeds.feedburner.com/bloggerztip
시사/미디어 미디어몽구 http://mongu.net/rss
머니야 머니야 http://moneyamoneya.tistory.com/rss
스포츠 김지한의 Sports Fever http://blog.daum.net/xml/rss/hallo-jihan
효리사랑(축구감성) http://bluesoccer.net/rss
야구타임스 http://yagootimes.com/rss
윤석구의 야구세상 http://hitting.kr/rss
스포토픽 http://www.sportopic.com/rss
피치액션(pitch action™) http://pitchaction.com/rss
미분류 B급 문화 지향! 여기는 퍼니 블로그 http://kr.rss.blog.yahoo.com/funnyblog/rss.xml
웅크린 감자의 리뷰 http://jamja.tistory.com/rss


:: English News ::
-Google News 
Most Popular http://news.google.com/news?ned=us&hl=en&topic=po&output=rss
Top Stories http://news.google.com/news?cf=all&ned=us&hl=en&topic=h&num=3&output=rss
World http://news.google.com/news?ned=us&hl=en&topic=w&output=rss
Nation http://news.google.com/news?ned=us&hl=en&topic=n&output=rss
Business http://news.google.com/news?ned=us&hl=en&topic=b&output=rss
Sci/Tech http://news.google.com/news?ned=us&hl=en&topic=t&output=rss
Entertainment http://news.google.com/news?ned=us&hl=en&topic=e&output=rss
Sports http://news.google.com/news?ned=us&hl=en&topic=s&output=rss
Health http://news.google.com/news?ned=us&hl=en&topic=m&output=rss
Spotlight http://news.google.com/news?ned=us&hl=en&topic=ir&output=rss
The New York Times HomePage http://www.nytimes.com/services/xml/rss/nyt/HomePage.xml
World http://www.nytimes.com/services/xml/rss/nyt/World.xml
U.S. http://www.nytimes.com/services/xml/rss/nyt/US.xml
N.Y./Region http://www.nytimes.com/services/xml/rss/nyt/NYRegion.xml
Business http://feeds.nytimes.com/nyt/rss/Business
Technology http://feeds.nytimes.com/nyt/rss/Technology
Sports http://www.nytimes.com/services/xml/rss/nyt/Sports.xml
Science http://www.nytimes.com/services/xml/rss/nyt/Science.xml
Health http://www.nytimes.com/services/xml/rss/nyt/Health.xml
StarTribune Local http://www.startribune.com/local/index.rss2
Nation http://www.startribune.com/nation/index.rss2
World http://www.startribune.com/world/index.rss2
Business http://www.startribune.com/business/index.rss2
Science + Technology http://www.startribune.com/science/index.rss2
Politically Connected http://www.startribune.com/politics/index.rss2
Sports http://www.startribune.com/sports/index.rss2
Lifestyle http://www.startribune.com/lifestyle/index.rss2
Entertainment http://www.startribune.com/entertainment/index.rss2

USA TODAY 
Headlines http://rssfeeds.usatoday.com/usatoday-NewsTopStories
National http://rssfeeds.usatoday.com/UsatodaycomNation-TopStories
Washington http://rssfeeds.usatoday.com/UsatodaycomWashington-TopStories
World http://rssfeeds.usatoday.com/UsatodaycomWorld-TopStories
Religion http://rssfeeds.usatoday.com/Religion-TopStories
Education http://rssfeeds.usatoday.com/Education-TopStories
Offbeat News http://rssfeeds.usatoday.com/UsatodaycomOffbeat-TopStories
Health http://rssfeeds.usatoday.com/UsatodaycomHealth-TopStories
Sports http://rssfeeds.usatoday.com/UsatodaycomSports-TopStories
Tech http://rssfeeds.usatoday.com/usatoday-TechTopStories
Travel http://rssfeeds.usatoday.com/UsatodaycomTravel-TopStories
Money http://rssfeeds.usatoday.com/UsatodaycomMoney-TopStories
Entertainment http://rssfeeds.usatoday.com/usatoday-LifeTopStories


The Wall Street Journal 
Most Viewed http://online.wsj.com/xml/rss/3_7198.xml
U.S. News http://online.wsj.com/xml/rss/3_8068.xml
Politics & Campaign http://online.wsj.com/xml/rss/3_7087.xml
Journal Reports http://online.wsj.com/xml/rss/3_7435.xml
World http://online.wsj.com/xml/rss/3_7085.xml
Business http://online.wsj.com/xml/rss/3_7014.xml
Technology http://online.wsj.com/xml/rss/3_7455.xml
Markets http://online.wsj.com/xml/rss/3_7031.xml
Finance http://online.wsj.com/xml/rss/3_7104.xml
Lifestyle http://online.wsj.com/xml/rss/3_7201.xml


Times Online 
Business http://www.timesonline.co.uk/tol/feeds/rss/business.xml
Money http://www.timesonline.co.uk/tol/feeds/rss/money.xml
Economics http://www.timesonline.co.uk/tol/feeds/rss/economics.xml
Markets http://www.timesonline.co.uk/tol/feeds/rss/markets.xml
Film http://www.timesonline.co.uk/tol/feeds/rss/film.xml
Sport http://www.timesonline.co.uk/tol/feeds/rss/sport.xml
World http://www.timesonline.co.uk/tol/feeds/rss/worldnews.xml
UK http://www.timesonline.co.uk/tol/feeds/rss/uknews.xml


Financial Times 
UK http://www.ft.com/rss/home/uk
US http://www.ft.com/rss/home/us
Europe http://www.ft.com/rss/home/europe
Asia http://www.ft.com/rss/home/asia
Middle East http://www.ft.com/rss/home/middleeast
Companies http://www.ft.com/rss/companies
World http://www.ft.com/rss/world
Markets http://www.ft.com/rss/markets
Finance http://www.ft.com/rss/personal-finance
Management http://www.ft.com/rss/management
Arts & Leisure http://www.ft.com/rss/arts-leisure


The Houston Chronicle 
Top headlines http://feeds.chron.com/houstonchronicle/topheadlines
Business http://feeds.chron.com/houstonchronicle/business
Life http://feeds.chron.com/houstonchronicle/life
Sports http://feeds.chron.com/houstonchronicle/sports
Technology News http://feeds.chron.com/houstonchronicle/technews
Entertainment http://feeds.chron.com/houstonchronicle/entertainment
Food http://feeds.chron.com/houstonchronicle/lfood
Books http://feeds.chron.com/houstonchronicle/lbooks
Movies http://feeds.chron.com/houstonchronicle/entmov


Pittsburgh Post-Gazette Nation/World http://www.post-gazette.com/rss/nationworld.xml
Sports http://www.post-gazette.com/rss/sports.xml
Latest Local News http://www.post-gazette.com/rss/latest.xml
Lifestyle http://www.post-gazette.com/rss/lifestyle.xml
Technology http://www.post-gazette.com/rss/tech.xml
Business http://www.post-gazette.com/rss/business.xml
Health, Science, Environment, Medicare http://www.post-gazette.com/rss/healthscience.xml
Movies/Videos http://www.post-gazette.com/rss/movievideo.xml
Music http://www.post-gazette.com/rss/music.xml
Radio/TV http://www.post-gazette.com/rss/radiotv.xml
Books http://www.post-gazette.com/rss/books.xml
Politics http://www.post-gazette.com/rss/politics.xml
Travel http://www.post-gazette.com/rss/travel.xml


San Francisco Chronicle
Page One News http://www.sfgate.com/rss/feeds/news_pageone.xml
Top News Stories http://www.sfgate.com/rss/feeds/news.xml
Bay Area News http://www.sfgate.com/rss/feeds/bayarea.xml
Top Sports Stories http://www.sfgate.com/rss/feeds/sports.xml
Business & Technology http://www.sfgate.com/rss/feeds/business.xml
Entertainment http://www.sfgate.com/rss/feeds/entertainment.xml
The Daily Dish! http://www.sfgate.com/rss/feeds/blogs/sfgate/dailydish/index_rss2.xml
Food & Dining http://www.sfgate.com/rss/feeds/food.xml


BusinessWeek
Most Popular http://rss.businessweek.com/bw_rss/topstories
Top News http://www.businessweek.com/rss/bwdaily.rss
Asia http://rss.businessweek.com/bw_rss/asiaindex
Autos http://rss.businessweek.com/bw_rss/autos
Classic Cars http://rss.businessweek.com/bw_rss/classiccars
Europe http://rss.businessweek.com/bw_rss/europeindex
Hybrids http://rss.businessweek.com/bw_rss/hybrids
Auto Reviews http://rss.businessweek.com/bw_rss/autoreviews
Innovation & Design http://rss.businessweek.com/bw_rss/innovate
Architecture http://rss.businessweek.com/bw_rss/architecture
Brand Equity http://rss.businessweek.com/bw_rss/brandequity
Auto Design http://rss.businessweek.com/bw_rss/carbuff
Game Room http://rss.businessweek.com/bw_rss/gameroom
Technology http://rss.businessweek.com/bw_rss/technology
Investing http://rss.businessweek.com/bw_rss/investor
Small Business http://rss.businessweek.com/bw_rss/smallbiz
Careers http://rss.businessweek.com/bw_rss/careers
B-Schools http://rss.businessweek.com/bw_rss/bschools
Magazine Selections http://rss.businessweek.com/bw_rss/magazine
CEO Guide to Technology http://rss.businessweek.com/bw_rss/ceo_guide_tech


CBS News
Top Stories http://feeds.cbsnews.com/CBSNewsMain?format=xml
U.S. http://feeds.cbsnews.com/CBSNewsNational?format=xml
World http://feeds.cbsnews.com/CBSNewsWorld?format=xml
Couric & Co. http://feeds.cbsnews.com/couric__co?format=xml
Tech Talk http://feeds.cbsnews.com/tech_talk?format=xml
Political Hotsheet http://feeds.cbsnews.com/CBSNewsHorserace?format=xml
Politics http://feeds.cbsnews.com/CBSNewsPolitics?format=xml
Sci-Tech http://feeds.cbsnews.com/CBSNewsSciTech?format=xml
Health http://feeds.cbsnews.com/CBSNewsHealth?format=xml
Entertainment http://feeds.cbsnews.com/CBSNewsEntertainment?format=xml
Business http://feeds.cbsnews.com/CBSNewsBusiness?format=xml
CBS Investigates http://feeds.cbsnews.com/CBSNewsInvestigates?format=xml
Opinion http://feeds.cbsnews.com/CBSNewsOpinion?format=xml
CBS News Video http://feeds.cbsnews.com/CBSNewsVideo?format=xml
The Early Show http://feeds.cbsnews.com/CBSNewsEarlyShow?format=xml
CBS Evening News http://feeds.cbsnews.com/CBSNewsEveningNews?format=xml
Travel http://feeds.cbsnews.com/CBSNewsTravel?format=xml
Most Popular Stories http://feeds.cbsnews.com/CBSNewsStory?format=xml
Most Popular Videos http://feeds.cbsnews.com/CBSNewsPopVideo?format=xml
Most Popular Photos http://feeds.cbsnews.com/CBSNewsPhoto?format=xml


Chicago Tribune 
Latest news http://feeds.chicagotribune.com/chicagotribune/news/
Breaking news blog http://feeds.chicagotribune.com/ChicagoBreakingNews?format=xml
Local news http://feeds.chicagotribune.com/chicagotribune/news/local/
Nation/World http://feeds.chicagotribune.com/chicagotribune/news/nationworld/
Opinion http://feeds.chicagotribune.com/chicagotribune/opinion/
Business news http://feeds.chicagotribune.com/chicagotribune/business/
Jobs & Careers http://feeds.chicagotribune.com/chicagotribune/career?format=xml
Auto news http://feeds.chicagotribune.com/chicagotribune/cars?format=xml
Real Estate news http://feeds.chicagotribune.com/chicagotribune/realestate?format=xml
Sports news http://feeds.chicagotribune.com/chicagotribune/sports/
Entertainment http://feeds.chicagotribune.com/chicagotribune/entertainment/
Movies http://feeds.chicagotribune.com/chicagotribune/movies?format=xml
Dining http://feeds.chicagotribune.com/chicagotribune/dining?format=xml
Good Eating http://feeds.chicagotribune.com/chicagotribune/food?format=xml
Fashion & Style http://feeds.chicagotribune.com/chicagotribune/fashion?format=xml
Books http://feeds.chicagotribune.com/chicagotribune/books?format=xml
Travel http://feeds.chicagotribune.com/chicagotribune/travel/


Los Angeles Times 
Top News http://feeds.latimes.com/latimes/news?format=xml
Most E-mailed Stories http://feeds.latimes.com/MostEmailed?format=xml
California | Local News http://feeds.latimes.com/latimes/news/local?format=xml
National http://feeds.latimes.com/latimes/news/nationworld/nation?format=xml
National Politics http://feeds.latimes.com/latimes/news/politics?format=xml
Business http://feeds.latimes.com/latimes/business?format=xml
Education http://feeds.latimes.com/latimes/news/education?format=xml
Environment http://feeds.latimes.com/latimes/news/science/environment?format=xml
Religion http://feeds.latimes.com/latimes/features/religion?format=xml
Science http://feeds.latimes.com/latimes/news/science?format=xml
Technology http://feeds.latimes.com/latimes/technology?format=xml
World http://feeds.latimes.com/latimes/news/nationworld/world?format=xml
Entertainment News http://feeds.latimes.com/latimes/entertainment?format=xml
Movie News http://feeds.latimes.com/latimes/entertainment/news/movies?format=xml
Music News http://feeds.latimes.com/latimes/entertainment/news/music?format=xml
TV News http://feeds.latimes.com/latimes/entertainment/news/tv?format=xml
Books http://feeds.latimes.com/features/books?format=xml
Food & Dining http://feeds.latimes.com/latimes/features/food?format=xml
Health http://feeds.latimes.com/latimes/features/health?format=xml
Travel http://feeds.latimes.com/latimes/travel?format=xml
Sports http://feeds.latimes.com/latimes/sports?format=xml


:: 中国新闻 ::
Google 资讯 
热门报道 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=po&output=rss
焦点资讯 http://news.google.cn/news?pz=1&cf=all&ned=ccn&hl=zh-CN&topic=h&num=3&output=rss
国际/港台 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=w&output=rss
国内 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=n&output=rss
财经 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=b&output=rss
娱乐 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=e&output=rss
科技 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=t&output=rss
互联网 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=i&output=rss
体育 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=s&output=rss
社会 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=y&output=rss
汽车 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=a&output=rss
房产 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=es&output=rss
教育 http://news.google.cn/news?ned=cn&hl=zh-CN&topic=ed&output=rss


人民网 
国内新闻 http://www.people.com.cn/rss/politics.xml
国际新闻 http://www.people.com.cn/rss/world.xml
经济新闻 http://www.people.com.cn/rss/finance.xml
体育新闻 http://www.people.com.cn/rss/sports.xml
台湾新闻 http://www.people.com.cn/rss/haixia.xml
教育新闻 http://www.people.com.cn/rss/edu.xml


搜狐新闻 
焦点新闻 http://news.sohu.com/rss/pfocus.xml
滚动新闻 http://news.sohu.com/rss/scroll.xml
国内新闻 http://news.sohu.com/rss/guonei.xml
国际新闻 http://news.sohu.com/rss/guoji.xml
社会新闻 http://news.sohu.com/rss/shehui.xml
体育新闻 http://news.sohu.com/rss/sports.xml
产经新闻 http://news.sohu.com/rss/business.xml
IT新闻 http://news.sohu.com/rss/it.xml
文教新闻 http://news.sohu.com/rss/learning.xml
娱乐新闻 http://news.sohu.com/rss/yule.xml


百度 
国内焦点 http://news.baidu.com/n?cmd=1&class=civilnews&tn=rss&sub=0
国际焦点 http://news.baidu.com/n?cmd=1&class=internews&tn=rss&sub=0
财经焦点 http://news.baidu.com/n?cmd=1&class=finannews&tn=rss&sub=0
互联网焦点 http://news.baidu.com/n?cmd=1&class=internet&tn=rss&sub=0
房产焦点 http://news.baidu.com/n?cmd=1&class=housenews&tn=rss&sub=0
汽车焦点 http://news.baidu.com/n?cmd=1&class=autonews&tn=rss&sub=0
体育焦点 http://news.baidu.com/n?cmd=1&class=sportnews&tn=rss&sub=0
娱乐焦点 http://news.baidu.com/n?cmd=1&class=enternews&tn=rss&sub=0
游戏焦点 http://news.baidu.com/n?cmd=1&class=gamenews&tn=rss&sub=0
教育焦点 http://news.baidu.com/n?cmd=1&class=edunews&tn=rss&sub=0
健康焦点 http://news.baidu.com/n?cmd=1&class=healthnews&tn=rss&sub=0
科技焦点 http://news.baidu.com/n?cmd=1&class=technnews&tn=rss&sub=0
社会焦点 http://news.baidu.com/n?cmd=1&class=socianews&tn=rss&sub=0


网易 
头条新闻 http://news.163.com/special/00011K6L/rss_newstop.xml
国内新闻 http://news.163.com/special/00011K6L/rss_gn.xml
国际新闻 http://news.163.com/special/00011K6L/rss_gj.xml
社会新闻 http://news.163.com/special/00011K6L/rss_sh.xml
军事新闻 http://news.163.com/special/00011K6L/rss_war.xml
历史新闻 http://news.163.com/special/00011K6L/historyrss.xml


中国新闻网 
即时新闻 http://www.chinanews.com.cn/rss/scroll-news.xml
国内新闻 http://www.chinanews.com.cn/rss/china.xml
国际新闻 http://www.chinanews.com.cn/rss/world.xml
社会新闻 http://www.chinanews.com.cn/rss/society.xml
港澳新闻 http://www.chinanews.com.cn/rss/gangao.xml
台湾新闻 http://www.chinanews.com.cn/rss/taiwan.xml
华人新闻 http://www.chinanews.com.cn/rss/chinese.xml
财经新闻 http://www.chinanews.com.cn/rss/finance.xml
文化新闻 http://www.chinanews.com.cn/rss/culture.xml
娱乐新闻 http://www.chinanews.com.cn/rss/ent.xml
体育新闻 http://www.chinanews.com.cn/rss/sports.xml
教育新闻 http://www.chinanews.com.cn/rss/edu.xml
健康新闻 http://www.chinanews.com.cn/rss/health.xml
IT 新闻 http://www.chinanews.com.cn/rss/it.xml
房产新闻 http://www.chinanews.com.cn/rss/estate.xml
汽车新闻 http://www.chinanews.com.cn/rss/auto.xml
图片新闻 http://www.chinanews.com.cn/rss/photo.xml


中時電子報 
首頁焦點 http://rss.chinatimes.com/rss/focusing-u.rss
即時新聞 http://rss.chinatimes.com/rss/latestnews-u.rss
熱門排行榜 http://rss.chinatimes.com/rss/clickboard-u.rss
科技排行榜 http://rss.chinatimes.com/rss/technology_hotnews.rss
政治新聞 http://rss.chinatimes.com/rss/Politic-u.rss
財經產業 http://rss.chinatimes.com/rss/finance-u.rss
股市新聞 http://rss.chinatimes.com/rss/stock-u.rss
社會綜合 http://rss.chinatimes.com/rss/social-u.rss
國際新聞 http://rss.chinatimes.com/rss/international-u.rss
大陸新聞 http://rss.chinatimes.com/rss/mainland-u.rss
地方新聞 http://rss.chinatimes.com/rss/local-u.rss
社評論壇 http://rss.chinatimes.com/rss/comment-u.rss
科技新聞 http://rss.chinatimes.com/rss/technology-u.rss
校園新聞 http://rss.chinatimes.com/rss/education-u.rss
生活新聞 http://rss.chinatimes.com/rss/life-u.rss
影視娛樂 http://rss.chinatimes.com/rss/showbiz-u.rss
運動天地 http://rss.chinatimes.com/rss/sport-u.rss
旅遊新聞 http://rss.chinatimes.com/rss/travel-u.rss
藝文新聞 http://rss.chinatimes.com/rss/philology-u.rss
財經即時新聞 http://rss.chinatimes.com/rss/moneynews-u.rss


大纪元时报 
即时滚动新闻 http://www.epochtimes.com/gb/xml/n24hr.rss
北美新闻 http://www.epochtimes.com/gb/xml/nsc412.rss
大陆新闻 http://www.epochtimes.com/gb/xml/nsc413.rss
台湾新闻 http://www.epochtimes.com/gb/xml/nsc414.rss
港澳新闻 http://www.epochtimes.com/gb/xml/nsc415.rss
国际新闻 http://www.epochtimes.com/gb/xml/nsc418.rss
科技动向 http://www.epochtimes.com/gb/xml/nsc419.rss
财经消息 http://www.epochtimes.com/gb/xml/nsc420.rss
台湾地方新闻 http://www.epochtimes.com/gb/xml/nsc1004.rss
社会新闻 http://www.epochtimes.com/gb/xml/nsc994.rss
影视音乐 http://www.epochtimes.com/gb/xml/nsc982.rss
生活时尚 http://www.epochtimes.com/gb/xml/nsc435.rss
美食天地 http://www.epochtimes.com/gb/xml/nsc445.rss
国际足坛 http://www.epochtimes.com/gb/xml/nsc706.rss
中国足球 http://www.epochtimes.com/gb/xml/nsc917.rss
篮球 http://www.epochtimes.com/gb/xml/nsc708.rss
网球 http://www.epochtimes.com/gb/xml/nsc709.rss
棒球 http://www.epochtimes.com/gb/xml/nsc1014.rss
其他运动 http://www.epochtimes.com/gb/xml/nsc712.rss
港台速递 http://www.epochtimes.com/gb/xml/nsc787.rss
大陆聚焦 http://www.epochtimes.com/gb/xml/nsc794.rss
国际风云 http://www.epochtimes.com/gb/xml/nsc1018.rss


财经网 
首页 http://www.caijing.com.cn/rss/index.xml
新闻 http://www.caijing.com.cn/rss/news.xml
金融资本 http://www.caijing.com.cn/rss/financial.xml
公司产业 http://www.caijing.com.cn/rss/industrial.xml
政治经济 http://www.caijing.com.cn/rss/political.xml
海外新闻 http://www.caijing.com.cn/rss/overseas.xml
财经短讯 http://www.caijing.com.cn/rss/generalnews.xml
双语阅读 http://www.caijing.com.cn/rss/bilingual.xml
评论 http://www.caijing.com.cn/rss/comments.xml
财经观察 http://magazine.caijing.com.cn/rss/financial_observer.xml
述评 http://www.caijing.com.cn/rss/review.xml
专栏作家 http://www.caijing.com.cn/rss/column.xml
观点评述 http://www.caijing.com.cn/rss/opinion.xml
宏观周报 http://www.caijing.com.cn/rss/macroscopyweekly.xml


中国经济网 
国内时政 http://www.ce.cn/xwzx/gnsz/index_6273.xml
宏观经济 http://www.ce.cn/macro/index_11929.xml
法制新闻 http://www.ce.cn/xwzx/fazhi/index_11931.xml
地方新闻 http://district.ce.cn/newarea/index.xml
股市 http://finance.ce.cn/stock/index_6304.xml
理财 http://finance.ce.cn/money/index_6301.xml
银行 http://finance.ce.cn/bank/index_6303.xml
保险 http://finance.ce.cn/insurance/index_6306.xml
外汇 http://finance.ce.cn/fe/index_6305.xml
房产 http://www.ce.cn/cysc/fdc/index_9704.xml
家电 http://www.ce.cn/cysc/jiadian/index_6321.xml
通信 http://www.ce.cn/cysc/communications/index_6318.xml
IT http://www.ce.cn/cysc/tech/index_7536.xml
国际经济 http://intl.ce.cn/homepage/index_6383.xml
国际时事 http://intl.ce.cn/qqss/index_11933.xml
环球博览 http://europe.ce.cn/hqbl/index_6325.xml
世界文明 http://civ.ce.cn/main/index_10458.xml
世界名品 http://luxury.ce.cn/main/index_8581.xml
有话好好说 http://bbs.ce.cn/bbs/rss.php?fid=467&auth=0
招商引资 http://kfq.ce.cn/shou/index_6755.xml
科技 http://sci.ce.cn/mainpage/index_6307.xml
教育 http://edu.ce.cn/home/index_6314.xml
文化 http://www.ce.cn/culture/index_6299.xml
艺术 http://www.ce.cn/kjwh/index_6322.xml
读书 http://book.ce.cn/main/index_8263.xml
华夏文明 http://cathay.ce.cn/home/index_9375.xml
娱乐 http://ent.ce.cn/main/index_9746.xml
时尚 http://www.ce.cn/life/index_6293.xml
服装 http://fashion.ce.cn/index_11954.xml
健康 http://www.ce.cn/health/index_6294.xml


FT中文网 
今日焦点 http://www.ftchinese.com/rss/news
十大热门文章 http://www.ftchinese.com/rss/hotstoryby7day
每日英语 http://www.ftchinese.com/rss/diglossia
第一时间解读 http://www.ftchinese.com/rss/column/007000005
远观中国 http://www.ftchinese.com/rss/column/007000004
中国纪事 http://www.ftchinese.com/rss/column/007000007
朝九晚五 http://www.ftchinese.com/rss/column/007000002
生活时尚 http://www.ftchinese.com/rss/lifestyle
读者有话说 http://www.ftchinese.com/rss/letter
马丁 沃尔夫 http://www.ftchinese.com/rss/column/007000012


联合早报网 
中国新闻 http://www.zaobao.com/zg/zg.xml
国际新闻 http://www.zaobao.com/gj/gj.xml
东南亚新闻 http://www.zaobao.com/yx/yx.xml
新加坡新闻 http://www.zaobao.com/sp/sp.xml
今日观点 http://www.zaobao.com/yl/yl.xml
中国财经 http://www.zaobao.com/cz/cz.xml
狮城财经 http://www.zaobao.com/cs/cs.xml
全球财经 http://www.zaobao.com/cg/cg.xml
早报体育 http://www.zaobao.com/ty/ty.xml
早报副刊 http://www.zaobao.com/fk/fk.xml
世界报刊文萃 http://www.zaobao.com/wencui/wencui.xml


:: 日本のニュース :: 
Yahoo ニュース 
国内 http://headlines.yahoo.co.jp/rss/rps_dom.xml
海外 http://headlines.yahoo.co.jp/rss/rcdc_cn.xml
経済 http://headlines.yahoo.co.jp/rss/fsi.xml
エンターテインメント http://headlines.yahoo.co.jp/rss/ent-yonh.xml
スポーツ http://headlines.yahoo.co.jp/rss/spnavi.xml
テクノロジー http://headlines.yahoo.co.jp/rss/bcn.xml


読売新聞 
トップ＆主要ニュース http://rss.yomiuri.co.jp/rss/yol/topstories
生活・身近な話題 http://komachi-rss.yomiuri.co.jp/rss/yol/komachi/rss01
キャリア・職場 http://komachi-rss.yomiuri.co.jp/rss/yol/komachi/rss02
心や体の悩み http://komachi-rss.yomiuri.co.jp/rss/yol/komachi/rss03
恋愛・結婚・離婚 http://komachi-rss.yomiuri.co.jp/rss/yol/komachi/rss04
妊娠・出産・育児 http://komachi-rss.yomiuri.co.jp/rss/yol/komachi/rss05
家族・友人・人間関係 http://komachi-rss.yomiuri.co.jp/rss/yol/komachi/rss06
美容・ファッション・ダイエット http://komachi-rss.yomiuri.co.jp/rss/yol/komachi/rss07
趣味・教育・教養 http://komachi-rss.yomiuri.co.jp/rss/yol/komachi/rss08
旅行・国内外の地域情報 http://komachi-rss.yomiuri.co.jp/rss/yol/komachi/rss09


朝日新聞 
社会 http://rss.asahi.com/f/asahi_national
政治 http://rss.asahi.com/f/asahi_politics
スポーツ http://rss.asahi.com/f/asahi_sports
ビジネス http://rss.asahi.com/f/asahi_business
国際 http://rss.asahi.com/f/asahi_international
文化 http://rss.asahi.com/f/asahi_culture
BOOK http://rss.asahi.com/f/asahi_book
サイエンス http://rss.asahi.com/f/asahi_science
就職転職 http://rss.asahi.com/f/asahi_job
食と料理 http://rss.asahi.com/f/asahi_food
ファッション http://rss.asahi.com/f/asahi_fashion
健康 http://rss.asahi.com/f/asahi_health
教育 http://rss.asahi.com/f/asahi_edu


毎日新聞 
ニュース速報（総合） http://mainichi.jp/rss/etc/flash.rss
スポーツ http://mainichi.jp/rss/etc/sports.rss
エンタメ http://mainichi.jp/rss/etc/enta.rss
まんたんウェブ http://mainichi.jp/rss/etc/mantan.rss
ＩＴ・家電 http://mainichi.jp/rss/etc/electronics.rss
英語を学ぶ（MAINICHI WEEKLY） http://mainichi.jp/rss/etc/weekly.rss
社説・解説・コラム http://mainichi.jp/rss/etc/opinion.rss
環境 http://mainichi.jp/rss/etc/kankyo.rss
掘り出しニュース http://mainichi.jp/rss/etc/horidashi.rss


産経新聞 
注目 http://sankei.jp.msn.com/rss/news/points.xml
事件 http://sankei.jp.msn.com/rss/news/affairs.xml
政治 http://sankei.jp.msn.com/rss/news/politics.xml
経済・IT http://sankei.jp.msn.com/rss/news/economy.xml
国際 http://sankei.jp.msn.com/rss/news/world.xml
スポーツ http://sankei.jp.msn.com/rss/news/sports.xml
エンタメ http://sankei.jp.msn.com/rss/news/entertainments.xml
生活 http://sankei.jp.msn.com/rss/news/life.xml
文化 http://sankei.jp.msn.com/rss/news/culture.xml
科学 http://sankei.jp.msn.com/rss/news/science.xml
新商品 http://sankei.jp.msn.com/rss/news/release.xml
地方 http://sankei.jp.msn.com/rss/news/region.xml
選挙 http://sankei.jp.msn.com/rss/news/election.xml


日刊スポーツ 
野球 http://www.pheedo.jp/f/nikkansportscom_baseball
サッカー http://www.pheedo.jp/f/nikkansportscom_soccer
スポーツ http://www.pheedo.jp/f/nikkansportscom_sports
格闘技 http://www.pheedo.jp/f/nikkansportscom_battle
競馬 http://www.pheedo.jp/f/nikkansportscom_race
芸能 http://www.pheedo.jp/f/nikkansportscom_entertainment


SANSPO.COM 
「スポーツ」総合 http://www.sanspo.com/rss/chumoku/news/allsports-n.xml
「社会・芸能」総合 http://www.sanspo.com/rss/chumoku/news/allentertainments-n.xml
野球 http://www.sanspo.com/rss/baseball/news/baseball-n.xml
MLB http://www.sanspo.com/rss/mlb/news/mlb-n.xml
サッカー http://www.sanspo.com/rss/soccer/news/soccer-n.xml
ゴルフ http://www.sanspo.com/rss/golf/news/golf-n.xml
スポーツ http://www.sanspo.com/rss/sports/news/sports-n.xml
競馬 http://www.sanspo.com/rss/keiba/news/keiba-n.xml
社会 http://www.sanspo.com/rss/shakai/news/shakai-n.xml
芸能 http://www.sanspo.com/rss/geino/news/geino-n.xml


ZAKZAK 
総合 http://www.zakzak.co.jp/rss/all/zakzak-all.xml
政治・社会 http://www.zakzak.co.jp/rss/society/society.xml
芸能 http://www.zakzak.co.jp/rss/entertainment/entertainment.xml
スポーツ http://www.zakzak.co.jp/rss/sports/sports.xml
経済・マネー http://www.zakzak.co.jp/rss/economy/economy.xml
ライフ http://www.zakzak.co.jp/rss/life/life.xml
健康 http://www.zakzak.co.jp/rss/health/health.xml
競馬・公営 http://www.zakzak.co.jp/rss/race/race.xml
デジ・MONO http://www.zakzak.co.jp/rss/digi-mono/digi-mono.xml
グラビアアイドル http://www.zakzak.co.jp/rss/gravure/idol.xml
キャンギャル・イベント http://www.zakzak.co.jp/rss/campaigngirl/campaigngirl.xml
ぴいぷる http://www.zakzak.co.jp/rss/people/people.xml


FujiSankei Business i. 
速報ニュース http://www.pheedo.jp/f/fbi_sokuhou-news
総合ニュース http://www.pheedo.jp/f/fbi_sou-news
ブルームバーグニュース http://www.pheedo.jp/f/fbi_bloomberg-news
産業ニュース http://www.pheedo.jp/f/fbi_ind-news
成長企業・VBニュース http://www.pheedo.jp/f/fbi_venture
金融・政策ニュース http://www.pheedo.jp/f/fbi_kinyu-news
文化ニュース http://www.pheedo.jp/f/fbi_culture
新商品 http://www.pheedo.jp/f/fbi_product
生かせ！知財ビジネス http://www.rsssuite.jp/sankei/f3686/index.rdf
プレゼント http://www.rsssuite.jp/sankei/f3756/index.rdf


CNET Japan 
総合 http://feeds.japan.cnet.com/cnet/rss
ニュース http://feeds.japan.cnet.com/cnet/news
プレスリリース http://feeds.japan.cnet.com/cnet/release
特集 http://feeds.japan.cnet.com/cnet/sp
オピニオン http://feeds.japan.cnet.com/cnet/opinion
ホワイトペーパーライブラリー http://feeds.japan.cnet.com/cnet/paper
レビュー http://feeds.japan.cnet.com/cnet/review
モバイル http://feeds.japan.cnet.com/cnet/mobile
アップルセンター http://feeds.japan.cnet.com/cnet/apple
ブログネットワーク http://feeds.japan.cnet.com/cnet/blog


NHKオンライン 
主要ニュース http://www3.nhk.or.jp/rss/news/cat0.xml
社会 http://www3.nhk.or.jp/rss/news/cat1.xml
暮らし http://www3.nhk.or.jp/rss/news/cat2.xml
科学・文化 http://www3.nhk.or.jp/rss/news/cat3.xml
政治 http://www3.nhk.or.jp/rss/news/cat4.xml
経済 http://www3.nhk.or.jp/rss/news/cat5.xml
国際 http://www3.nhk.or.jp/rss/news/cat6.xml
スポーツ http://www3.nhk.or.jp/rss/news/cat7.xml


西日本新聞 
福岡県の地域ニュース http://www.nishinippon.co.jp/delivery/rss/fukuoka.xml
佐賀県の地域ニュース http://www.nishinippon.co.jp/delivery/rss/saga.xml
長崎県の地域ニュース http://www.nishinippon.co.jp/delivery/rss/nagasaki.xml
熊本県の地域ニュース http://www.nishinippon.co.jp/delivery/rss/kumamoto.xml
大分県の地域ニュース http://www.nishinippon.co.jp/delivery/rss/oita.xml
宮崎県の地域ニュース http://www.nishinippon.co.jp/delivery/rss/miyazaki.xml
鹿児島県の地域ニュース http://www.nishinippon.co.jp/delivery/rss/kagoshima.xml
食卓の向こう側 http://www.nishinippon.co.jp/nnp/lifestyle/shoku/atom.xml
九州動物ニュース http://qnet.nishinippon.co.jp/animal/news/index.xml
ＢＯＯＫ新着情報 http://www.nishinippon.co.jp/delivery/rss/book.xml


TBS News 
News http://news.tbs.co.jp/rss/tbs_newsi.rdf


</textarea>

</div>

</article>
                 
   </div>
   
   
</div>
            <!-- /.row -->
 

        <!-- /#page-wrapper -->

<script>


$(document).ready(function(){
	

		$("#frm1").submit(function(event){	
			event.preventDefault();
			var bno = document.frm1.bno.value.trim();
			var rssUrl =document.frm1.rssUrl.value.trim();
			
			updateRss(bno , rssUrl);
			document.frm1.rssUrl.value ="";
			
		});


		$("#frm2").submit(function(event){	
			event.preventDefault();
			
			var bno = document.frm2.bno.value;
			var rssUrl =document.frm2.rssUrl.value;
			updateRss(bno , rssUrl);
			document.frm2.rssUrl.value ="";
		});

		

		$("#frm3").submit(function(event){	
			event.preventDefault();		
			var bno = document.frm3.bno.value;
			var rssUrl =document.frm3.rssUrl.value;
			updateRss(bno , rssUrl);
			document.frm3.rssUrl.value ="";
			
		});

	
		
		function updateRss(bno , rssUrl){
			//alert(bno +" : " + rssUrl + " 변경 했습니다.");
			
			$.ajax({
				url :"MacaronicsServlet?command=admimRssAction",
				type: "post",
				data :{
					bno :bno,
					rssUrl : rssUrl
					
				},
				success:function(returnData){
					$("#rssOl").html(returnData);
					bno ="";
					alert(" 변경 했습니다.");
					
				},error :function(errorData){
					
				  alert("다시 로그인을 해주세요!");
				}
				
			});
			
		}
		
	
});



</script>



<%@ include file="/admin/footer.jsp" %>
