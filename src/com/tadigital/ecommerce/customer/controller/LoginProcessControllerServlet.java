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

@WebServlet("/loginnn")
public class LoginProcessControllerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("f1");
		String password = req.getParameter("f2");
		String chk = req.getParameter("f3");
		Customer customer = new Customer();
		customer.setemail(email);
		customer.setpassword(password);
		
		CustomerService customerService = new CustomerService();
		boolean status = customerService.loginCustomer(customer);	
		if(status) {
			
			if(chk!=null)
			{
				long clt=System.currentTimeMillis();
				String cValue=email+ "-" +clt;
				//CREATE NEW COOKIE
				Cookie cookie = new Cookie("stayin", cValue);
				customer.setlastlogin(clt);
				cookie.setMaxAge(60*60*24*1);
				//ADD COOKIE TO RESPONSE
				resp.addCookie(cookie);
				customerService.CreateCookie(customer);
			}
			HttpSession ses = req.getSession();
			ses.setAttribute("CUSTOMERDATA", customer);
			ses.setAttribute("check","successlogin");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, resp);
		} else {
			HttpSession ses = req.getSession();
			ses.setAttribute("CUSTOMERDATA", customer);
			ses.setAttribute("check","faillogin");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		String cValue=(String)session.getAttribute("COOKIEVALUE");
		String[] data = cValue.split("-");
		String email = data[0];
		long lastlogin = Long.parseLong(data[1]);
		Customer customer=new Customer();
		customer.setemail(email);
		customer.setlastlogin(lastlogin);
		CustomerService customerService = new CustomerService();
		boolean status = customerService.loginCookie(customer);	
		if(status) {
			HttpSession ses = req.getSession();
			ses.setAttribute("CUSTOMERDATA", customer);
			ses.setAttribute("check","successlogin");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, resp);
		} else {
			HttpSession ses = req.getSession();
			ses.setAttribute("CUSTOMERDATA", customer);
			ses.setAttribute("check","faillogin");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
	}
}

