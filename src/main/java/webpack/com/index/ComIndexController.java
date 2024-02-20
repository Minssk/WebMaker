package webpack.com.index;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import webpack.com.cmm.LoginVO;
import webpack.com.cmm.util.EgovUserDetailsHelper;

@Controller
@RequestMapping(value=ComIndexController.URL_ROOT)
public class ComIndexController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ComIndexController.class);
	
	public static final String URL_ROOT = "/com/index";
	public static final String VIEW_ROOT = "webpack" + URL_ROOT;
	
	@RequestMapping("/webpackLogin.do")
	public String StartPlatform(HttpServletRequest request, ModelMap model) {
		
		try {
			String message = (String)request.getAttribute("message");
			if (message!=null) 
				model.addAttribute("message", message);
			
			} catch(Exception e) {
				e.printStackTrace();
			}
		
			boolean session_yn = EgovUserDetailsHelper.isAuthenticated();
			
			if(session_yn) {
				
				LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
				//사용자, 관리자 분기 추가 필요
				return "redirect:/user/main/userMain.do";
				
			}
		
		return "webpack/com/login/LoginView";
	}

}
