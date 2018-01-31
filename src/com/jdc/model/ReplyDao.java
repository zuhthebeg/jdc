package com.jdc.model;

import java.sql.SQLException;
import java.util.ArrayList;
import org.springframework.stereotype.Repository;
import com.jdc.bean.Board;
import com.jdc.bean.Codetype;

@Repository
@SuppressWarnings("unchecked")
public class ReplyDao extends AbstractModel{
	
	public ArrayList<Board> getArticleList(int page) throws SQLException  {
		return  (ArrayList<Board>)getSqlMapClient().queryForList("getArticleList", null, page,7 );
	}

	public void deleteArticle(int idx) throws SQLException {
		getSqlMapClient().delete("deleteArticle", idx);
	}

	public Integer insertArticle(Board article) throws SQLException {
		return (Integer)getSqlMapClient().insert("insertArticle", article);
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
}
