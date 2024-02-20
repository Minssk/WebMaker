package webpack.com.util.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.springframework.stereotype.Repository;

import webpack.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("menuPreparerDAO")
public class MenuPreparerDAO extends EgovComAbstractDAO{

	public List<EgovMap> selectHeaderMenuByAuthorList(String authorCode) throws Exception{
		return selectList("menuPreparerDAO.selectHeaderMenuByAuthorList", authorCode);
	}
	
	public List<EgovMap> selectLeftMenuByAuthorList(String authorCode) throws Exception{
		return selectList("menuPreparerDAO.selectLeftMenuByAuthorList", authorCode);
	}
}