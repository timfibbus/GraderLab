<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deletion</title>
</head>
<body>
	<div>
		<form class="container"  method="post">
			<h4>Delete this grade?</h4>
			<p><a name="string" /></p>
			<p>${grade.toString() }</p>
			<button type="submit" class="btn btn-primary">Yes</button>
		<a class="btn link" href="/forgetit">Nor</a>
		</form>
	</div>
</body>
</html>