<%--This file is used to get data from the user and then send the user data to the "process.jsp" page.--%>
<%@ page import="java.util.*"%>

<HTML>

<HEAD>

<TITLE>Login Page</TITLE>
<style>
body {
	margin: 0;
	padding: 0;
	background-color: #6abadeba;
	font-family: 'Arial';
}

.login {
	width: 300px;
	overflow: hidden;
	margin: auto;
	margin: 18 0 0 400px;
	padding: 68px;
	background: #f8991d;
	border-radius: 15px;
}

h2 {
	text-align: center;
	color: #277582;
	padding: 20px;
	width: 382px;
}

label {
	color: white;
	font-size: 17px;
}

#uname {
	width: 300px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#pass {
	width: 300px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#log {
	width: 300px;
	height: 30px;
	border: none;
	border-radius: 17px;
	padding-left: 7px;
	background: black;
	color: white;
}
</style>
</HEAD>
<BODY>
	<div class="login">
		<form method="post" action="process.jsp">
			<center><h1 style="color: white"> DEMO</h1></center>
			<label><b>USER NAME </b> </label> <input type="text" name="uname"
				id="Uname" placeholder="Username"> <br> <br> <label><b>PASSWORD
			</b> </label> <input type="Password" name="upass" id="Pass"
				placeholder="Password"> <br> <br> <input
				type="submit" id="log" value="LOGIN">
		</form>
	</div>
</BODY>
</HTML>