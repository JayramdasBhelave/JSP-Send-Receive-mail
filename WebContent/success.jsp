<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login Success</title>

	<!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="css/editor.css" type="text/css" rel="stylesheet"/>

    <!-- JQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="js/editor.js"></script>
	<script>
		$(document).ready(function() {
			$("#demo-editor-bootstrap").Editor({
				"bold" : false,
				"italics" : false,
				"fonts" : false
			});
		});
	</script>
		

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="success.jsp">Email</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      </ul>
      <form class="d-flex" action="success.jsp">
        <button class="btn btn-success" type="submit" value="Home">Home</button>
      </form> &nbsp;
      <form class="d-flex" action="logout.jsp">
        <button class="btn btn-outline-success" type="submit" value="logout">Logout</button>
      </form>
    </div>
  </div>
</nav>
<br>
	<%
		if(session.getAttribute("uname")==null){
			response.sendRedirect("input.jsp");
		}
	%>

	<div class="alert alert-primary alert-dismissible fade show"
		role="alert">
		<strong>Welcome,</strong>
		<%=session.getAttribute("uname")%>
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>

	<br>
    <form action="EmailSending" method="post" enctype="multipart/form-data">
    <h2 class="demo-text">Send New E-mail</h2>
        <table border="0" width="35%" align="center">
            <tr>
                <td width="50%">Recipient address </td>
                <td><input type="text" name="recipient" size="40"/></td>
            </tr>
            <tr>
                <td>Subject </td>
                <td><input type="text" name="subject" size="40"/></td>
            </tr>
            <tr>
                <td>Content </td>
                <td><textarea rows="10" cols="39" name="content"></textarea> </td>
            </tr>
            <tr>
                <td>Attach file </td>
                <td><input type="file" name="file" size="50" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Send"/></td>
            </tr>
        </table>
         
    </form>
 
 <br>   
 <!--Footer-->
  <footer class="bg-light text-lg-start">
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      © 2022-23 Copyright
      <a class="text-dark" href="#">NanosoftRD</a>
    </div>
    <!-- Copyright -->
  </footer>
  <!--Footer-->
<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>