package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inventory.Customer;
import inventory.CustomerDAO;

public class CustomerGetServlet extends HttpServlet{

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String userName = (String) request.getSession().getAttribute("userName");
        if (null == userName) {
            response.sendRedirect("login.html");
            return;
        }
		
		int id = Integer.parseInt(request.getParameter("id"));
		Customer customer = new Customer();
		customer = new CustomerDAO().get(id);
		request.setAttribute("customer", customer);
		request.setAttribute("userName", userName);
        request.getRequestDispatcher("editCustomer.jsp").forward(request, response);
		
	}
}
