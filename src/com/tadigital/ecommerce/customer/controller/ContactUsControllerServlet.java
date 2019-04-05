package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/contact")
public class ContactUsControllerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TAKING DATA FROM FORM
		String data[] = new String[5];
		data[0] = req.getParameter("f1");
		data[1] = req.getParameter("f2");
		data[2] = req.getParameter("f3");
		data[3] = req.getParameter("f4");
		data[4] = req.getParameter("f5");

		// CALLING SERVICE FOR SENDING MESSAGE
		CustomerService customerService = new CustomerService();
		String status = customerService.SendContactMessage(data);

		// CHECKING STATUS FOR SENT STATUS
		if (status.equals("NOT SENT")) {
			HttpSession session = req.getSession();
			session.setAttribute("check", "failmsgsent");
			RequestDispatcher rd = req.getRequestDispatcher("Contact.jsp");
			rd.forward(req, resp);
		} else {
			HttpSession session = req.getSession();
			session.setAttribute("check", "successmsgsent");
			RequestDispatcher rd = req.getRequestDispatcher("Contact.jsp");
			rd.forward(req, resp);
		}
	}
}
