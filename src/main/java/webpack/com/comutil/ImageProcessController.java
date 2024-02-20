package webpack.com.comutil;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Map;

import webpack.com.cmm.EgovWebUtil;
import webpack.com.cmm.SessionVO;
import webpack.com.cmm.service.EgovFileMngService;
import webpack.com.cmm.service.FileVO;
import webpack.com.cmm.util.EgovResourceCloseHelper;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@SuppressWarnings("serial")
@Controller
@RequestMapping(value=ImageProcessController.URL_ROOT)
public class ImageProcessController extends HttpServlet {
	
	public static final String URL_ROOT = "/com/comutil";
	
    @Resource(name = "EgovFileMngService")
    private EgovFileMngService fileService;

    private static final Logger LOGGER = LoggerFactory.getLogger(ImageProcessController.class);

    /**
     * 첨부된 이미지에 대한 미리보기 기능을 제공한다.
     */
    @RequestMapping("/getImage.do")
    public void getImage(SessionVO sessionVO, ModelMap model, @RequestParam Map<String, Object> commandMap, HttpServletResponse response) throws Exception {

		String atchFileId = (String)commandMap.get("atchFileId");
		String fileSn = (String)commandMap.get("fileSn");

		FileVO vo = new FileVO();

		vo.setAtchFileId(atchFileId);
		vo.setFileSn(fileSn);

		//------------------------------------------------------------
		// fileSn이 없는 경우 마지막 파일 참조
		//------------------------------------------------------------
		if (fileSn == null || fileSn.equals("")) {
			int newMaxFileSN = fileService.getMaxFileSN(vo);
			vo.setFileSn(Integer.toString(newMaxFileSN - 1));
		}
		//------------------------------------------------------------

		FileVO fvo = fileService.selectFileInf(vo);

		//String fileLoaction = fvo.getFileStreCours() + fvo.getStreFileNm();

		File file = null;
		FileInputStream fis = null;

		BufferedInputStream in = null;
		ByteArrayOutputStream bStream = null;

		try {
		    file = new File(fvo.getFileStreCours(), fvo.getStreFileNm());
		    fis = new FileInputStream(file);

		    in = new BufferedInputStream(fis);
		    bStream = new ByteArrayOutputStream();

		    int imgByte;
		    while ((imgByte = in.read()) != -1) {
		    	bStream.write(imgByte);
		    }

			String type = "";

			if (fvo.getFileExtsn() != null && !"".equals(fvo.getFileExtsn())) {
			    if ("jpg".equals(fvo.getFileExtsn().toLowerCase())) {
				type = "image/jpeg";
			    } else {
			    	type = "image/" + fvo.getFileExtsn().toLowerCase();
			    }
			} else {
				LOGGER.debug("Image fileType is null.");
			}

			response.setHeader("Content-Type", EgovWebUtil.removeCRLF(type));
			response.setContentLength(bStream.size());

			bStream.writeTo(response.getOutputStream());

			response.getOutputStream().flush();
			response.getOutputStream().close();

		} finally {
			EgovResourceCloseHelper.close(bStream, in, fis);
		}
    }
}
