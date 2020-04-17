<%@page import="java.util.Random"%>
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

				<form method="post" action="Register">
				<%
                     Random random=new Random();
                    int num=random.nextInt();
                  %>
				
				<div class ="form-group">
				<label for="exampleInputAccountnum"></label> 
                <input type="hidden" id="exampleInputAccountnum" name="Accountnum" value="<%=num %>">
				</div>
					<div class="form-group">
						<label for="exampleInputName">Name</label> 
						<input
							type="text" name="Name" class="form-control" id="exampleInputName">
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" name="Email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp"> <small id="emailHelp"
							class="form-text text-muted">We'll never share your email
							with anyone else.</small>
					</div>
				
					<div class="form-group">
						<label for="exampleInputPassword">Password</label> 
						<input
							type="password" name="Password" class="form-control" id="exampleInputPassword">
					</div>
					
					<div class="form-group">
						<label for="exampleInputAadharnum">AadharNumber</label> 
						<input
							type="text" name="Aadharnum" class="form-control" id="exampleInputAadharnum">
					</div>
					<div class="form-group">
						<label for="exampleInputType">AccountType</label>
                         <input type="text" name="Type" list="Type" class="form-control" id="exampleInputType"/>
                          <datalist id="Type">
                             <option value="Saving">
                             <option value="Current">
                          </datalist>
					</div>
					
					
					<button type="submit" class="btn btn-primary">Register</button>
				</form>
			</div>
		</div>
	</div>


</body>
</html>