<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="form-container">
<form action="Vote"method="post">
<label for="voteNumber" class="form-elements"><b>Enter your card number</b></label>
<br>
<input id="VoterNumber" name="voterNumber" class="form-elements form-input" type="text">
<br>
<label for="party" class="form-elements"><b>Choose Your Party</b></label>
<br>
<input type="radio" id="aap" name="party" value="Aam Aadmi Party">
<label for="aap"><img class="party_img" alt="aap" src="images/aap.jpg"> Aam Aadmi Party</label>
<br>


<input type="radio" id="bjp" name="party" value="BJP">
<label for="bjp"><img class="party_img" alt="aap" src="images/bjp.jpg"> BJP</label>
<br>

<input type="radio" id="bsp" name="party" value="BSP">
<label for="bsp"><img class="party_img" alt="aap" src="images/bsp.jpg"> BSP</label>

<br>

<input type="radio" id="congress" name="party" value="Congress">
<label for="congress"><img class="party_img" alt="aap" src="images/Congress.jpg"> Congress</label>
<br>

<input type="radio" id="cpi" name="party" value="CPI">
<label for="cpi"><img class="party_img" alt="aap" src="images/cpi.jpg"> CPI</label>
<button type="Submit" class="form-elements form-button">Submit</button>

</form>
</div>
</body>
</html>