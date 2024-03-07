package common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//추상 클래스 : Action의 execute override안해도 됨
public abstract class AbstractAction implements Action {
	private String viewName;// 보여줄 뷰페이지
	private boolean isRedirect=false; // true면 => redirect 방식으로 이동, false면 => forward방식 이동
	
	//execute() 추상 메서드를 가지고 있음
	
	//setter, getter
	public String getViewName() {
		return viewName;
	}
	public void setViewName(String viewName) {
		this.viewName = viewName;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}


}
