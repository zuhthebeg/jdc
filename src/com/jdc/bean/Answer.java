package com.jdc.bean;

public class Answer {
	private int answer_idx;
	private int article_idx;
	private String title;
	private String content;
	private int satisfy;
	private String  is_choice;
	private String regdate;
	private String debug_code;
	private String code_type;
	private String user_name;
	private Integer user_idx;
	
	private String regip;
	
	private int recommend;
	private String writer_comment;
	
		
	
	public String getWriter_comment() {
		return writer_comment;
	}

	public void setWriter_comment(String writer_comment) {
		this.writer_comment = writer_comment;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	
	public String getRegip() {
		return regip;
	}
	public void setRegip(String regip) {
		this.regip = regip;
	}
	public String getCode_type() {
		return code_type;
	}
	public void setCode_type(String code_type) {
		this.code_type = code_type;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public Integer getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(Integer user_idx) {
		this.user_idx = user_idx;
	}
	public String getDebug_code() {
		return debug_code;
	}
	public void setDebug_code(String debug_code) {
		this.debug_code = debug_code;
	}
	public int getAnswer_idx() {
		return answer_idx;
	}
	public void setAnswer_idx(int answer_idx) {
		this.answer_idx = answer_idx;
	}
	public int getArticle_idx() {
		return article_idx;
	}
	public void setArticle_idx(int article_idx) {
		this.article_idx = article_idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getSatisfy() {
		return satisfy;
	}
	public void setSatisfy(int satisfy) {
		this.satisfy = satisfy;
	}

	public String getIs_choice() {
		return is_choice;
	}
	public void setIs_choice(String is_choice) {
		this.is_choice = is_choice;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
}
