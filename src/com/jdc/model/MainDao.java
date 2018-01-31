package com.jdc.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;


import com.ibatis.sqlmap.client.SqlMapClient;
import com.jdc.bean.Board;
import com.jdc.bean.Category;
import com.jdc.bean.Codetype;
import com.jdc.bean.Recommend;

@Repository
@SuppressWarnings("unchecked")
public class MainDao extends AbstractModel {
	
	public ArrayList<Board> getArticleList(int page) throws SQLException  {
		return  (ArrayList<Board>)getSqlMapClient().queryForList("getArticleList", null, page,7 );
	}

	public void setArticleCount(Board article) throws SQLException {
		getSqlMapClient().update("setArticleCount", article);
	}


	public ArrayList<Board> getArticleListByCategoryIdx(Integer category_idx) throws SQLException {
		return (ArrayList<Board>)getSqlMapClient().queryForList("getArticleListByCategoryIdx", category_idx);
	}

	public ArrayList<Codetype> getCodetypeList() throws SQLException {
		return (ArrayList<Codetype>)getSqlMapClient().queryForList("getCodetypeList");
	}
	
	public Board getArticleByArticleIdx(Integer article_idx) throws SQLException {
		return  (Board)getSqlMapClient().queryForObject("getArticleByArticleIdx", article_idx);
	}
	
	public Integer insertArticle(Board article) throws SQLException {
		return (Integer)getSqlMapClient().insert("insertArticle", article);
	}
	
	public void updateArticle(Board article) throws SQLException {
		getSqlMapClient().update("updateArticle", article);
	}
	
	public void updateArticleCnt(Integer article_idx) throws SQLException {
		getSqlMapClient().update("updateArticleCnt", article_idx);
	}
	
	public void deleteArticle(Integer article_idx) throws SQLException {
		getSqlMapClient().delete("deleteArticle", article_idx);
	}

	public Category getCategoryByIdx(Integer category_idx)  throws SQLException {
		return  (Category)getSqlMapClient().queryForObject("getCategoryByIdx", category_idx);
	}

	public ArrayList<Board> searchQuestionCodeByText(String search_text) throws SQLException {
		return (ArrayList<Board>)getSqlMapClient().queryForList("searchQuestionCodeByText", search_text);
	}

	public ArrayList<Board> searchAnswerCodeByText(String search_text) throws SQLException {
		return (ArrayList<Board>)getSqlMapClient().queryForList("searchAnswerCodeByText", search_text);
	}

	public ArrayList<Board> getArticleListByUserIdx(int user_idx)  throws SQLException {
		return (ArrayList<Board>)getSqlMapClient().queryForList("getArticleListByUserIdx", user_idx);
	}
	
	public Integer getCountRecommendByRegip(Recommend rcmd)throws SQLException {
		return (Integer)getSqlMapClient().queryForObject("getCountRecommendByRegip", rcmd);
	}
	
	public void recommendAnswer(Recommend rcmd) throws SQLException {
		getSqlMapClient().insert("insertRecommend", rcmd);
	}

	public ArrayList<Board> getRecentArticleList() throws SQLException {
		return (ArrayList<Board>)getSqlMapClient().queryForList("getRecentArticleList", RECENT_ARTICLE_NUMBER_COUNT);
	}
	
}
