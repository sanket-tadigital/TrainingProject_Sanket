package com.tadigital.ecommerce.product.service;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Properties;
import javax.servlet.http.Part;

import com.tadigital.ecommerce.product.entity.Product;
import com.tadigital.ecommerce.product.dao.ProductDao;



public class ProductService {
	
	public boolean addnewProduct(Product product) {
		boolean status=false;
		/*String fileName = processFileUpload(partCollection, uploadFilePath);
		product.setPicture1(fileName);*/
		ProductDao productDao=new ProductDao();
		status = productDao.insertProduct(product);
		return status;
	}
	

	private String processFileUpload(Collection<Part> partsCollection, String uploadFilePath) {
		String fileName = "";
		
		for (Part part : partsCollection) {
        	String contentDisp = part.getHeader("content-disposition");
            String[] items = contentDisp.split(";");
            
            for (String item : items) {
                if (item.trim().startsWith("filename")) {
                    fileName = item.substring(item.indexOf("=") + 2, item.length()-1);
                    
                    try {
						part.write(uploadFilePath + File.separator + fileName);
					} catch (IOException ioe) {
						ioe.printStackTrace();
					}
                }
            }          
        }
		
		return fileName;
	}
	
	public ArrayList<Product> showProduct(int vendor_id) {
		
		ProductDao productdao= new ProductDao();
		ArrayList<Product> productList = productdao.selectAllProducts(vendor_id);
		
		return productList;
	}
}
