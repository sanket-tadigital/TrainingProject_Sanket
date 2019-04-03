package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/updateprofile")
public class UpdateProfileControllerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String gender = req.getParameter("f3");
		String address = req.getParameter("f4");
		String city = req.getParameter("f5");
		String zip = req.getParameter("f6");
		String state = req.getParameter("f7");
		String country = req.getParameter("f8");
		String contact = req.getParameter("f9");
		Customer customer = new Customer();
		customer.setgender(gender);
		customer.setaddress(address);
		customer.setcity(city);
		customer.setzip(zip);
		customer.setstate(state);
		customer.setcountry(country);
		customer.setcontact(contact);
		CustomerService customerService = new CustomerService();
		boolean status = customerService.UpdateProfile(customer);	
		if(status) {
			HttpSession ses = req.getSession();
			ses.setAttribute("CUSTOMERDATA", customer);
			ses.setAttribute("check","successupdate");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, resp);
		} else {
			HttpSession ses = req.getSession();
			ses.setAttribute("CUSTOMERDATA", customer);
			ses.setAttribute("check","failupdate");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, resp);
		}
		}
}
