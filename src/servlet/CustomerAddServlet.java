package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inventory.Customer;
import inventory.CustomerDAO;

public class CustomerAddServlet extends HttpServlet{

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException	{
		
		request.setCharacterEncoding("UTF-8");
		
		Customer c = new Customer();
		
		String companyName = request.getParameter("companyName");
		String contactName = request.getParameter("contactName");
		String contactNumber = request.getParameter("contactNumber");
		String email = request.getParameter("email");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String status = request.getParameter("status");
		
		
		c.setCompanyName(companyName);
		c.setContactName(contactName);
		c.setContactNumber(contactNumber);
		c.setEmail(email);
		c.setQuantity(quantity);
		c.setStatus(status);
		
		new CustomerDAO().add(c); 
		System.out.println("A new customer has been added");
		response.sendRedirect("/customerList");
	}
}
