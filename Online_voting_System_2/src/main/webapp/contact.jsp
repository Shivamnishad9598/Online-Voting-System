<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>Online Voting System</title>
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="form-container">
<form action="Contacts" method="post">
<label id="name" class="form-elements"><b>Name :</b></label>
<br>
<input id="name" name ="name" class="form-elements form-input" type="text"/>
<br>
<label id="number" class="form-elements"><b>Number :</b></label>
<br>
<input id="number" name="number" class="form-elements form-input" type="text"/>
<br>
<label id="email" class="form-elements"><b>Email-ID :</b></label>
<br>
<input id="email" name="email" class="form-elements form-input" type="text"/>
<br>
<label id="comment" class="form-elements"><b>Comments :</b></label>
<br>
<input id="comment" name="comment" class="form-elements form-input" type="text"/>
<br>
<button type="Submit" class="form-elements form-button">Submit</button>

</form>
</div>
</body>
</html>