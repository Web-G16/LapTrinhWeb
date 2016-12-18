package insertbg;

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
@WebServlet("/insertbg")

	
public class insertbg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String dbURL = "jdbc:mysql://node179275-group16.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
	private String dbUser = "root";
	private String dbPass = "FZDool70036";
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// gets values of text fields
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String IDKH = request.getParameter("IDKH");
		String tuan = request.getParameter("Tuan");
		String LinkVideo = request.getParameter("LinkVideo");
		String TaiLieu = request.getParameter("tailieu");
		String BaiGiang=request.getParameter("BaiGiang");
		
		InputStream inputStream = null;	// input stream of the upload file
		
		// obtains the upload file part in this multipart request
		Part filePart = request.getPart("link");
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
			String sql = "INSERT INTO baigiang (IDKH, Tuan, LinkVideo , decuong ,link,TenBaiGiang) values (?,?,?,?,?,?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, IDKH);
			statement.setString(2, tuan);
			statement.setString(3, LinkVideo);
			statement.setString(4, TaiLieu);
			statement.setString(6, BaiGiang);
			

			
			if (inputStream != null) {
				// fetches input stream of the upload file for the blob column
				 statement.setBinaryStream(5, inputStream, (int) filePart.getSize());
			}

			// sends the statement to the database server
			int row = statement.executeUpdate();
			if (row > 0) {
				message = "Thêm bài giảng thành công ";
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
			getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
		}
	}
}