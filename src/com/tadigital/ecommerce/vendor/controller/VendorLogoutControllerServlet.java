package com.tadigital.ecommerce.vendor.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/vlogout")
public class VendorLogoutControllerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.invalidate();												//INVALIDATING CURRENT SESSION
		
		Cookie cookie = new Cookie("vstayin", "killshot");					//DELETING COOKIE TO LOGOUT 'STAY SIGNED IN' USERS
		cookie.setMaxAge(0);
		resp.addCookie(cookie);
		
		
		RequestDispatcher rd = req.getRequestDispatcher("HomePage.jsp");	//REDIRECTING TO HOME PAGE
		rd.forward(req, resp);
	}
}
