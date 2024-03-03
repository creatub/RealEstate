<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//컨텍스트명 구하기 
String ctx = request.getContextPath();
%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>부동부동 - 블록체인 기반 부동산 거래</title>
    <link rel="shortcut icon" href="<%=ctx%>/resources/real_estate.ico" />
    <!--naver 지도-->
    <script
      type="text/javascript"
      src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=r0nh0ibqvm"
    ></script>
    <!-- CDN방식 참조 -------------------------------------- -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- -------------------------------------------------- -->
    <link rel="stylesheet" type="text/css" href="<%=ctx%>/css/style.css" />
    
  </head>
  <body>
    <div id="wrap">
      <header>
        <div class="head">
          <a href="<%=ctx%>/index.jsp"
            ><img src="<%=ctx%>/resources/logo.png" title="logo" id="logo" width="120px"
          /></a>
        </div>
        <div class="head" id="search">
          <input id="input_search" type="text" placeholder="검색어 입력" />
          <img
            id="img_search"
            src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
          />
        </div>
        <div class="head">
          <img src="<%=ctx%>/resources/profile.png" alt="profile" id="profile" />
        </div>
        <a href="#"
          ><button id="login" onclick="openLoginPopup()">로그인</button></a
        >
      </header>
      <hr class="horizon" color="gray" />
      <a href="<%=ctx%>/index.jsp" class="menu">부동산</a>
      <a href="#" id="to-buying" class="menu">매물</a>
      <a href="#" id="to-subDivision" class="menu">분양</a>
      <a href="#" id="to-auction" class="menu">경매</a>
      <a href="https://apply.lh.or.kr/lhapply/apply/main.do" class="menu"
        >청약</a
      >

      <hr class="horizon" color="gray" />