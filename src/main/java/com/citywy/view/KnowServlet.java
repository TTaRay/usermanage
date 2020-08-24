package com.citywy.view;
 
import com.citywy.domain.Know;
import com.citywy.service.KnowService;
import sun.java2d.pipe.SpanIterator;

import java.io.IOException;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
/**
 * Servlet implementation class KnowServlet
 */
public class KnowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public KnowServlet() {
        super();
    }
 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进来了啊");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		KnowService knowService=new KnowService();
		//1.计算共计多少页，第一种方法，第二种简单，记忆
		//pagecount=rowcount%pagesize==0?rowcount/pagesize:rowcount/pagesize+1;
		int rowcount=knowService.getRowCount();
		int pagecount=(rowcount-1)/20+1;
		int pagenow=1;
		//获取当前多少页
		String pn=request.getParameter("pn");
		if(pn!=null&&!"".equals(pn)){
			pagenow=Integer.parseInt(pn);
			if(pagenow<=1){
				pagenow=1;
			}
		}
		List<Know> list=knowService.getKnowList(pagenow, 20);
		//共计多少页
		request.setAttribute("pagenow", pagenow);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/admin/know_list.jsp").forward(request, response);
	}
}