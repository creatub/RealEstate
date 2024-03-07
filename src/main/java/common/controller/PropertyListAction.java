package common.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import property.model.PropertyDAO;
import property.model.PropertyVO;

public class PropertyListAction extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		//0. pageNum 파라미터값 받기
		System.out.println("Let's goooooooo");
		String pageNumStr = req.getParameter("pageNum");
		if(pageNumStr==null) {
			pageNumStr="1";// 디폴트 페이지 1페이지로 지정
		}
		int pageNum = Integer.parseInt(pageNumStr.trim());
		if(pageNum<1) {//0이나 음수값이라면
			pageNum=1;
		}
		
		//BoardDAO 생성 listBoard()호출
		PropertyDAO dao = new PropertyDAO();
		//1. 총 게시글 수 가져오기=> totalCount
		int totalCount = dao.getTotalCount();
		//2. 한 페이지에 보여줄 목록 개수 정하기
		int oneRecordPage = 6;
		
		//3. 총 페이지 수 구하기
		int pageCount = (totalCount-1)/oneRecordPage+1;	
		if(pageNum>pageCount) {
			pageNum = pageCount; //마지막 페이지로 지정
		}
		//4. pageNum을 이용해서 DB에서 끊어올 범위 정하기
		int end = pageNum * oneRecordPage;
		int start = end - (oneRecordPage-1);
		
		//5. 게시글 목록 가져오기
		List<PropertyVO> propertyList = dao.listProperties(start, end);
		//반환하는 List<MemberVO>객체를 req에 저장
		req.setAttribute("propertyAll", propertyList);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("pageCount", pageCount);
		req.setAttribute("pageNum", pageNum);
		//페이징 처리
		//1. 총 게시글 수 가져오기 
		
		//3. 페이지 수 구하기
		// => pageCount
		//4. jsp에서 페이지 네비게이션 구현 ==>링크 걸기
		this.setViewName("/bbs/properties.jsp");
		this.setRedirect(false);
	}

}
