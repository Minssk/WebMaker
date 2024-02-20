package webpack.user.board.notice.service;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.util.EgovMap;

public interface BoardNoticeService {

	int selectBoardNoticeListCnt(BoardNoticeVO boardNoticeVO);

	List<EgovMap> selectBoardNoticeList(BoardNoticeVO boardNoticeVO);

	void insertBoardNotice(BoardNoticeVO boardNoticeVO) throws Exception;

	EgovMap selectBoardNoticeDetail(BoardNoticeVO boardNoticeVO);

	void updateBoardNoticePostViews(BoardNoticeVO boardNoticeVO);

	void deleteBoardNotice(BoardNoticeVO boardNoticeVO);

	void updateBoardNotice(BoardNoticeVO boardNoticeVO) throws Exception;

	List<EgovMap> selectBoardNoticeFixList(BoardNoticeVO boardNoticeVO);

}