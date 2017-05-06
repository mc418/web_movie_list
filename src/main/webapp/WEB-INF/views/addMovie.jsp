<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSON TEST</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
<br/><br/><br/><br/><br/>

  <form class="form-horizontal" action="index.htm">
    <div class="form-group">
      <label for="title" class="col-sm-2 control-label col-sm-offset-2 ">Title</label>
      <div class="col-md-4">
         <input type="text" id="title" class="form-control"/>
      </div>
    </div>
    <div class="form-group">
      <label for="yearOfRelease" class="col-sm-2 control-label col-sm-offset-2">  Year of Release</label>
      <div class="col-md-4">
        <input type="text"  id="yearOfRelease" class="form-control"/>
      </div>
    </div>
    <div class="form-group">
        <label for="director" class="col-sm-2 control-label col-sm-offset-2"> Director</label>
      <div class="col-md-4">
             <input type="text"id="director" class="form-control"/>
      </div>
    </div>
    <div class="form-group">
      <label for="poster" class="col-sm-2 control-label col-sm-offset-2"> URL of Poster</label>
      <div class="col-md-4">
            <input type="text" id="poster" class="form-control"/>
      </div>

    </div>
    <div class="form-group">

      <div class="col-md-4 col-md-offset-4">
            <input type="submit"class="btn btn-primary form-control" value="Back"/>
      </div>

    </div>


  </form>
   <div class="col-md-4 col-md-offset-4">
            <input type="submit"class="btn btn-primary form-control" value="Add" onclick="addMovie()"/>
      </div>
  


</body>
<script type="text/javascript"  >
function addMovie(){
	
	  var title=document.getElementById("title").value;
	  var yearOfRelease=document.getElementById('yearOfRelease').value;
	  var director=document.getElementById('director').value;
	  var poster=document.getElementById('poster').value;
	  
	  var Movie=new Object();
	  Movie.title=title;
	  Movie.yearOfRelease=yearOfRelease;
	  Movie.director=director;
	  Movie.poster=poster;
	   var movieJson=JSON.stringify(Movie);
	  
	  

	  if(localStorage.getItem("MovieList")){
		var MovieList=JSON.parse(localStorage.getItem("MovieList"));
		MovieList.push(Movie);
		var listJson=JSON.stringify(MovieList);
		localStorage.setItem("MovieList",listJson);
		
		window.alert ("exist movielist");

	  }
	  else{
	    var MovieList= new Array();
	    MovieList.push(Movie);
	    var listJson=JSON.stringify(MovieList);
	    localStorage.setItem("MovieList",listJson);
	    window.alert ("add succeed");
	  }
	}

</script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>
