<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<spring:url value="/resources/temp.css" var="temp" />
		<link href="${temp}" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<script src="http://code.jquery.com/jquery-1.10.2.js"
			type="text/javascript"></script>
		<style type="text/css">
		@import "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css";
		@import "https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css";
		</style>
		<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title></title>
	</head>
	<body>
	    <div class="container">
        	<div class="row">
        	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
            	<h4 style="color:white; padding-top:6px; padding-left:20px;">Library Management System</h4>
            	
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse pull-right" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="<%=request.getContextPath() %>/libraryHome">Home</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath() %>/logout">Signout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
    </nav>
    </div>
        <div class="row">
        <div class="col-md-3">
		

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Start Bootstrap
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/libraryHome">Dashboard</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/newBook">Add Book - Google API</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/addNewBookManually">Add Book</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/deleteSearch">Delete Book</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/updateBook">Search/Update Book</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/logout">Signout</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

    </div>
    <!-- /#wrapper -->
</div>
		
            <div class="col-md-7"  style="padding-top:120px;">
            <div class="row">
            <div class="col-md-1"></div>
            <label>Allocated Time: "${appTime}"</label>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 style="text-align:center">Search Book Here</h3>
                    </div>
                    <div class="panel-body">
                        <form action='/LibrarySystem/searchBookDetail' method="post" class="form-horizontal">
                            <div class="row">
                            	<div class="col-md-1"></div>
                            	<div class="col-md-10">
                            		<label for="ex1">Add Book By ISBN - Google API: </label>
							  		<input class="form-control" type="text" id="isbn1" name="isbn1" placeholder="Enter ISBN here" required />
                            	</div>
							</div>
							<br>
                            <div style="padding-left:40%">
                                <button type="button" class="btn btn-primary" id="getData">Search Book</button>
                            </div>
                        </form>
                        
                    </div>
                    
                 </div>
                 </div>
                 <div class="row">
                 <div id="tab" hidden="true">
                  <table class="table" border=2px id="tab1">
             <tr>
             	<th>Author</th>
             	<th>Title</th>
             	<th>Call Number</th>
             	<th>Publisher</th>
             	<th>Year of Publication</th>
             	<th>Cover Image</th>
             </tr>
             <tr>
             	
             </tr>
          		</table>
         		</div>
         		<div class="col-md-1"></div>
           </div>
           </div>  
           <div class="col-md-1"></div>          
       </div>
       <div class="row"> 
       		<div class="col-md-2"></div>
       		<div class="col-md-7">
             <form action="/LibrarySystem/newBookAPI" method="post" id="form1" hidden=true; enctype="multipart/form-data">
	            <div class="row">
	            	<div class="col-md-2"></div>
	            	<div class="col-md-3">
	            	<div class="form-group">
					    <label>Number Of Copies</label>
					    <input type="number" class="form-control" name="numberOfCopies" placeholder="Enter Number Of Copies">
					  </div>
	            	</div>
	            	<div class="col-md-3">
	            	<div class="form-group">
					    <label>Location In Library</label>
					    <input type="text" class="form-control" name="location" placeholder="Enter Location In Library">
					  </div>
	            	</div>
	            	<div class="col-md-3">
	            	<div class="form-group">
					    <label>Keywords</label>
					    <input type="text" class="form-control" name="keywords" placeholder="Enter Keywords">
					  </div>
	            	</div>
	            </div><br>
	            <input type="hidden" name="isbn" id="isbn">
	            <input type="hidden" name="author" id="author">
		  		<input type="hidden" name="title" id="title">
		  		<input type="hidden" name="yearOfPublication" id="yearOfPublication">
		  		<input type="hidden" name="publisher" id="publisher">
		  		<input type="hidden" name="image_location" id="image_location">
	            <div class="row">
		            <div style="padding-left:365px;">
		            	<input type="submit" class="btn btn-primary" value="Add Book to Library">
		            </div>
	            </div>
            </form>
         </div>
         <div class="col-md-1"></div>
         </div>
       </div>
	</body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script>
	$("#getData").click(function(){
			var isbnVal = document.getElementById('isbn1').value;
			//alert("isbnVal: "+isbnVal);
			var url = "https://www.googleapis.com/books/v1/volumes?q=isbn:"+isbnVal;
			//alert(url)
	��������$.get(url, function(data, status){
	�����������//�alert("Data: " + JSON.stringify(data, null, 2) + "\nStatus: " + status);
				document.getElementById("tab").hidden=false;
				document.getElementById("form1").hidden=false;
			 var table = document.getElementById("tab1");
			    var row = table.insertRow(-1);
			    var cell1 = row.insertCell(0);
			    var cell2 = row.insertCell(1);
			    var cell3 = row.insertCell(2);
			    var cell4 = row.insertCell(3);
			    var cell5 = row.insertCell(4);
			    var cell6 = row.insertCell(5);
	    
	    
	    console.log("image: "+data.items[0].volumeInfo.imageLinks.thumbnail);
	    cell1.innerHTML = data.items[0].volumeInfo.authors.toString();
	    cell2.innerHTML = data.items[0].volumeInfo.title;
	    cell3.innerHTML = data.items[0].volumeInfo.publisher;
	    cell4.innerHTML = data.items[0].volumeInfo.publisher;
	    cell5.innerHTML = data.items[0].volumeInfo.publishedDate;
	    cell6.innerHTML = data.items[0].volumeInfo.imageLinks.thumbnail;
	    
	    document.getElementById("isbn").value = isbnVal;
	    document.getElementById("author").value = data.items[0].volumeInfo.authors.toString();
	    document.getElementById("title").value = data.items[0].volumeInfo.title;
	    document.getElementById("publisher").value = data.items[0].volumeInfo.publisher;
	    document.getElementById("yearOfPublication").value = data.items[0].volumeInfo.publishedDate;
	    document.getElementById("image_location").value = data.items[0].volumeInfo.imageLinks.thumbnail;
	��������});
	����});
	
	</script>
</html>