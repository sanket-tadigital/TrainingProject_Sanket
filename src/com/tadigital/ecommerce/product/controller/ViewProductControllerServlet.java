package com.tadigital.ecommerce.product.controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.vendor.entity.Vendor;
import com.tadigital.ecommerce.product.entity.Product;
import com.tadigital.ecommerce.product.service.ProductService;

@WebServlet("/viewProduct")
public class ViewProductControllerServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession ses = req.getSession();
		Vendor vendor=(Vendor)ses.getAttribute("VENDORDATA");
		int vendor_id=vendor.getid();
		ProductService productService = new ProductService();
		ArrayList<Product> productList = productService.showProduct(vendor_id);
		ses.setAttribute("PRODUCTLIST", productList);
		RequestDispatcher rd=req.getRequestDispatcher("VendorProducts.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			
	}
}
