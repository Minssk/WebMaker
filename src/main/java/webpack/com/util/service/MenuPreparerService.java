package webpack.com.util.service;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.util.EgovMap;


public interface MenuPreparerService {

	List<EgovMap> selectHeaderMenuByAuthorList(String authorCode) throws Exception;
	List<EgovMap> selectLeftMenuByAuthorList(String authorCode) throws Exception;

}