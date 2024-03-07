package common.controller;
import javax.servlet.http.*;

public interface Action {
	
	//추상메서드 : 앞에 public 자동으로 붙음
	void execute(HttpServletRequest req, HttpServletResponse res) throws Exception;
	
}
