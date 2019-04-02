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

public class SignUpProcessControllerServlet extends HttpServlet{

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Name = req.getParameter("f1");
		String email = req.getParameter("f2");
		String password = req.getParameter("f3");
		String array1[]=Name.split(" ");
    	String fname;
    	String lname="";
    	fname=array1[0];
    	//lname=array1[1];
		int n=array1.length;
		for(int i=1;i<n;i++)
		{
			lname=lname+" "+array1[i];
		}
		Customer customer = new Customer();
		customer.setfname(fname);
		customer.setlname(lname);
		customer.setemail(email);
		customer.setpassword(password);
		CustomerService customerService = new CustomerService();
		boolean status = customerService.registerCustomer(customer);
		String status2=customerService.sendWelcomeMail(Name, email);
		if(status & status2=="SENT") {
			
			HttpSession s=req.getSession();
			s.setAttribute("CUSTOMERDATA", customer);
			s.setAttribute("check",1);
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		} else {
			HttpSession s=req.getSession();
			s.setAttribute("check",-1);
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
	}
}

	