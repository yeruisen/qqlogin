package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String username = request.getParameter("u");
		System.out.println("u=" + username);
		String password = request.getParameter("p");
		System.out.println("p=" + password);
		
		String url = "jdbc:mysql://52.6.26.92:3306/user?characterEncoding=utf8";
		String user = "root";
		String pass = "abcd1234";
		String driver = "com.mysql.jdbc.Driver";
		try {  
			Connection conn ; 
            Class.forName(driver);//指定连接类型  
            conn = (Connection) DriverManager.getConnection(url, user, pass);//获取连接
            //conn.setPropertiesTransform("gb2312");
            PreparedStatement pst;
			String sql = "insert into user values('" + username + "','"
					+ password + "')";
			System.out.println(sql);

			pst = (PreparedStatement) conn.prepareStatement(sql);
			pst.execute();

			System.out.println("执行sql成功");
			conn.close();
			pst.close();
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
			//Connection con = DriverManager.getConnection(url, user, pass);
			
		

	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
