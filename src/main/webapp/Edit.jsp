<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style>



h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}



</style>



<script>

$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();



</script>





</head>




<body>
	<h2></h2>			
		<form action="Edit" method="post">
			<input type="text" name="label" 
                value="<%="${contact.Name}"%>">
			</form>
			<section>
  <!--for demo wrap-->
  <h1>Customer</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
        
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      
      <c:forEach var="customer" items="${contact}" varStatus="status">
			<tr>
				
				<td>${customer.Accountnum}</td>
				<td>${customer.Name}</td>
				<td>${customer.Email}</td>
				<td>${customer.Password}</td>
				<td>${customer.Aadharnum}</td>
				<td>${customer.Type}</td>
				<td>${customer.Money}</td>
			
		
				
				

			</tr>
		</c:forEach>
        
         
      </tbody>
    </table>
  </div>
</section>

	
			<div style="display: grid; align-content: center;justify-content: center;">
			
			<div style="display: grid; align-content: center;justify-content: center;">
			<div><a href="Home"><button>back</button></a></div>
			</div>

			
			
			

</body>
</html> --%>









<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
 <% 
 String scard="";
 String xyz= request.getParameter("abc");
 %>
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/abc"
     user="root"  password="zaheen"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from user where AccountNum='"+xyz+"'";
</sql:query>
 
<form action="Edit" method="post">

<c:forEach var="row" items="${result.rows}">

  <div style="font-size: 0.5 cm">
 Account No:	<input type="text" name="Accountnum"  value="${row.AccountNum}" readonly="readonly">
 	<br>
Name:	<input type="text" name="Name" value="${row.Name} ">
	<br>
Email:	<input type="text" name="Email" value="${row.Email}">
	<br>
Password:	<input name="Password" type="text" value="${row.Password }">
	<br>	
AadharNum:	<input name="Aadharnum" type="text" value="${row.AadharNum }">
	<br>
Acc Type:	<input  name="Type" tye="text" value="${row.Type }">
	<br>
	
Balance:	<input type="text" name="Money" value="${row.Savings}" readonly="readonly">

</div>
</c:forEach>
<button  type="submit" value="done">Done</button>
 </form>
</body>
</html>