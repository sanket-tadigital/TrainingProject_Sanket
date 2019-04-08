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

import com.tadigital.ecommerce.vendor.entity.Vendor;
import com.tadigital.ecommerce.vendor.service.VendorService;

@WebServlet("/vlogin")
public class VendorLoginControllerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("f1");
		String password = req.getParameter("f2");
		String chk = req.getParameter("f3");

		Vendor vendor = new Vendor();
		vendor.setemail(email);
		vendor.setpassword(password);
		
		HttpSession ses = req.getSession();
		VendorService vendorService = new VendorService();
		boolean status = vendorService.loginVendor(vendor);

		if (status) {
			if (chk != null) {
				long clt = System.currentTimeMillis();
				String cValue = email + "-" + clt;
				// CREATE NEW COOKIE
				Cookie cookie = new Cookie("vstayin", cValue);
				vendor.setlastlogin(clt);
				cookie.setMaxAge(60 * 60 * 24 * 1);
				// ADD COOKIE TO RESPONSE
				resp.addCookie(cookie);
				vendorService.CreateCookie(vendor);
				ses.setAttribute("VENDORDATA", vendor);
			}
			
			ses.setAttribute("VENDORDATA", vendor);
			ses.setAttribute("check", "successvlogin");
			ses.setAttribute("login", "VYes");
			RequestDispatcher rd = req.getRequestDispatcher("DashBoard.jsp");
			rd.forward(req, resp);
		} else {
			
			ses.setAttribute("VENDORDATA", vendor);
			ses.setAttribute("check", "failvlogin");
			RequestDispatcher rd = req.getRequestDispatcher("Vlogin.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String cValue = (String) session.getAttribute("VCOOKIEVALUE");
		String[] data = cValue.split("-");
		String email = data[0];
		long lastlogin = Long.parseLong(data[1]);
		Vendor vendor = new Vendor();
		vendor.setemail(email);
		vendor.setlastlogin(lastlogin);
		VendorService vendorService = new VendorService();
		boolean status = vendorService.loginCookie(vendor);
		
		if (status) {
			HttpSession ses = req.getSession();
			ses.setAttribute("VENDORDATA", vendor);
			ses.setAttribute("check", "successvlogin");
			ses.setAttribute("login", "VYes");
			RequestDispatcher rd = req.getRequestDispatcher("HomePage.jsp");
			rd.forward(req, resp);
		} else {
			resp.sendRedirect("vlogout");
		}
	}
}
