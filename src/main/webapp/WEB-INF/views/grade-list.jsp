<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grades</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="/temp.css" rel="stylesheet" /> 
</head>
<body>
<form action="grade-list/delete-confirm" method=post>
	<div class="container" >
		<h1>All the Grades</h1>
		
		<table class="table">
			<thead> 
			
				<tr>
					<th>id</th><th>name</th><th>type</th><th>score</th><th>total</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="grades" items="${grades}">
				<tr>
					<td>${grades.id}</td>
					<td>${grades.name}</td>
					<td>${grades.type }</td>
					<td>${grades.score }</td>
					<td>${grades.total }</td>				
					<td><input type="button" name="button" class="btn btn-warning" value="Delete" /></td>
				</tr>
				</c:forEach>
			</tbody>
			
		</table>
		
		<a href="/grade-list/add-grade" class="btn btn-secondary" >Add Grade</a>
	</div>
</form>
</body>
</html>