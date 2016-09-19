<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="CommonHeader.jsp"/></head>
<body>
<style>
input[type=text] {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid #555;
    outline: none;
}

input[type=text]:focus {
    background-color: lightblue;
}

input[type=submit] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}	
</style>
<body>
<form method="get" action="thankyou.jsp">

<font style="font-family:new century schoolbook;"> Home Address</font><BR>
  <label for="fname">First Name</label>
  <input type="text" id="fname" name="fname" value="Amogh"><br>
  <label for="lname">Last Name</label>
  <input type="text" id="lname" name="lname" value="Chitnis"><br>
	Address Stree1:	<input type="text" id="street1" name="street1"><br>
	Address Stree2:	<input type="text" id="street2" name="street2"><br>
	Landmark <input type="text" id="street2" name="lmark"><br>
	<label>Country</label>
	
    <select name="country">
      <option value="australia">Australia</option>
      <option value="canada">Canada</option>
      <option value="usa">India</option>
      <option value="usa">Japan</option>
    </select>
    </div>
	
    <br>
    <br>
	<label>State</label>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <select name="state">
      <option value="Maharashtra">Maharashtra</option>
      <option value="Gujarath">Gujarat</option>
      <option value="Telangana">Telangana </option>
      <option value="Andhra">Andhra </option>
      <option value="Tamilnadu">TamilNadu</option>
      <option value="Bihar">Bihar</option>
    </select><br>
  <label for="lname">Pin Code</label>
  <input type="text" id="pcode" name="pincode" value="XXXXXX"><br>
  <br>
  <input type="submit" value="Submit">
  
  
</form>
	
<!--copy rights end here-->
<div class="copy-rights wthree">		 	
	<p>© 2016 All Rights Reserved | Design by  <a href="http://amoghchitnis.com/" target="_blank"></a> </p>		 	
</div>
</body>
</html>