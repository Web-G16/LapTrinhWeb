package up;

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

@WebServlet("/a")
@MultipartConfig(maxFileSize = 16177215)
public class themkh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String dbURL = "jdbc:mysql://node179311-group16wed.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
	private String dbUser = "root";
	private String dbPass = "RAYatq42331";
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		// gets values of text fields
		String tenkh = request.getParameter("TenKhoaHoc");
		String nbatdau = request.getParameter("NgayBatDau");
		String gv = request.getParameter("gv");
		String nketthuc = request.getParameter("NgayKetThuc");
		String lichhoc = request.getParameter("LichHoc");
		String diadiem = request.getParameter("DiaDiemHoc");
		String decuong = request.getParameter("tendecuong");
		
		InputStream inputStream = null;	// input stream of the upload file
		
		// obtains the upload file part in this multipart request
		Part filePart = request.getPart("decuong");
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
			String sql = "INSERT INTO khoahoc (TenKH, GV, Ngaybatdau , Ngayketthuc , LichHoc , DiaDiem,decuong,link) values (?, ?, ?,?,?,?,?,?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, tenkh);
			statement.setString(2, gv);
			statement.setString(3, nbatdau);
			statement.setString(4, nketthuc);
			statement.setString(5, lichhoc);
			statement.setString(6, diadiem);
			statement.setString(7, decuong);
			
			if (inputStream != null) {
				// fetches input stream of the upload file for the blob column
				 statement.setBinaryStream(8, inputStream, (int) filePart.getSize());
			}

			// sends the statement to the database server
			int row = statement.executeUpdate();
			if (row > 0) 
			{
				
				message = "Mở khóa học thành công";
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