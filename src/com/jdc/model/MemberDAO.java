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
import com.jdc.bean.Member;

@Repository
@SuppressWarnings("unchecked")
public class MemberDAO extends AbstractModel {
	/**
	 * 회원가입
	 * @param article
	 * @throws SQLException
	 */
	public void insertMember(Member user) throws SQLException {
		getSqlMapClient().insert("insertMember", user);
	}
	

	/**
	 * 회원 한명 조회
	 * @param phone
	 * @throws SQLException
	 */
	public Member getMemberByIdx(int idx) throws SQLException {
		// TODO Auto-generated method stub
		return (Member)getSqlMapClient().queryForObject("getMemberByIdx" , idx);
	}

	/**
	 * 회원 한명 탈퇴
	 * @param idx
	 * @throws SQLException
	 */
	public void deleteMemberByIdx(int idx)  throws SQLException  {
		// TODO Auto-generated method stub
		getSqlMapClient().delete("deleteMemberByIdx", idx);
	}

	public Member getUser(Member user) throws SQLException {
		return (Member)getSqlMapClient().queryForObject("getUser", user);
	}


	public ArrayList<Category> getCategoryListByParIdx(int par_idx) throws SQLException {
		return (ArrayList<Category>)getSqlMapClient().queryForList("getCategoryListByParIdx", par_idx);
	}
	
	public Member getUserByEmail(String email) throws SQLException {
		return (Member)getSqlMapClient().queryForObject("getUserByEmail", email);
	}

	public ArrayList<Category> searchCategoryListByText(String search_text) throws SQLException {
		return (ArrayList<Category>)getSqlMapClient().queryForList("searchCategoryListByText", search_text);
	}

}
