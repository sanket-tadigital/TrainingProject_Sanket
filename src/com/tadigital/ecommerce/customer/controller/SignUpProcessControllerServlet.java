package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;
import javax.swing.JOptionPane;
import javax.servlet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/register")

public class SignUpProcessControllerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		/*TAKING DATA FROM FORM*/
		String Name = req.getParameter("f1");
		String email = req.getParameter("f2");
		String password = req.getParameter("f3");
		
		/*SEPERATING FIRST NAME AND LAST NAME*/
		String array1[] = Name.split(" ");
		String fname;
		String lname = "";
		fname = array1[0];
		int n = array1.length;
		for (int i = 1; i < n; i++) {
			lname = lname + " " + array1[i];
		}
		
		/*SETTING VALUES IN CUSTOMER OBJECT*/
		Customer customer = new Customer();
		customer.setfname(fname);
		customer.setlname(lname);
		customer.setemail(email);
		customer.setpassword(password);
		
		CustomerService customerService = new CustomerService();
		boolean status = customerService.registerCustomer(customer);			//CALLING SERVICE TO REGISTER CUSTOMER
		String status2 = customerService.sendWelcomeMail(Name, email);			//CALLING SERVICE TO SEND MAIL FOR REGISTRATION
		
		if (status & status2 == "SENT") {

			HttpSession s = req.getSession();
			s.setAttribute("CUSTOMERDATA", customer);
			s.setAttribute("check", "successregister");							//SETTING SESSION VARIABLE TO CONFIRM SUCCESSFUL REGISTRATION
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		} else {
			HttpSession s = req.getSession();
			s.setAttribute("check", "failregsiter");							//SETTING SESSION VARIABLE TO CONFIRM FAILED REGISTRATION
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
	}
}
