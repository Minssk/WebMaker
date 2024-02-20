package webpack.user.board.notice.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.egovframe.rte.psl.dataaccess.util.EgovMap;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import webpack.com.cmm.LoginVO;
import webpack.com.cmm.service.EgovFileMngService;
import webpack.com.cmm.service.EgovFileMngUtil;
import webpack.com.cmm.service.FileVO;
import webpack.com.cmm.util.EgovUserDetailsHelper;
import webpack.com.comutil.Replacer;
import webpack.user.board.notice.service.BoardNoticeService;
import webpack.user.board.notice.service.BoardNoticeVO;

@Controller
@RequestMapping(value=BoardNoticeController.URL_ROOT)
public class BoardNoticeController {

	public static final String URL_ROOT = "/user/board/notice";
	public static final String VIEW_ROOT = "webpack" + URL_ROOT;
	
    @Resource(name = "boardNoticeService")
    private BoardNoticeService boardNoticeService;
    
    @Resource(name = "EgovFileMngUtil")
    private EgovFileMngUtil fileUtil;
    
    @Resource(name = "EgovFileMngService")
    private EgovFileMngService fileMngService;
	
    public static final String listURL = "/BoardNoticeList.do";
    public static final String detailURL = "/BoardNoticeDetail.do";
    public static final String editURL = "/BoardNoticeEdit.do";
    public static final String updateDetailURL = "/BoardNoticeUpdateDetail.do";
    public static final String updateURL = "/BoardNoticeUpdate.do";
	public static final String insertURL = "/BoardNoticeInsert.do";
	public static final String delURL = "/BoardNoticeDelete.do";
	public static final String delListURL = "/BoardNoticeListDelete.do";
	public static final String redirectURL = "redirect:/BoardNoticeList.do";
	
