package webpack.user.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import webpack.com.cmm.LoginVO;
import webpack.com.cmm.util.EgovUserDetailsHelper;

@Controller
@RequestMapping(value=UserMainController.URL_ROOT)
public class UserMainController {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserMainController.class);

	public static final String URL_ROOT = "/user/main";
	public static final String VIEW_ROOT = "webpack" + URL_ROOT;
	
	
	@RequestMapping("/userMain.do")
	public String userMain(HttpServletRequest request, HttpSession httpSession, ModelMap model) throws Exception {
		
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		
		System.out.println("################### 권한 ###################");
		System.out.println(loginVO.getAuthorCode());
		System.out.println("##########################################");
		
		if(!loginVO.getAuthorCode().equals("ROLE_USER")) {
			httpSession.invalidate();
			return "webpack/com/login/LoginView";
		}
		
		model.addAttribute("loginVO", loginVO);
		model.addAttribute("rootUrl", URL_ROOT);
		return VIEW_ROOT + "/UserMain.mainU";
	}

	
}