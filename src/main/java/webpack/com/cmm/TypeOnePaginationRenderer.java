package webpack.com.cmm;

import org.egovframe.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;

public class TypeOnePaginationRenderer extends AbstractPaginationRenderer implements ServletContextAware{

	private ServletContext servletContext;

	public TypeOnePaginationRenderer() {

	}

	public void initVariables(){

		firstPageLabel    = "<li class=\"first\"><a href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \">첫 페이지</a></li>";
		previousPageLabel = "<li class=\"prev\"><a href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \">이전 페이지</a></li>";
		
        currentPageLabel  = "<li class=\"current\"><a onClick=\"return false;\">{0}</a></li>";
        otherPageLabel    = "<li><a href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \">{2}</a></li>";
        
        nextPageLabel    = "<li class=\"next\"><a href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \">다음 페이지</a></li>";
        lastPageLabel    = "<li class=\"last\"><a href=\"?pageIndex={1}\" onclick=\"{0}({1});return false; \">끝 페이지</a></li>";

	}



	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		initVariables();
	}

}
