
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple Blog</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btt').click(function(){
			var data1 = $("form").serialize();
			$.ajax({
				type:'POST',
				data: data1,
				url: 'MyBlog',
				success: function(data1) {
					
				}
				
			});
		});
	});
	
	
</script>

</head>

<body>

<div id="stylesdiv" style="width: 960px; margin: auto;">
	<fieldset>
		<form name="cont">		
			<h2>Title: <input type="text" name="title"><br><br>		
			Content: <br><textarea rows="3" cols="128" name="post"></textarea><br><br>		
			<a href="MyBlog"><input type="button" value="Sent" id="btt"></a></h2>
		</form>		
	</fieldset>
	
<br>
	<fieldset>	
	   <%= request.getAttribute("result") %>   
	</fieldset>
</div>  
      
</body>
</html>






