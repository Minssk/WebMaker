package webpack.com.util;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.tiles.Attribute;
import org.apache.tiles.AttributeContext;
import org.apache.tiles.preparer.PreparerException;
import org.apache.tiles.preparer.ViewPreparer;
import org.apache.tiles.request.Request;
import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import webpack.com.cmm.LoginVO;
import webpack.com.cmm.util.EgovUserDetailsHelper;
import webpack.com.util.service.MenuPreparerService;


public class MenuPreparer implements ViewPreparer {
	
	@Resource(name="menuPreparerService")
	private MenuPreparerService menuPreparerService;
	
	@Override
	public void execute(Request tilesContext, AttributeContext attributeContext) throws PreparerException {
		
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		
		try {
		List<EgovMap> headList = menuPreparerService.selectHeaderMenuByAuthorList(loginVO.getAuthorCode());
		List<EgovMap> leftList = menuPreparerService.selectLeftMenuByAuthorList(loginVO.getAuthorCode());
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		String targetUrl = request.getRequestURI();
		System.out.println("REQUEST URL : " + targetUrl);
		
		for(EgovMap menuHighLight : leftList) {
			if(targetUrl.equals(menuHighLight.get("chkURL").toString())) {
				String upperMenuNm = "NONE";
				for(int i = 0; i < headList.size(); i++) {
					if(headList.get(i).get("menuNo").equals(menuHighLight.get("upperMenuNo"))) {
						upperMenuNm = (String) headList.get(i).get("menuNm");
					}
				}
				request.getSession().setAttribute("headMenuNm", upperMenuNm);
				request.getSession().setAttribute("headMenu", menuHighLight.get("upperMenuNo"));
				request.getSession().setAttribute("leftMenu", menuHighLight.get("menuNo"));
				request.getSession().setAttribute("menuName", menuHighLight.get("menuNm"));
			} else if (targetUrl.contains("Main.do")){
				request.getSession().setAttribute("headMenu", "");
				request.getSession().setAttribute("leftMenu", "");
			}
		}
		
		attributeContext.putAttribute("loginId", new Attribute(loginVO.getId()), true);
        attributeContext.putAttribute("headMenuList", new Attribute(headList), true);
        attributeContext.putAttribute("leftMenuList", new Attribute(leftList), true);
        
        
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
