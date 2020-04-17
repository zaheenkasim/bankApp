<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form action="Home" method="post">
				
					
					<div class="form-group">
						<label for="exampleInputEmail1">Account Number</label> <input
							type="number" name="Email" class="form-control" id="exampleInputEmail1">
					</div>
				
					<div class="form-group">
						<label for="exampleInputPassword">Password</label> 
						<input
							type="password" name="Password" class="form-control" id="exampleInputPassword">
					</div>
					
					
					<button type="submit" class="btn btn-primary">Login</button>
				  <a href="Register"><input type="button" value="Register" class="btn btn-primary btn-block btn-large"></a>
				</form>
			</div>
		</div>
	</div>


</body>
</html>