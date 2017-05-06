<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movie</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
	
	
</head>
<body>
	<div align="center" style="margin: 50px 30px 10px 30px">
		<h1>Welcome to Movie Center</h1>
	</div>
	<hr
		style="width: 1400px; color: black; height: 1px; background-color: black;">

	<div class="container" id="container">
		
	</div>
</body>
<script >
	var storageData = document.getElementById("container");
	displayMovie();
	function displayMovie() {
		if (localStorage.getItem("MovieList")) {
			var listJson = localStorage.getItem("MovieList");
			var MovieList = JSON.parse(listJson);
			storageData.innerHTML='';
		
			
			for (var i = 0; i < MovieList.length; i++) {
				movie=MovieList[i];
				
				storageData.innerHTML+='<dt>Poster</dt>'+'<dd><img src="'+movie.poster+'"height="160px" width="90px" style="margin:20px"  /></dd>';
				storageData.innerHTML+='<dt>title</dt>'+'<dd>'+movie.title+'</dd>';
				storageData.innerHTML+='<dt>Year OF Release</dt>'+'<dd>'+movie.yearOfRelease+'</dd>';
				storageData.innerHTML+='<dt>Director</dt>'+'<dd>'+movie.director+'</dd>';
				storageData.innerHTML+='<h1>'+i+'</h1>';
				storageData.innerHTML+='<hr>';
				
			}
			

		} else {

			storageData.innerHTML = "the movie list is empty";
		}
	}
	function clearStorage() {
		localStorage.clear();
		displayMovie();
	};

</script>
</html>