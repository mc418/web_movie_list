<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Movie Center</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    </head>
    <body>
        <div align="center" style="margin:50px 30px 10px 30px">
            <h1>Welcome to Movie Center</h1>
        </div>
        <hr style="width: 1400px; color: black; height: 1px; background-color:black;" >
        <form action="viewMovie.htm" method="GET">
            <br><br><br><br><br><br><br><br>
            <div style="margin:30px 600px 30px 600px">
                <button type="submit" class="btn btn-block btn-primary" style="height:60px" >Browse Movies</button>
        </div>
        </form>
        <form action="addMovie.htm" method="GET">
        <div style="margin:30px 600px 30px 600px">
            <button type="submit" class="btn btn-block btn-primary" style="height:60px">Add Movies</button>
        </div>
        </form>


    </body>
</html>
