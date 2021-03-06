<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
	<b>User: ${userName}<b> 
	<form method="post" action="/customerEdit">
		<table align='center' border='1' cellspacing='0'>
			<tr>
				<td>Id</td>
				<td>CompanyName</td>
				<td>ContactName</td>
				<td>ContactNumber</td>
				<td>Email</td>
				<td>Quantity</td>
				<td>Status</td>
			</tr>
			<tr><td>${customer.id}</td>
			<input name="id" type="text" value="${customer.id}" maxlength="6" size="6" hidden/>
			<td><input type="text" name="companyName" value="${customer.companyName}" maxlength="12" size="12" requried/></td>
			<td><input type="text" name="contactName" value="${customer.contactName}" maxlength="12" size="12" requried/></td>
			<td><input type="text" name="contactNumber" value="${customer.contactNumber}" maxlength="12" size="12" requried/></td>
			<td><input type="email" name="email" value="${customer.email}" maxlength="12" size="12" requried</td>
			<td><input type="number" name="quantity" value="${customer.quantity}" requried/></td>
			<td><select name="status" requried/>
					<option value="delivered" ${customer.status == "delivered" ? 'selected == "selected"' : ''}> Delivered</option>
					<option value="unpaid" ${customer.status == "unpaid" ? 'selected == "selected"' : ''}> Unpaid</option>
					<option value="unconfirmed" ${customer.status == "unconfirmed" ? 'selected == "selected"' : ''}> Unconfirmed</option>
					<option value="confirmed" ${customer.status == "confirmed" ? 'selected == "selected"' : ''}> Confirmed</option>
					<option value="unconfirmed" ${customer.status == "delivered" ? 'selected == "selected"' : ''}> Unconfirmed</option>							
					<option value="other" ${customer.status == "other" ? 'selected == "selected"' : ''}> Other</option>					
			</select>
			</td>
			</tr>
			
		</table>
		<input type="submit" value="Update">
	</form>

	<form action="/productList">
    		<input type="submit" value="Go ProductList" />
	</form>
	<form action="/customerList">
	    	<input type="submit" value="Go CustomerList" />
	</form>

</body>