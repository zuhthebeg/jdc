package com.jdc.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.jdc.bean.Notice;

@Repository
@SuppressWarnings("unchecked")
public class NoticeDAO extends AbstractModel{
	/**
	 * 공지사항 총 개수 가져오기
	 * @param article
	 * @throws SQLException
	 */
	public Integer getNoticeTotalCount() throws SQLException {
		return (Integer)getSqlMapClient().queryForObject("getNoticeTotalCount");
	}
	
	/**
	 * 공지사항 게시물 리스트 받아오기
	 * @param param
	 * @return
	 * @throws SQLException
	 */
	public ArrayList<Notice> getNoticeList(HashMap<String, Object> param) throws SQLException {
		return (ArrayList<Notice>)getSqlMapClient().queryForList("getNoticeList", param);
	}	
	/**
	 * 공지사항 작성하기
	 * @param article
	 * @throws SQLException
	 */
	public void insertNotice(Notice article) throws SQLException {
		getSqlMapClient().insert("insertNotice", article);
	}
	
	/**
	 * 공지사항 게시물 하나 가져오기
	 * @param idx
	 * @return
	 * @throws SQLException
	 */
	public Notice getNoticeArticle(int idx) throws SQLException {
		return (Notice)getSqlMapClient().queryForObject("getNoticeArticle", idx);
	}

	/**
	 * 공지사항 게시물 하나 수정
	 * @param article
	 * @throws SQLException
	 */
	public void updateNoticeArticle(Notice article) throws SQLException {
		// TODO Auto-generated method stub
		getSqlMapClient().update("updateNoticeArticle" , article);
	}
	
	/**
	 * 공지사항 게시물 하나 삭제
	 * @param idx
	 * @throws SQLException
	 */
	public void deleteNoticaArticle(int idx) throws SQLException {
		getSqlMapClient().delete("deleteNoticaArticle", idx);
	}
}