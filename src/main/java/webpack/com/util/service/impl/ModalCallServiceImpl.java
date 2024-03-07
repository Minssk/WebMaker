package webpack.com.util.service.impl;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.springframework.stereotype.Service;

import webpack.com.util.service.ModalCallService;

@Service("modalCallService")
public class ModalCallServiceImpl extends EgovAbstractServiceImpl implements ModalCallService {

	@Resource(name="modalCallDAO")
    private ModalCallDAO modalCallDAO;

	@Override
	public EgovMap getUserModalInfo(int modal_code) {
		return modalCallDAO.getUserModalInfo(modal_code);
	}

	
	


}