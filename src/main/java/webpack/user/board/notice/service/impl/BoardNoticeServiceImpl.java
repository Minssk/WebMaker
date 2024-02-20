package webpack.user.board.notice.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.egovframe.rte.fdl.idgnr.EgovIdGnrService;
import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.springframework.stereotype.Service;

import webpack.user.board.notice.service.BoardNoticeService;
import webpack.user.board.notice.service.BoardNoticeVO;


@Service("boardNoticeService")
public class BoardNoticeServiceImpl extends EgovAbstractServiceImpl implements BoardNoticeService {

	@Resource(name="boardNoticeDAO")
	public BoardNoticeDAO boardNoticeDAO;
	
	@Resource(name = "boardNoticeIdGnrService")
	private EgovIdGnrService idgenService;

	@Override
	public int selectBoardNoticeListCnt(BoardNoticeVO boardNoticeVO) {
		return boardNoticeDAO.selectBoardNoticeListCnt(boardNoticeVO);
	}

	@Override
	public List<EgovMap> selectBoardNoticeList(BoardNoticeVO boardNoticeVO) {
		return boardNoticeDAO.selectBoardNoticeList(boardNoticeVO);
	}

	@Override
	public void insertBoardNotice(BoardNoticeVO boardNoticeVO) throws Exception {
		boardNoticeVO.setNoticeId(idgenService.getNextStringId());
		boardNoticeDAO.insertBoardNotice(boardNoticeVO);
	}

	@Override
	public EgovMap selectBoardNoticeDetail(BoardNoticeVO boardNoticeVO) {
		return boardNoticeDAO.selectBoardNoticeDetail(boardNoticeVO);
	}

	@Override
	public void updateBoardNoticePostViews(BoardNoticeVO boardNoticeVO) {
		boardNoticeDAO.updateBoardNoticePostViews(boardNoticeVO);
	}

	@Override
	public void deleteBoardNotice(BoardNoticeVO boardNoticeVO) {
		boardNoticeDAO.deleteBoardNotice(boardNoticeVO);
	}

	@Override
	public void updateBoardNotice(BoardNoticeVO boardNoticeVO) throws Exception {
		boardNoticeDAO.updateBoardNotice(boardNoticeVO);
	}

	@Override
	public List<EgovMap> selectBoardNoticeFixList(BoardNoticeVO boardNoticeVO) {
		return boardNoticeDAO.selectBoardNoticeFixList(boardNoticeVO);
	}

	

}