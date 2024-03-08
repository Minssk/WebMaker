package webpack.com.util.service;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.util.EgovMap;

public interface ModalCallService {

	EgovMap getUserModalInfo(int modal_code);

	List<EgovMap> getUserModalBtnList(EgovMap map);


}