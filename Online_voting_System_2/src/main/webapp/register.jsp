<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Register Voter</title>
</head>
<%@include file="adminNavbar.jsp" %>
<body>
<div class="form-container">
<form action="RegisterUser" method="post">
<label for="name" class="form-elements"><b>Name :</b></label>
<br>
<input id="name" name="name" class="form-elements form-input" type="text"/>
<br>
<label for="number" class="form-elements"><b>Number :</b></label>
<br>
<input id="number" name="number" class="form-elements form-input" type="text"/>
<br>
<label for="email" class="form-elements"><b>Email-ID :</b></label>
<br>
<input id="email" name="email" class="form-elements form-input" type="text"/>
<br>
<label for="voternumber" class="form-elements"><b>Voter Number :</b></label>
<br>
<input id="voternumber" name="voternumber" class="form-elements form-input" type="text"/>
<br>
<label for="address" class="form-elements"><b>Address :</b></label>
<br>
<input id="address" name="address" class="form-elements form-input" type="text"/>
<br>
<label for="dob" class="form-elements"><b>Date Of Birth :</b></label>
<br>
<input id="dob" name="dob" class="form-elements form-input" type="text"/>
<button type="Submit" class="form-elements form-button">Submit</button>
</form>
</div>
</body>
</html>