package webpack.com.comutil;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import webpack.com.cmm.service.EgovFileMngService;
import webpack.com.cmm.service.EgovFileMngUtil;
import webpack.com.cmm.service.EgovProperties;
import webpack.com.cmm.service.FileVO;

@Controller
@RequestMapping(value=CkEditorUtill.URL_ROOT)
public class CkEditorUtill {

	public static final String URL_ROOT = "/com/comutil";
    
    @Resource(name = "EgovFileMngUtil")
    private EgovFileMngUtil fileUtil;
    
    @Resource(name = "EgovFileMngService")
    private EgovFileMngService fileMngService;
	
    public static final String uploadUrl = "/CkImageFileUpload.do";
	
    @ResponseBody
	@RequestMapping(value = uploadUrl)
	public CkEditorResponse fileUpload(final MultipartHttpServletRequest multiRequest) throws Exception{
    	String atchFileId = "";
    	String fileUrl = EgovProperties.getProperty("Globals.fileStoreUrl");
		List<FileVO> result = null;
		
    	final Map<String, MultipartFile> files = multiRequest.getFileMap();
	    if (!files.isEmpty()) {
	    	result = fileUtil.parseFileInf(files, "CK_", 0, "", "");
	    	atchFileId = fileMngService.insertFileInfs(result);
	    }
	    
    	CkEditorResponse response = new CkEditorResponse();
    	response.setFilename("file.png");
    	response.setUploaded(1);
    	response.setUrl(String.format("%s/com/comutil/getImage.do?atchFileId=%s",fileUrl,atchFileId));
    	
    	return response;
    }
    
	
}