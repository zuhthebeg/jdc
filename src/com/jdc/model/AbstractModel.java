package com.jdc.model;

import javax.annotation.Resource;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;


import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class AbstractModel extends SqlMapClientDaoSupport  {
	
	@Resource(name="sqlMapClient")
	public void setSuperSqlMapClient(SqlMapClient sqlMapClient){
		super.setSqlMapClient(sqlMapClient);
	}

	protected final int RECENT_ARTICLE_NUMBER_COUNT = 10;
}
