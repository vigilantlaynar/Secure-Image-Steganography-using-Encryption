<%@ page import="encodedecode.jsp.Steganographer" %>
<%@ page import="stegno.Test" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
  <%@ page import="java.sql.*" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP page</title>
<link href="WebContent/WEB-INF/boostrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="WebContent/WEB-INF/boostrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<%
Steganographer.encode("/Users/shakti/Desktop/donochize/image.png" , "/Users/shakti/Desktop/donochize/plaintext.txt");
%>
 <% Steganographer.decode("/Users/shakti/Desktop/donochize/image_with_hidden_message.png"); %>
</head>
<body>

<h1> Image Steganography</h1>
<div class="row">
<div class="col-sm-4">
<form  action=" " enctype="multipart/form-data" method="POST">

<% Test obj = new Test();
obj.add();
%>

<div alight="right">
<label class="form-label">upload a text file</label>
<input type="file" name="file" value="save" />

</div>
</br>

<div alight="right">
<label class="form-label">upload a file to encrypt</label>
<input type="file" name="file" value="select images.." />

</form></div>
</br>

<div alight="right">
<label class="form-label">upload a file to decrypt</label>
<input type="file" name="file" value="select images.." />

</div>
</br>
 

<button class="btn btn-lg btn-primary" id="4" onclick="window.location.href = 'http://localhost:8080/stegno/success.jsp';"> 
        Encrypt
    </button>
    
    <button class="btn btn-lg btn-primary" id="4" onclick="window.location.href = 'http://localhost:8080/stegno/successdec.jsp';"> 
        Decrypt
    </button>

</form>
</div>
<div class="col-sm-5">
</div>
</div>
</body>
</html>
