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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession ses = req.getSession();
		String report = (String) ses.getAttribute("report");				//EXTRACTING EXCEPTION STACK FROM SESSION VARIABLE 
		
		CustomerService customerservice = new CustomerService();
		String status = customerservice.sendReportMessage(report);			//CALLING SERVICE FUNCTIONALITY TO SEND BUG REPORT
		
		if (status == "SENT") {
			ses.setAttribute("check", "successreport");						//SETTING SESSION VARIBALE TO VERIFY SUCCESSFUL REPORT SUBMISSION
			RequestDispatcher rd = req.getRequestDispatcher("MyErrorPage.jsp");
			rd.forward(req, resp);
		}
		if (status == "NOT SENT") {
			ses.setAttribute("check", "failreport");						//SETTING SESSION VARIBALE TO VERIFY UNSUCCESSFUL REPORT SUBMISSION
			RequestDispatcher rd = req.getRequestDispatcher("MyErrorPage.jsp");
			rd.forward(req, resp);
		}
	}
}