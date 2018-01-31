package com.jdc.model;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.jdc.bean.Answer;
import com.jdc.bean.Recommend;

@Repository
@SuppressWarnings("unchecked")
public class AnswerDao extends AbstractModel {
	
	public ArrayList<Answer> getAnswerListByArticleId(int article_idx) throws SQLException {
		return  (ArrayList<Answer>)getSqlMapClient().queryForList("getAnswerListByArticleId", article_idx);
	}
	
	public Answer getAnswerByAnswerId(int answer_idx) throws SQLException {
		return  (Answer)getSqlMapClient().queryForObject("getAnswerListByArticleId", answer_idx);
	}
	
	public void insertAnswer(Answer answer) throws SQLException {
		getSqlMapClient().insert("insertAnswer", answer);
	}
	
	public void updateAnswer(Answer answer) throws SQLException {
		getSqlMapClient().update("updateAnswer", answer);
	}
	public void choiceAnswer(Answer answer) throws SQLException {
		getSqlMapClient().update("choiceAnswer", answer);
	}
	
	public void deleteAnswer(int answer_idx) throws SQLException {
		getSqlMapClient().delete("deleteAnswer", answer_idx);
	}

	public String getWriterEmailByArticleIdx(int article_idx)throws SQLException {
		return  (String)getSqlMapClient().queryForObject("getWriterEmailByArticleIdx", article_idx);
	}

}
