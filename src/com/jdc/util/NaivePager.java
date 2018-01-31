package com.jdc.util;

import java.util.HashMap;
import java.util.Iterator;

public class NaivePager {
	private String param = "";
	
	/**
	 * 파라미터 가공하기
	 * page를 제외한 나머지 파라미터 가공
	 * @param param
	 */
	public void setParam(HashMap<String, Object> param){
		String key = null;
		String value = null;
		Iterator itr = param.keySet().iterator();
		while(itr.hasNext()){
			key = (String)itr.next();
			value = (String)param.get(key);
			if(value != null){
				this.param += "&"+key+"="+value;
			}
		}
	}
	
    /**
     * 페이지 수 구하기
     * @param numPerPage
     * @param dataCount
     * @return
     */
	public int getPageCount(int numPerPage, int dataCount) {
		int pageCount = 0;
		int remain;

		 // 총 페이지 수를 구하기 위한 나머지 계산
		remain = dataCount % numPerPage;
		if(remain == 0)
			pageCount = dataCount / numPerPage;
		else
			pageCount = dataCount / numPerPage + 1;

		return pageCount;
	}
    
    public String pageIndexList(int current_page, int total_page, String list_url , Integer pagePerNum) {
        int numPerBlock = pagePerNum;   // 리스트에 나타낼 페이지 수
        int currentPageSetUp;
        int n;
        int page;
        StringBuffer strList = new StringBuffer();
        
        if(current_page == 0)
        	return "";
        
        if(list_url.indexOf("?") != -1)
        	list_url = list_url + "&";
        else
        	list_url = list_url +"?";

        // 표시할 첫 페이지
        currentPageSetUp = (current_page / numPerBlock) * numPerBlock;
        if (current_page % numPerBlock == 0)
            currentPageSetUp = currentPageSetUp - numPerBlock;

        // 1 페이지
        if ((total_page > numPerBlock) && (currentPageSetUp > 0)) {
           strList.append("<a href='"+list_url+"page=1"+this.param+"'>1</a> ");
        }

        // [Prev] : 총 페이지수가 numPerBlock 이상인 경우 이전 numPerBlock 보여줌
        n = current_page - numPerBlock;
        if (total_page > numPerBlock && currentPageSetUp > 0) {
           strList.append("[<a href='"+list_url+"page="+n + this.param+"'>Prev</a>] ");
        }

        // 바로가기 페이지 구현
        page = currentPageSetUp + 1;
        while((page <= total_page) && (page <= currentPageSetUp + numPerBlock)) {
           if(page == current_page) {
             strList.append("<font color='Fuchsia'>"+page+" </font>");
           }
           else {
             strList.append("<a href='"+list_url+"page="+page+ this.param+"'>"+page+"</a> ");
           }
           page++;
        }

        // [Next] : 총 페이지수가 numPerBlock 페이지 이상인 경우 다음 numPerBlock 페이지를 보여줌
        // n = currentPageSetUp + numPerBlock + 1;
        n = current_page + numPerBlock;
        if (total_page - currentPageSetUp > numPerBlock) {
			strList.append("[<a href='"+list_url+"pageNum="+n+"'>Next</a>] ");
        }

        // 마지막 페이지
        if ((total_page > numPerBlock) && (currentPageSetUp + numPerBlock < total_page)) {
			strList.append("<a href='"+list_url+"pageNum="+total_page+"'>"+total_page+"</a>");
        }

        return strList.toString();
    }
}