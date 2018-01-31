package com.jdc.bean;

public class Board {

	private int article_idx;
	private int category_idx;
	private int codetype_idx;
	private String content;
	private String is_public;
	private String regdate;
	private String title;
	private String user_idx;
	private String code;
	private String errorcode;
	private String is_qna;
	private String code_name;
	private int cnt;
	private int reply_cnt;
	private String user_name;
	private String error_type;
	private String support_type;
	private int answer_cnt;
	private int recommend;
	
	
	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public int getAnswer_cnt() {
		return answer_cnt;
	}

	public void setAnswer_cnt(int answer_cnt) {
		this.answer_cnt = answer_cnt;
	}

	public String getError_type() {
		return error_type;
	}

	public void setError_type(String error_type) {
		this.error_type = error_type;
	}

	public String getSupport_type() {
		return support_type;
	}

	public void setSupport_type(String support_type) {
		this.support_type = support_type;
	}

	public int getReply_cnt() {
		return reply_cnt;
	}

	public void setReply_cnt(int reply_cnt) {
		this.reply_cnt = reply_cnt;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getCode_name() {
		return code_name;
	}

	public void setCode_name(String code_name) {
		this.code_name = code_name;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getIs_qna() {
		return is_qna;
	}

	public void setIs_qna(String is_qna) {
		this.is_qna = is_qna;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getErrorcode() {
		return errorcode;
	}

	public void setErrorcode(String errorcode) {
		this.errorcode = errorcode;
	}

	private String category_name;

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public int getArticle_idx() {
		return article_idx;
	}

	public void setArticle_idx(int article_idx) {
		this.article_idx = article_idx;
	}

	public int getCategory_idx() {
		return category_idx;
	}

	public void setCategory_idx(int category_idx) {
		this.category_idx = category_idx;
	}

	public int getCodetype_idx() {
		return codetype_idx;
	}

	public void setCodetype_idx(int codetype_idx) {
		this.codetype_idx = codetype_idx;
	}


	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getIs_public() {
		return is_public;
	}

	public void setIs_public(String is_public) {
		this.is_public = is_public;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(String user_idx) {
		this.user_idx = user_idx;
	}
}