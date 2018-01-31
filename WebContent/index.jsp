<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.net.MalformedURLException" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.URLConnection" %>
<%
/* 		StringBuffer temp = new StringBuffer();
		try {
			BufferedReader lBufferedReader = null;
			
			URL lUrl = new URL("http://zuhthebeg.wix.com/jcreative");
			URLConnection lURLConnection = lUrl.openConnection();
			lBufferedReader = new BufferedReader(new InputStreamReader(lURLConnection.getInputStream()));
			String lTempString = null;
			while(true) {
				lTempString = lBufferedReader.readLine();
				if(lTempString == null) break;
				else{
						temp.append(lTempString);
					}
			}
			
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} */
%>	

<%//temp%>

<style>
	#wixFooter {
		display: none;
	}
</style>  

<script defer="defer">
	window.onload = function(){ 
		/* document.title = "JCreative";
		var link = document.getElementsByTagName("link")[1];      
		link.href='/JDC/resource/jdc.ico';  */
		 
		location.href="home/main";
	};
</script> 