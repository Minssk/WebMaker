package webpack.com.util.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import webpack.com.util.service.MenuPreparerService;

@Service("menuPreparerService")
public class MenuPreparerServiceImpl extends EgovAbstractServiceImpl implements MenuPreparerService {

	@Resource(name="menuPreparerDAO")
    private MenuPreparerDAO menuPreparerDAO;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(MenuPreparerServiceImpl.class);

	@Override
	public List<EgovMap> selectHeaderMenuByAuthorList(String authorCode) throws Exception {
		return menuPreparerDAO.selectHeaderMenuByAuthorList(authorCode);
	}

	@Override
	public List<EgovMap> selectLeftMenuByAuthorList(String authorCode) throws Exception{
		return menuPreparerDAO.selectLeftMenuByAuthorList(authorCode);
	}


}