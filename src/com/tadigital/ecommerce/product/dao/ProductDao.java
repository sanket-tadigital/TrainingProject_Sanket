package com.tadigital.ecommerce.product.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Connection;

import com.tadigital.ecommerce.product.entity.Product;

public class ProductDao extends Dao {

	public ArrayList<Product> selectAllProducts(int vendor_id) {
		ArrayList<Product> productList = new ArrayList<>();

		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM product_info WHERE vendor_id='" + vendor_id + "'";

			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt(1));
				product.setCategory(rs.getString(3));
				product.setSubCategory(rs.getString(4));
				product.setName(rs.getString(5));
				product.setDescription(rs.getString(6));
				product.setPrice(rs.getLong(7));
				product.setPicture1(rs.getString(8));
				product.setPicture2(rs.getString(9));
				product.setPicture3(rs.getString(10));
				product.setPicture4(rs.getString(11));
				product.setPicture5(rs.getString(12));

				productList.add(product);
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}

		return productList;
	}

	public boolean insertProduct(Product product) {
		boolean status = false;

		Connection con = openConnection();
		Statement stmt = openStatement(con);

		try {
			String sql = "INSERT INTO product_info(vendor_id,category,sub_category,name,description,price)"
					+ "VALUES('" + product.getvendor_id() + "', '" + product.getCategory() + "', '"
					+ product.getSubCategory() + "', '" + product.getName() + "', '" + product.getDescription() + "', '"
					+ product.getPrice() + "')"; //"', '" + product.getPicture1() 

			int rows = stmt.executeUpdate(sql);
			if (rows != 0) {
				status = true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}
}