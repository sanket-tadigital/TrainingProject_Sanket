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

@WebServlet("/passwordchange")
public class PasswordChangeControllerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String oldpass=(String)req.getParameter("t1");
		String newpass=(String)req.getParameter("t2");
		String passretype=(String)req.getParameter("t3");
		HttpSession ses=req.getSession();
		Customer c1=(Customer)ses.getAttribute("CUSTOMERDATA");
		String email=c1.getemail();
		Customer customer=new Customer();
		System.out.println(oldpass+" "+newpass+" "+passretype);
		if(newpass.equals(passretype))
		{
			customer.setpassword(newpass);
			customer.setemail(email);
			CustomerService customerService = new CustomerService();
			boolean status = customerService.ChangePassword(customer,oldpass);	
			String status2=customerService.sendSecurityMail(c1.getfname(),c1.getemail());
			if(status && status2=="SENT")
			{
				
				ses.setAttribute("check","changesuccess");
				RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
				rd.forward(req, resp);
			}
			else
			{
				
				ses.setAttribute("check","changefail");
				RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
				rd.forward(req, resp);
			}
		}
		else
		{
			
			ses.setAttribute("check","changefail");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, resp);
		}
		
	}
}

