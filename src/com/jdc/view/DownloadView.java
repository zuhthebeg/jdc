package com.jdc.view;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

@Component
public class DownloadView extends AbstractView {

	public void Download() {

		setContentType("application/download; utf-8");

	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		File file = (File) model.get("file");

		if(file.exists() && file.isFile()){		
			response.setContentType(getContentType());
			response.setContentLength((int) file.length());
	
			String userAgent = request.getHeader("User-Agent");
			boolean ie = userAgent.indexOf("MSIE") > -1;
			String fileName = null;
			if (ie) {
				fileName = URLEncoder.encode(file.getName(), "utf-8");
			} else {
				fileName = new String(file.getName().getBytes("utf-8"));
			}// end if;
			response.setHeader("Content-Disposition", "attachment; filename=\""				+ fileName + "\";");
			response.setHeader("Content-Transfer-Encoding", "binary");
			OutputStream out = response.getOutputStream();
			FileInputStream fis = null;
			try {
				fis = new FileInputStream(file);
				FileCopyUtils.copy(fis, out);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (fis != null) {
					try {
						fis.close();
					} catch (Exception e) {
					}
				}
			}// try end;
			out.flush();
		}// render() end;
	}
}