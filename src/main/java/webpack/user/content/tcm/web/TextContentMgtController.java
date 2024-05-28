package webpack.user.content.tcm.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import webpack.com.cmm.LoginVO;
import webpack.com.cmm.util.EgovUserDetailsHelper;
import webpack.user.content.tcm.service.TextContentMgtService;

@Controller
@RequestMapping(value=TextContentMgtController.URL_ROOT)
public class TextContentMgtController {

	public static final String URL_ROOT = "/user/content/tcm";
	public static final String VIEW_ROOT = "webpack" + URL_ROOT;
	
    @Resource(name = "textContentMgtService")
    private TextContentMgtService textContentMgtService;
	
	@RequestMapping("/TextContentMgt.do")
	public String textContentMgt(HttpServletRequest request, HttpSession httpSession, ModelMap model) throws Exception {
		
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		
		System.out.println("################### 권한 ###################");
		System.out.println(loginVO.getAuthorCode());
		System.out.println("###########################################");
		
		
		model.addAttribute("loginVO", loginVO);
		model.addAttribute("rootUrl", URL_ROOT);
		
		return VIEW_ROOT + "/TextContentMgt.subU";
	}
	
	@RequestMapping("/TextContentRegister.do")
	public String textContentRegister(ModelMap model) throws Exception {
		
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		
		System.out.println("################### 권한 ###################");
		System.out.println(loginVO.getAuthorCode());
		System.out.println("###########################################");
		
		
		
		model.addAttribute("loginVO", loginVO);
		model.addAttribute("rootUrl", URL_ROOT);
		
		return VIEW_ROOT + "/TextContentRegister.subU";
	}
	
}