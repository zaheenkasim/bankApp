<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<style>



body {
 background-image: url("abc.jpg");
 background-color: #cccccc;
}




.button {
  display: inline-block;
  border-radius: 4px;
  background-color: black;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body>
			<form action="Debit">
			<input type="text" name="Abc" value="<%=request.getParameter("Email") %>" class="form-control" id="exampleInputPassword1" readonly="readonly">
				

			<div style="background-image: url('abc.jpg');"></div>
			<div style="display: grid; justify-content: center; margin-top: 1cm">
			
			<a href="Debit"><button type="submit" class="button"><span>Send Money </span></button></a>
			<br>
			
			
			</div>

			</form>
			<a href="Balance"><button class="button"><span>Balance</span></button></a>
			<br>
</body>
</html>