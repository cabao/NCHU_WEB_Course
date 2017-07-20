<%@ page import=“java.sql.*”%> 
<%! 
    String user = “root”; 
    String pass = “shue4828”; 
    String database = “test”; 
    String url = “jdbc:mysql://127.0.0.1/” + database + “?useUnicode=true&characterEncoding=big5”; 
     //建立一個聯結物件 
         Connection conn; 
    //建立PreparedStatement物件        
        PreparedStatement pstmt = null; 
%> 
  <% 
    try{ 
        //定義驅動程式與資料來源之間的連結 
            Class.forName("org.gjt.mm.mysql.Driver").newInstance(); 
        //建立一個聯結物件 
            conn = DriverManager.getConnection(url,user,pass); 
    }catch(SQLException sqle){ 
        out.println("SQL Exception : " + sqle); 
    } 
%> 
