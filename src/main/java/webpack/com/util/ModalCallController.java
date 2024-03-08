package webpack.com.util;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import webpack.com.cmm.LoginVO;
import webpack.com.cmm.util.EgovUserDetailsHelper;
import webpack.com.util.service.ModalCallService;

@Controller
@RequestMapping(value=ModalCallController.URL_ROOT)
public class ModalCallController {

	public static final String URL_ROOT = "/com/util";
	public static final String VIEW_ROOT = "webpack" + URL_ROOT;
	
	@Resource(name = "modalCallService")
	ModalCallService modalCallService;
	
	@RequestMapping(value = "/GetUserModal.do", method = RequestMethod.POST)
	public String GetUserModal(HttpServletRequest request, HttpSession httpSession, ModelMap model,
			@RequestParam(required = true, defaultValue = "0") int modal_code) throws Exception {
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		boolean loginChk = EgovUserDetailsHelper.isAuthenticated();
		
		if(!loginChk) {
			return "auth";
		}
		
		EgovMap map = modalCallService.getUserModalInfo(modal_code);
		List<EgovMap> btnList = modalCallService.getUserModalBtnList(map);
		
		model.addAttribute("modalMap", map);
		model.addAttribute("btnList", btnList);
		model.addAttribute("loginVO", loginVO);
		model.addAttribute("rootUrl", URL_ROOT);
		
		return VIEW_ROOT + "/UserModal_Alert";
	}
	
	
	
}