package org.lanqiao.util;

public class PageController {
	public static String getPageCode(int pageNum ,int maxPage,String url){
		int prePage = pageNum == 1 ? 1 : pageNum - 1;
		int nexPage = pageNum == maxPage? maxPage : pageNum + 1;
		String str = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\""+url+"?p=1\">��ҳ��</a>"
				+ " <a href=\""+url+"?p="+prePage+"\">��һҳ</a> "
				+ " <a href=\""+url+"?p="+nexPage+"\">��һҳ</a> "
				+ " <a href=\""+url+"?p="+maxPage+"\">βҳ��</a>";
		return str;
	}
}
