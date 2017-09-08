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
                        <a href="<%=request.getContextPath() %>/logout">SignOut</a>
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
                        
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/patronHome">Home</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/patronSearchBook">Search Book</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/patronSearchBook">Issue Book</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/patronReturnSearch">Return Book</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/welcome">Signout</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

    </div>
    <!-- /#wrapper -->
</div>
		
            <div class="col-md-9"  style="padding-top:120px;">
           <div class="row">
            <div class="col-md-3"></div>
                <div id="tab" class="table-responsive">
                	<form id="form1" style="padding-top:100px;" method="POST" action="<%=request.getContextPath() %>/return">
						        <table class="table table-striped">
						            <thead>
						            <tr>
						                <th>ISBN</th>
						                <th>Title</th>
						                <th>Return</th>
						            </tr>
						            </thead>
						          <tbody>
						   			 <c:forEach var="bs" items="${bookstatus}">
										<tr>
									    <td>${bs.book.isbn}</td>
									    <td>${bs.book.title}</td>
										<td><input type="checkbox" value="${bs.book.isbn}"></td>
										<td><a href="<%=request.getContextPath() %>/renewbook/${bs.book.isbn}" class="btn btn-info" role="button">Renew</a></td>
										</tr>
					 				</c:forEach>  
								</tbody>
				        </table>
				        <input type="hidden" name="isbnArray" id="getListOfISBNArray"/>
				        <br/>
				        <br/>
				        <div class="col-md-8 col-md-offset-4">
				        	<input class="col-md-6" type="submit" value="Return" id="getListOfISBN"/></div>
				    	</div>
				    </form>
                 </div>
           </div>  
           <div class="col-md-1"></div>          
       </div>
       
       </div>
       
       <script>
       	function func(){
       		//document.getElementById('myForm').action = "/LibrarySystem/book/return/"+document.getElementById('isbn').value;
       		//alert(document.getElementById('myForm').action);
       	}
       	$(document).ready(function() {
       		$('#getListOfISBN').on('click', function(event) {
       	        var checkboxValues = [];
       	        $('input[type="checkbox"]:checked').each(function(index, value) {
       	            checkboxValues.push($(value).val());
       	        });
       	        $('#output').html(checkboxValues.join(','));
       	     	$('#getListOfISBNArray').val(checkboxValues);
       	    });
       	});
       </script>
       
	</body>
</html>