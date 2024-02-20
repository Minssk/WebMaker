package webpack.user.board.notice.service;

import webpack.com.util.service.DefaultVO;

public class BoardNoticeVO extends DefaultVO {
	
	private String noticeId;
	private String noticeTitle;
	private String noticeCn;
	private String postViews;
	private String atchFileId;
	private String fixYn;
	private String registId;
	private String registDate;
	
	public String getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(String noticeId) {
		this.noticeId = noticeId;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeCn() {
		return noticeCn;
	}
	public void setNoticeCn(String noticeCn) {
		this.noticeCn = noticeCn;
	}
	public String getPostViews() {
		return postViews;
	}
	public void setPostViews(String postViews) {
		this.postViews = postViews;
	}
	public String getAtchFileId() {
		return atchFileId;
	}
	public void setAtchFileId(String atchFileId) {
		this.atchFileId = atchFileId;
	}
	public String getFixYn() {
		return fixYn;
	}
	public void setFixYn(String fixYn) {
		this.fixYn = fixYn;
	}
	public String getRegistId() {
		return registId;
	}
	public void setRegistId(String registId) {
		this.registId = registId;
	}
	public String getRegistDate() {
		return registDate;
	}
	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}
	
	@Override
	public String toString() {
		return "BoardNoticeVO [noticeId=" + noticeId + ", noticeTitle=" + noticeTitle + ", noticeCn=" + noticeCn
				+ ", postViews=" + postViews + ", atchFileId=" + atchFileId + ", fixYn=" + fixYn + ", registId="
				+ registId + ", registDate=" + registDate + "]";
	}
	
}