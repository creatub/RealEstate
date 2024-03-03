<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
//컨텍스트명 구하기 
String ctx = request.getContextPath();
%>
<jsp:include page="/inc/top.jsp" />
      <div class="container">
        <section class="section" id="section-3">
          <div id="map"></div>
          <code id="snippet" class="snippet"></code>
        </section>
      </div>
      <div class="aside">
        <div class="home">
          <a href="homeClicked.html"
            ><img class="home_img" src="<%=ctx%>/resources/home1.png" alt="home1"
          /></a>
          <a class="home_link" href="homeClicked.html"
            >송파푸르지오아파트 매매 12억</a
          >
        </div>
        <div class="home">
          <a href="homeClicked.html"
            ><img class="home_img" src="<%=ctx%>/resources/home2.png" alt="home2"
          /></a>
          <a class="home_link" href="homeClicked.html"
            >흑석그대가프리미어 매매 15억</a
          >
        </div>
      </div>
      <!-- aside-->
      <div class="container2">
        <div class="column">
          <!-- 첫 번째 컬럼의 내용 -->
          <p>오늘의 뉴스</p>
          <ul id="news">
            <li>
              <a href="https://n.news.naver.com/article/009/0005252973"
                ><h4>
                  “신혼부부가 10억이 어디 있어요”…금수저만 떼부자 만드는
                  ‘신혼특공’
                </h4></a
              >
            </li>
            <li>
              <a href="https://n.news.naver.com/article/277/0005374654"
                >강남 금싸라기 땅이 어쩌다…평당 3억원짜리 주차장 신세[PF위기
                후폭풍]① 아시아경제</a
              >
            </li>
            <li>
              <a href="https://n.news.naver.com/article/020/0003546095"
                >청약 당첨돼도 취소된다?… 사전청약 제도, 이렇게 이용하라 [부동산
                빨간펜] 동아일보</a
              >
            </li>
            <li>
              <a href="https://n.news.naver.com/article/417/0000978929"
                >"조합장 나와" 리모델링 조합 내분 격화[르포] 머니S</a
              >
            </li>
            <li>
              <a href="https://n.news.naver.com/article/119/0002795446"
                >GTX에 인근 지역 부동산도 ‘들썩’ [수도권 교통망 호재②] 데일리안
              </a>
            </li>
          </ul>
        </div>
        <div class="column">
          <!-- 두 번째 컬럼의 내용 -->
          <p>공지사항</p>
          <ul id="announcement">
            <li>PC 경매서비스 종료 관련 추가 안내</li>
            <li>주택담보대출 갈아타기 사전신청 진행 중</li>
            <li>한국부동산원 오피스텔 매물 모니터링 확대 시행 알림</li>
            <li>모바일 부동산 매물 페이지 개편 안내</li>
            <li>부동산 뉴스 페이지 개편</li>
            <li>(11/1)실거래가 알림 발송 재개 안내</li>
          </ul>
        </div>
        <div class="column">
          <!-- 세 번째 컬럼의 내용 -->
          <p>전세 체크리스트</p>
          <ul>
            <li>주변 매매가, 전세가 확인</li>
            <li>주택 임대차 표준 계약서 사용</li>
            <li>근저당권, 전세권 등 선순위 채권 확인으로 부채 규모 확인</li>
            <li>임대인의 세금 체납여부 확인</li>
            <li>선순위 보증금 확인</li>
            <li>확정일자 부여 현황 확인</li>
            <li>전입세대 열람</li>
            <li>임대차 신고</li>
            <li>전입 신고</li>
            <li>전세 보증금 반환 보증</li>
          </ul>
        </div>
      </div>
<jsp:include page="/inc/foot.jsp" />
    <!-- wrap -->

    <!-- 로그인 팝업 -->
    <div id="loginPopup" class="popup">
      <h2>Login</h2>
      <!-- 로그인 폼 -->
      <form>
        <input
          type="text"
          id="username"
          name="username"
          placeholder="ID"
          required
        />

        <input
          type="password"
          id="password"
          name="password"
          placeholder="Password"
          required
        />
        <div class="button-container">
          <button type="submit">로그인</button>
          <button onclick="closeLoginPopup()">닫기</button>
        </div>
      </form>
    </div>

    <!-- 배경 오버레이 -->
    <div id="overlay" class="overlay"></div>

	<script src="<%=ctx%>/js/login.js"></script>
	<script src="<%=ctx%>/js/map.js"></script>
  </body>
</html>
		