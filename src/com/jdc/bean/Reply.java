package com.jdc.bean;

public class Reply {
	private int reply_idx;
	private String contents;
	private int article_idx;
	private int user_idx;
	private int recommend;
	
	
	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public int getReply_idx() {
		return reply_idx;
	}
	public void setReply_idx(int reply_idx) {
		this.reply_idx = reply_idx;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getArticle_idx() {
		return article_idx;
	}
	public void setArticle_idx(int article_idx) {
		this.article_idx = article_idx;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	
	
}
