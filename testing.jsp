<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%!  public String decode(String enc, int offset) {
        return encode(enc, 26-offset);
    }
 
    public static String encode(String enc, int offset) {
        offset = offset % 26 + 26;
        StringBuilder encoded = new StringBuilder();
        for (char i : enc.toCharArray()) {
            if (Character.isLetter(i)) {
                if (Character.isUpperCase(i)) {
                    encoded.append((char) ('A' + (i - 'A' + offset) % 26 ));
                } else {
                    encoded.append((char) ('a' + (i - 'a' + offset) % 26 ));
                }
            } else {
                encoded.append(i);
            }
        }
        System.out.println(encoded.toString());
        return encoded.toString();
    } %>
<% 
String plain =request.getParameter("ptext");
    String enc = request.getParameter("key");
    int offset = Integer.parseInt(enc);
    
   out.println(encode(plain,offset));
    %>
    <% 
    try{
    	PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Thornsndroses0903");
    ps=con.prepareStatement("insert into minor2(ptext, key) values(?, ?)");
    ps.setString(1,plain);
    ps.setInt(2, offset);
    ps.executeUpdate(); }
    catch(Exception e)
    {
    }
    %>
</body>
</html>