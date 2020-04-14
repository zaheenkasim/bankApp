<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii





  <c:forEach var="packagee" items="${CustomerList}" varStatus="status">
  
 <div>${packagee.Accountnum}</div> 
  
  
  
  </c:forEach>
  
  
  
  
  
 <div class="tbl-content">
  
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      
      <c:forEach var="packagee" items="${CustomerList}" varStatus="status">
			<tr>
				
				<td>${packagee.Accountnum}</td>
				
				<td><a href="dispatch?packageId=${packagee.packageId}"><input type="button" value="dispatch"></a></td>
				<!-- <td><a href="dispatch"><input type="text" name="inputPackage" value="dispatch"></a>
					?packageId=${packagee.packageId} -->
				<!-- <a href="package"><input type="button" value="use"></a></td> -->
	
			</tr>
		</c:forEach>
        
         
      </tbody>
    </table> 
  </div> 
</body>
</html>