<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Add Grade?</title>
</head>
<body>

	<div>
		<form action="/yes" class="container" method="post">
			<h4>Add this grade?</h4>
			<p>${grade.toString() }</p>
			<button type="submit" class="btn btn-primary">Yes</button>
		<a class="btn link" href="/grade-list">Nor</a>
		</form>
	</div>

</body>
</html>