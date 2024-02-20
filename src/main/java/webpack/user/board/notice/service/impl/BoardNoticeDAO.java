package webpack.user.board.notice.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.springframework.stereotype.Repository;

import webpack.com.cmm.service.impl.EgovComAbstractDAO;
import webpack.user.board.notice.service.BoardNoticeVO;


@Repository("boardNoticeDAO")
public class BoardNoticeDAO extends EgovComAbstractDAO {

	public int selectBoardNoticeListCnt(BoardNoticeVO boardNoticeVO) {
		return selectOne("selectBoardNoticeListCnt", boardNoticeVO);
	}

	public List<EgovMap> selectBoardNoticeList(BoardNoticeVO boardNoticeVO) {
		return selectList("selectBoardNoticeList", boardNoticeVO);
	}

	public void insertBoardNotice(BoardNoticeVO boardNoticeVO) {
		insert("insertBoardNotice", boardNoticeVO);
	}

	public EgovMap selectBoardNoticeDetail(BoardNoticeVO boardNoticeVO) {
		return selectOne("selectBoardNoticeDetail", boardNoticeVO);
	}

	public void updateBoardNoticePostViews(BoardNoticeVO boardNoticeVO) {
		update("updateBoardNoticePostViews", boardNoticeVO);
	}

	public void deleteBoardNotice(BoardNoticeVO boardNoticeVO) {
		delete("deleteBoardNotice", boardNoticeVO);
	}

	public void updateBoardNotice(BoardNoticeVO boardNoticeVO) {
		update("updateBoardNotice", boardNoticeVO);
	}

	public List<EgovMap> selectBoardNoticeFixList(BoardNoticeVO boardNoticeVO) {
		return selectList("selectBoardNoticeFixList", boardNoticeVO);
	}

	
}