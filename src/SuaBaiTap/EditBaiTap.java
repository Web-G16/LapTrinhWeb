package SuaBaiTap;

import java.io.IOException;
import java.io.InputStream;
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
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215)
/**
 * Servlet implementation class EditBaiTap
 */
@WebServlet("/editbt")
public class EditBaiTap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String dbURL = "jdbc:mysql://node179311-group16wed.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
	private String dbUser = "root";
	private String dbPass = "RAYatq42331";
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		// gets values of text fields
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String ID = request.getParameter("ID");
		String IDKH = request.getParameter("IDKH");
		String tuan = request.getParameter("Tuan");
		String tenbaitap = request.getParameter("TenBaiTap");
		
		
		InputStream inputStream = null;	// input stream of the upload file
		
		// obtains the upload file part in this multipart request
		Part filePart = request.getPart("LinkBaiTap");
		if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			
			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
		}
		
		Connection conn = null;	// connection to the database
		String message = null;	// message will be sent back to client
		
		try {
			// connects to the database
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

			// constructs SQL statement
			String sql = "UPDATE baitap set IDKH=?, Tuan=?, TenBaiTap=?,LinkBaiTap=? where ID='" + ID + "'";
			PreparedStatement statement = conn.prepareStatement(sql);
		
			statement.setString(1, IDKH);
			statement.setString(2, tuan);
			statement.setString(3, tenbaitap);
		

			
			if (inputStream != null) {
				// fetches input stream of the upload file for the blob column
				 statement.setBinaryStream(4, inputStream, (int) filePart.getSize());
			}

			// sends the statement to the database server
			int row = statement.executeUpdate();
			if (row > 0) {
				message = "Sửa bài tập thành công";
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
			getServletContext().getRequestDispatcher("/Message.jsp?id='" + ID + "'&idkh='" + IDKH + "'").forward(request, response);
		}
	}
}
