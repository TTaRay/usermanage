package com.citywy.view;
 
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
 
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 对于原来在web.xml定义的servlet，filter，listener，InitParam都可以通过annotation来配置了，而不需要在web.xml中定义。
 */
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitServlet() {
        super();
    }

	/**
	 * @seeServlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);//重写前执行父级init方法，才能正常使用servletContext获取文件路径
		//从record.txt读取浏览量
		//1.首先读取文件的真实路径
		String filePath=this.getServletContext().getRealPath("record.txt");
		//2.打开文件
		try {
			FileReader fileReader=new FileReader(filePath);
			//为了读取方便转为BufferReader
			BufferedReader br=new BufferedReader(fileReader);
			String nums=br.readLine();
			this.getServletContext().setAttribute("nums",nums);
			//流必须及时关闭
			br.close();
			fileReader.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @seeServlet # destroy()
	 * 正常的stop项目，而不是terminate方式关闭。才会正常执行
	 */
	public void destroy() {
		//把servletContenxt值重新保存到文件，这个只是修改tomcat下该文件，如果重新发布又归零了
		//从record.txt读取浏览量
		//1.首先读取文件的真实路径
		String filePath=this.getServletContext().getRealPath("record.txt");
		BufferedWriter br=null;
		FileWriter fileWriter=null;
		//2.打开文件
		try {
			fileWriter=new FileWriter(filePath);
			//为了读取方便转为BufferReader
			br=new BufferedWriter(fileWriter);
			//从servletContext读取访问量
			String nums=(String) this.getServletContext().getAttribute("nums");
			//写回文件
			br.write(nums);
			this.getServletContext().setAttribute("nums",nums);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				br.close();
				fileWriter.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
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
		System.out.println("进入InitServlet");
	}

}