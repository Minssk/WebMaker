package webpack.com.util.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.springframework.stereotype.Repository;

import webpack.com.cmm.service.impl.EgovComAbstractDAO;

@Repository("modalCallDAO")
public class ModalCallDAO extends EgovComAbstractDAO{

	public EgovMap getUserModalInfo(int modalCode) {
		return selectOne("getUserModalInfo", modalCode);
	}

	public List<EgovMap> getUserModalBtnList(EgovMap map) {
		return selectList("getUserModalBtnList", map);
	}


}