<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.*,java.sql.*"%>

<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String addr3 = request.getParameter("addr3");
	System.out.println(name +" "+ id +" "+ pw+" "+ tel);
	if(name==null||id==null||pw==null||tel==null||name.trim().isEmpty()||id.trim().isEmpty()||pw.trim().isEmpty()||tel.trim().isEmpty()) {
		out.println("<script>");
		out.println("alert('필수 입력 사항을 모두 입력해주십시오.')");
		out.println("history.back()");
		out.println("</script>");
		return;
	}
	
	MemberVO user = new MemberVO(id,pw,name,tel,null,email,addr1,addr2,addr3);
	
	//4. MemberDAO객체 생성해서 insertMember()호출하기
	MemberDAO userDao = new MemberDAO();
	try {
		//5. 그 결과 메시지 처리 ==> alert()로 보여주기
		int n = userDao.insertMember(user);
		String msg=(n>0)?"회원가입이 완료되었습니다.":"회원가입에 실패했습니다.";
		String loc=(n>0)?"../index.jsp":"join.jsp";
		//6. 페이지 이동 ===> index.html로
		out.println("<script>");
		out.println("alert('"+msg+"')");
		out.println("location.href='"+loc+"'");
		out.println("</script>");
	}catch(SQLException e) {
		out.println("<script>");
		out.println("alert('이미 사용중인 아이디입니다')");
		out.println("history.back()");
		out.println("</script>");
		e.printStackTrace();
	}
	   
%>