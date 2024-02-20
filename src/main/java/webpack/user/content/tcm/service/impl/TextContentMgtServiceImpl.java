package webpack.user.content.tcm.service.impl;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.springframework.stereotype.Service;

import webpack.user.content.tcm.service.TextContentMgtService;


@Service("textContentMgtService")
public class TextContentMgtServiceImpl extends EgovAbstractServiceImpl implements TextContentMgtService {

	@Resource(name="textContentMgtDAO")
	public TextContentMgtDAO textContentMgtDAO;

	

}