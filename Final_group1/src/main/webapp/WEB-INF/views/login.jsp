<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="CommonHeader.jsp"/>
<!DOCTYPE HTML>
<html>
<head>
<title></title>
<link href="resources/css/login.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Rokkitt' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
</head>
<body>
<table>
<tr>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>

<td >
<div class="wrap">
<!-- strat-contact-form -->	
<div class="contact-form">
<!-- start-form -->
<form action="perform_login" method="post">
	
		<font size="16">Login Into Your Account</font>
	    <ul>
	        <li>
				User Name<input type="text" name="username" placeholder="abcd@gmail.com"/>
			    <img src="resources/images/contact.png" alt="errrrrrrrr" height="25" width="25">
	        </li>
	        <br>
	        <li>
	           Password &nbsp; <input type="password" name="password" placeholder="password"/>
	            <nobr></nobr>
	            <img src="resources/images/lock.png" alt="errrrrrrrr" height="15" width="15">
	        </li>
	      	<!-- 
	      	<br>
	        <li>
	            Role &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="role" placeholder="Role"/>
	               
	        </li>
	        <br>
	        
	        <li>
	            Enabled &nbsp; <input type="checkbox" name="enabled" placeholder="Enabled"/>
        </li>
 -->
	        

         </ul>
       	 	<center><input type="submit" value="Sign In"/></center>
      <div class="forgot">
			<a href="#">forgot password?</a>
		</div>	
		<div class="clear"></div>	
	</form>
<!-- end-form -->
<!-- start-account -->
<div class="account">
	<a href="#">Don' have an account? Sign Up!</a>
    <div class="span"><a href="#"><img src="resources/images/facebook.jpg" alt="errrrrrrr" height="20" width="20"/><i>Sign In with Facebook</i><div class="clear"></div></a></div>	
    <div class="span1"><a href="#"><img src="resources/images/twitter.jpg" alt="errrrrrrr" height="20" width="20"/><i>Sign In with Twitter</i><div class="clear"></div></a></div>
    <div class="span2"><a href="#"><img src="resources/images/gplus.png" alt="errrrr" height="20" width="20"/><i>Sign In with Google+</i><div class="clear"></div></a></div>
</div>	
<!-- end-account -->
<div class="clear"></div>	
</div>
<!-- end-contact-form -->
</div>
</td>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>

<td>
<img src="resources/images/image9.jpg" height="50%" width="60%">
</td>

</tr>
</table>
 
</body>
</html>