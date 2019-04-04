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

@WebServlet("/report")
public class SendEmailControllerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			HttpSession ses=req.getSession();
			String report=(String)ses.getAttribute("report");
			CustomerService customerservice=new CustomerService();
			String status=customerservice.sendReportMessage(report);
			if(status=="SENT")
			{
				ses.setAttribute("check","successreport");
				RequestDispatcher rd = req.getRequestDispatcher("MyErrorPage.jsp");
				rd.forward(req, resp);
			}
			if(status=="NOT SENT")
			{
				ses.setAttribute("check","failreport");
				RequestDispatcher rd = req.getRequestDispatcher("MyErrorPage.jsp");
				rd.forward(req, resp);
			}
	}
}