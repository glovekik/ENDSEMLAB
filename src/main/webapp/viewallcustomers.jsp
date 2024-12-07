<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 

<head> 
<title>JPA Mapping</title>
<style>

body
{
	background-color: lightgrey;
}
.button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date],input[type=datetime-local]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}
</style>
</head> 

<body>

<h2 align="center">SpringBoot JPA Relational Mapping</h2>

<a href="/">Home</a>&nbsp;&nbsp;
<a href="viewallcustomers">View Customers</a>&nbsp;&nbsp;


<br><br><br>

<table align=center  border=2 style="text-align: center">
  
<tr style="font-weight: bold;"> 
<td>CUSTOMER ID</td> 
<td>NAME</td> 
<td>EMAIL</td> 
<td>PHONE NUMBER</td> 
<td>ADDRESS</td> 
<td>DATE OF BIRTH</td> 

</tr> 
 
<c:forEach items="${customerdata}" var="customer"> 

<tr> 

<td><c:out value="${customer.id}" /></td> 
<td><c:out value="${customer.name}" /></td> 
<td><c:out value="${customer.email}" /></td> 
<td><c:out value="${customer.phno}" /></td> 
<td><c:out value="${customer.address}" /></td> 
<td><c:out value="${customer.dob}" /></td>
 
</tr> 

</c:forEach> 
 
</table> 
 
</body> 
</html>