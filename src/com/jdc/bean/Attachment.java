package com.jdc.bean;

public class Attachment {
	
	private int attachment_idx;
	private int article_idx;
	private String filename;
	public int getAttachment_idx() {
		return attachment_idx;
	}
	public void setAttachment_idx(int attachment_idx) {
		this.attachment_idx = attachment_idx;
	}
	public int getArticle_idx() {
		return article_idx;
	}
	public void setArticle_idx(int article_idx) {
		this.article_idx = article_idx;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}

	
}
