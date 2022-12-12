<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Omikuji Form</title>
</head>
<body>
	<div class="container">
		<p class="display-5">Send an Omikuji</p>
		<div class="border container py-3">
			<form action="/omikuji/process" method="post" class="d-flex gap-3 flex-column">
				<div class="form-group">
				  	<label for="years">Pick any number from 5 to 25</label>
				  	<input type="number" class="form-control" id="years" name="years" min="5" max="25" placeholder="5">
				</div>
				<div class="form-group">
				  	<label for="city">Enter the name of a city</label>
				  	<input type="text" class="form-control" id="city" name="city" placeholder="San Francisco">
				</div>
				<div class="form-group">
				  	<label for="name">Enter the name of any real person</label>
				  	<input type="text" class="form-control" id="name" name="name" placeholder="Anthony">
				</div>
				<div class="form-group">
				  	<label for="hobby">Enter a hobby or profession</label>
				  	<input type="text" class="form-control" id="hobby" name="hobby" placeholder="golfing">
				</div>
				<div class="form-group">
				  	<label for="animal">Enter a type of an animal</label>
				  	<input type="text" class="form-control" id="animal" name="animal" placeholder="swan">
				</div>
				<div class="form-group">
			    	<label for="comment">Give a nice compliment</label>
			    	<textarea class="form-control" id="comment" name="comment" rows="3" placeholder="You have a great smile!"></textarea>
			    </div>
			    <div class="d-flex justify-content-between">
			    	<small>Show and share with a friend</small>
			    	<button type="submit" class="btn btn-primary">Submit</button>
			    </div>
			</form>
		</div>
	</div>
</body>
</html>