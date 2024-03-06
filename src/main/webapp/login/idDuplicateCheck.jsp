<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.*"%>

<%
	String id = request.getParameter("id");
	System.out.println("id:!!! "+id);
	String responseMessage = "";
	if(id==null||id.trim().isBlank()){
		responseMessage = "아이디를 입력하세요";
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(responseMessage);
		return;
	}
	
	MemberDAO userDao = new MemberDAO();
	MemberVO tmpUser =userDao.findById(id);
	if(tmpUser==null){
		//ID가 없는 경우
		responseMessage = "사용 가능한 아이디입니다.";
	}else{
		responseMessage = "사용 중인 아이디입니다.";
	}
	response.setContentType("text/plain");
	response.setCharacterEncoding("UTF-8");
	response.getWriter().write(responseMessage);
	
%>