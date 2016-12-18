<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%
int BUFFER_SIZE = 4096;   
String dbURL = "jdbc:mysql://node179275-group16.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8";
String dbUser = "root";
String dbPass = "FZDool70036";
int uploadId = Integer.parseInt(request.getParameter("id"));
Connection conn = null; // connection to the database

try {
    // connects to the database
    DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

    // queries the database
    String sql = "SELECT * FROM baigiang WHERE ID = ?";
    PreparedStatement statement = conn.prepareStatement(sql);
    statement.setInt(1, uploadId);

    ResultSet result = statement.executeQuery();
    if (result.next()) {
        // gets file name and file blob data
        String fileName = result.getString("decuong");
        Blob blob = result.getBlob("Link");
        InputStream inputStream = blob.getBinaryStream();
        int fileLength = inputStream.available();
         
        System.out.println("fileLength = " + fileLength);

        ServletContext context = getServletContext();

        // sets MIME type for the file download
        String mimeType = context.getMimeType(fileName);
        if (mimeType == null) {        
            mimeType = "application/octet-stream";
        }              
         
        // set content properties and header attributes for the response
        response.setContentType(mimeType);
        response.setContentLength(fileLength);
        String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=\"%s\"", fileName);
        response.setHeader(headerKey, headerValue);

        // writes the file to the client
        OutputStream outStream = response.getOutputStream();
         
        byte[] buffer = new byte[BUFFER_SIZE];
        int bytesRead = -1;
         
        while ((bytesRead = inputStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }
         
        inputStream.close();
        outStream.close();             
    } else {
        // no file found
        response.getWriter().print("File not found for the id: " + uploadId);  
    }
} catch (SQLException ex) {
    ex.printStackTrace();
    response.getWriter().print("SQL Error: " + ex.getMessage());
} catch (IOException ex) {
    ex.printStackTrace();
    response.getWriter().print("IO Error: " + ex.getMessage());
} finally {
    if (conn != null) {
        // closes the database connection
        try {
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }          
}

%>