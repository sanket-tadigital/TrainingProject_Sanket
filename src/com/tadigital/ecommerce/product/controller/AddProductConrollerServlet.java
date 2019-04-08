package com.tadigital.ecommerce.product.controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import com.tadigital.ecommerce.vendor.entity.Vendor;
import com.tadigital.ecommerce.product.entity.Product;
import com.tadigital.ecommerce.product.service.ProductService;

@WebServlet("/addProduct")

public class AddProductConrollerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String category=req.getParameter("f1");
		String subcategory=req.getParameter("f2");
		String name=req.getParameter("f3");
		long price=Long.parseLong(req.getParameter("f5"));
		String description=req.getParameter("f4");
		
		HttpSession ses = req.getSession();
		Vendor vendor=(Vendor)ses.getAttribute("VENDORDATA");
		int vendor_id=vendor.getid();
		
		
		/*String fileUploadDirectory = "products";
		String applicationPath = req.getServletContext().getRealPath("");
        String uploadFilePath = applicationPath + File.separator + fileUploadDirectory;
		Collection<Part> partCollection = req.getParts();*/
        
		Product product=new Product();
        product.setvenddor_id(vendor_id);
        product.setCategory(category);
        product.setSubCategory(subcategory);
        product.setName(name);
        product.setPrice(price);
        product.setDescription(description);
		ProductService productService = new ProductService();
		boolean status = productService.addnewProduct(product);//,partCollection, uploadFilePath);
		if(status) {
			ses.setAttribute("PRODUCTDATA", product);
			ses.setAttribute("check", "successaddproduct");
			RequestDispatcher rd=req.getRequestDispatcher("AddProduct.jsp");
			rd.forward(req, resp);
		} else {
			ses.setAttribute("check", "failaddproduct");
			RequestDispatcher rd=req.getRequestDispatcher("AddProduct.jsp");
			rd.forward(req, resp);
		}

	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
			RequestDispatcher rd=req.getRequestDispatcher("AddProduct.jsp");
			rd.forward(req, resp);
	}

}
	

