package Updethi;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/updethi")
public class updethi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String dbURL = "jdbc:mysql://node179311-group16wed.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
	private String dbUser = "root";
	private String dbPass = "RAYatq42331";
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// gets values of text fields
		String id = request.getParameter("ID");
		String idkh = request.getParameter("IDKH");
		String tendethi = request.getParameter("TenBaiThi");
		String linkdethi = request.getParameter("LinkBaiThi");
		String cau1 = request.getParameter("c1");
		String cau2 = request.getParameter("c2");
		String cau3 = request.getParameter("c3");
		String cau4 = request.getParameter("c4");
		String cau5 = request.getParameter("c5");
		String cau6 = request.getParameter("c6");
		String cau7 = request.getParameter("c7");
		String cau8 = request.getParameter("c8");
		String cau9 = request.getParameter("c9");
		String cau10 = request.getParameter("c10");
		String cau11 = request.getParameter("c11");
		String cau12 = request.getParameter("c12");
		String cau13 = request.getParameter("c13");
		String cau14 = request.getParameter("c14");
		String cau15 = request.getParameter("c15");
		String cau16 = request.getParameter("c16");
		String cau17 = request.getParameter("c17");
		String cau18 = request.getParameter("c18");
		String cau19 = request.getParameter("c19");
		String cau20 = request.getParameter("c20");
		
	
		
	
		
		// obtains the upload file part in this multipart request
		
		
		Connection conn = null;	// connection to the database
		String message = null;	// message will be sent back to client
		
		try {
			// connects to the database
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

			// constructs SQL statement
			String sql = "UPDATE baithi set idkh=?, tendethi=?, linkdethi=?,c1=?,c2=?,c3=?,c4=?,c5=?,c6=?,c7=?,c8=?,c9=?,c10=?,c11=?,c12=?,c13=?,c14=?,c15=?,c16=?,c17=?,c18=?,c19=?,c20=? where id='" + id + "'";
			PreparedStatement statement = conn.prepareStatement(sql);
		
			statement.setString(1, idkh);
			statement.setString(2, tendethi);
			statement.setString(3, linkdethi);
			statement.setString(4, cau1);
			statement.setString(5, cau2);
			statement.setString(6, cau3);
			statement.setString(7, cau4);
			statement.setString(8, cau5);
			statement.setString(9, cau6);
			statement.setString(10, cau7);
			statement.setString(11, cau8);
			statement.setString(12, cau9);
			statement.setString(13, cau10);
			statement.setString(14, cau11);
			statement.setString(15, cau12);
			statement.setString(16, cau13);
			statement.setString(17, cau14);
			statement.setString(18, cau15);
			statement.setString(19, cau16);
			statement.setString(20, cau17);
			statement.setString(21, cau18);
			statement.setString(22, cau19);
			statement.setString(23, cau20);
			

			
			

			// sends the statement to the database server
			int row = statement.executeUpdate();
			if (row > 0) {
				message = "Thêm đề thi thành công";
			}
		} catch (SQLException ex) {
			message = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		} finally {
			if (conn != null) {
				// closes the database connection
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			// sets the message in request scope
			request.setAttribute("Message", message);
			
			// forwards to the message page
			getServletContext().getRequestDispatcher("/Message.jsp?id='" + id + "'&idkh='" + idkh + "'").forward(request, response);
		}
	}
}