	/*목록화면 호출*/
	@RequestMapping(value = listURL)
	public String BoardNoticeList(ModelMap model,BoardNoticeVO boardNoticeVO){
		try {
			LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
			PaginationInfo paginationInfo = new PaginationInfo();
			paginationInfo.setCurrentPageNo(boardNoticeVO.getPageIndex());
			paginationInfo.setRecordCountPerPage(boardNoticeVO.getRecordCountPerPage());
			paginationInfo.setPageSize(boardNoticeVO.getPageSize());
			paginationInfo.setTotalRecordCount(boardNoticeService.selectBoardNoticeListCnt(boardNoticeVO));
			
			boardNoticeVO.setFirstRecordIndex(paginationInfo.getFirstRecordIndex());
			boardNoticeVO.setLastRecordIndex(paginationInfo.getLastRecordIndex());
			
			List<EgovMap> noticeList = boardNoticeService.selectBoardNoticeList(boardNoticeVO);
			List<EgovMap> fixList = boardNoticeService.selectBoardNoticeFixList(boardNoticeVO);
			
			model.addAttribute("fixList", fixList);
			model.addAttribute("noticeList", noticeList);
			model.addAttribute("loginVO", loginVO);
			model.addAttribute("boardNoticeVO", boardNoticeVO);
			model.addAttribute("paginationInfo", paginationInfo);
			model.addAttribute("rootUrl", URL_ROOT);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return VIEW_ROOT + "/BoardNoticeList.subU";
	}

	/*등록화면 호출*/
	@RequestMapping(value = editURL, method = RequestMethod.POST)
	public String BoardNoticeEdit(ModelMap model,BoardNoticeVO boardNoticeVO) throws Exception {
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		if(loginVO == null)
			 return redirectURL;
		
		model.addAttribute("loginVO", loginVO);
		model.addAttribute("rootUrl", URL_ROOT);
		return VIEW_ROOT + "/BoardNoticeEdit.subU";
	}
	
	/*게시글 등록*/
	@ResponseBody
	@RequestMapping(value = insertURL, method = RequestMethod.POST)
	public Map<String, Object> BoardNoticeInsert(BoardNoticeVO boardNoticeVO,final MultipartHttpServletRequest multiRequest) throws Exception {
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		String atchFileId = "";
		Map<String, Object> resultMap = new HashMap<>();
		List<FileVO> result = null;
		try {
			System.out.println("ALERT FILE UPLOADER START...");
			final Map<String, MultipartFile> files = multiRequest.getFileMap();
		    if (!files.isEmpty()) {
		    	result = fileUtil.parseFileInf(files, "NOTICE_", 0, "", "");
		    	atchFileId = fileMngService.insertFileInfs(result);
		    }
		    //boardNoticeVO.setNoticeCn(Replacer.unscript(boardNoticeVO.getNoticeCn()));
		    boardNoticeVO.setAtchFileId(atchFileId);
		    boardNoticeVO.setRegistId(loginVO.getId());
		    boardNoticeService.insertBoardNotice(boardNoticeVO);
		    resultMap.put("code", "success");
		}catch (SecurityException e) {
			System.out.println("Exception SecurityException..");
			e.printStackTrace();
			resultMap.put("code", "E002");
		}catch (Exception e) {
			System.out.println("Exception Exception..");
			e.printStackTrace();
			resultMap.put("code", "E001");
		}
		return resultMap;
	}
	
	/*상세화면 호출*/
	@RequestMapping(value = detailURL, method = RequestMethod.POST)
	public String BoardNoticeDetail(ModelMap model,BoardNoticeVO boardNoticeVO) throws Exception {
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		if(loginVO == null)
			 return redirectURL;
		EgovMap resultMap = boardNoticeService.selectBoardNoticeDetail(boardNoticeVO);
		boardNoticeService.updateBoardNoticePostViews(boardNoticeVO);
		
		model.addAttribute("resultMap", resultMap);
		model.addAttribute("loginVO", loginVO);
		model.addAttribute("rootUrl", URL_ROOT);
		return VIEW_ROOT + "/BoardNoticeDetail.subU";
	}
	
	/*수정화면 호출*/
	@RequestMapping(value = updateDetailURL, method = RequestMethod.POST)
	public String BoardNoticeUpdateDetail(ModelMap model,BoardNoticeVO boardNoticeVO) throws Exception {
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		if(loginVO == null)
			 return redirectURL;
		EgovMap resultMap = boardNoticeService.selectBoardNoticeDetail(boardNoticeVO);
		
		model.addAttribute("resultMap", resultMap);
		model.addAttribute("loginVO", loginVO);
		model.addAttribute("rootUrl", URL_ROOT);
		return VIEW_ROOT + "/BoardNoticeUpdateDetail.subU";
	}
	
	/*게시글 수정*/
	@ResponseBody
	@RequestMapping(value = updateURL, method = RequestMethod.POST)
	public Map<String, Object> BoardNoticeUpdate(BoardNoticeVO boardNoticeVO,final MultipartHttpServletRequest multiRequest) throws Exception {
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		Map<String, Object> resultMap = new HashMap<>();
		List<FileVO> result = null;
		try {
			final Map<String, MultipartFile> files = multiRequest.getFileMap();
		    if (!files.isEmpty()) {
		    	//result = fileUtil.parseFileInf(files, "NOTICE_", 0, "", "");
		    	//atchFileId = fileMngService.insertFileInfs(result);
		    	
		    	FileVO fvo = new FileVO();
			    fvo.setAtchFileId(boardNoticeVO.getAtchFileId());
			    int cnt = fileMngService.getMaxFileSN(fvo);
			    List<FileVO> _result = fileUtil.parseFileInf(files, "NOTICE_", cnt, boardNoticeVO.getAtchFileId(), "");
			    if(_result.size() != 0) {
			    	fileMngService.updateFileInfs(_result);
			    }
		    }
		    //boardNoticeVO.setNoticeCn(Replacer.unscript(boardNoticeVO.getNoticeCn()));
		    boardNoticeVO.setRegistId(loginVO.getId());
		    boardNoticeService.updateBoardNotice(boardNoticeVO);
		    resultMap.put("code", "success");
		}catch (SecurityException e) {
			System.out.println("Exception SecurityException..");
			e.printStackTrace();
			resultMap.put("code", "E002");
		}catch (Exception e) {
			System.out.println("Exception Exception..");
			e.printStackTrace();
			resultMap.put("code", "E001");
		}
		return resultMap;
	}
	
	/*게시글 삭제*/
	@ResponseBody
	@RequestMapping(value = delURL, method = RequestMethod.POST)
	public Map<String, Object> BoardNoticeDelete(BoardNoticeVO boardNoticeVO) throws Exception {
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		Map<String, Object> resultMap = new HashMap<>();
		try {
			boardNoticeService.deleteBoardNotice(boardNoticeVO);
			resultMap.put("code", "success");
		} catch (Exception e) {
			e.printStackTrace();
			resultMap.put("code", "E001");
		}
		return resultMap;
	}
	
	/*게시글 목록 삭제*/
	@ResponseBody
	@RequestMapping(value = delListURL, method = RequestMethod.POST)
	public Map<String, Object> BoardNoticeListDelete(@RequestBody List<String> values) throws Exception {
		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		BoardNoticeVO boardNoticeVO = new BoardNoticeVO();
		Map<String, Object> resultMap = new HashMap<>();
		
		try {
			int loopCnt = 0;
			for(int i = 0; i < values.size(); i++) {
				loopCnt = ++loopCnt;
				boardNoticeVO.setNoticeId(values.get(i));
				boardNoticeService.deleteBoardNotice(boardNoticeVO);
			}
			resultMap.put("message", loopCnt);
			resultMap.put("code", "success");
		} catch (Exception e) {
			e.printStackTrace();
			resultMap.put("code", "E001");
		}
		return resultMap;
	}
	
}