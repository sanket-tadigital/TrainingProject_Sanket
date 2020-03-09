package com.tadigital.ecommerce.customer.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerDao extends Dao {

	/* FOR LOGIN AUTHENTICATION */
	public boolean selectCustomerByEmailAndPassword(Customer customer) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM customer_info WHERE email = '" + customer.getemail() + "' AND password = '"
					+ customer.getpassword() + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				status = true;
				customer.setid(rs.getInt(1));
				customer.setfname(rs.getString(2));
				customer.setlname(rs.getString(3));
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}

		return status;
	}

	/* Create New Cookie */
	public boolean updatelastlogin(Customer customer) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);

		try {
			String sql = "UPDATE customer_info SET lastlogin='" + customer.getlastlogin() + "' WHERE email='"
					+ customer.getemail() + "'";
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

	/* Login via Cookie */
	public boolean selectCustomerByEmailAndLogintime(Customer customer) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM customer_info WHERE email = '" + customer.getemail() + "' AND lastlogin = '"
					+ customer.getlastlogin() + "'";
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				status = true;
				customer.setid(rs.getInt(1));
				customer.setfname(rs.getString(2));
				customer.setlname(rs.getString(3));
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}

		return status;
	}

	/* FOR REGISTRATION OF NEW USER */
	public boolean insertCustomer(Customer customer) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);

		try {
			String sql = "INSERT INTO customer_info(cust_fname, cust_lname,email, password) " + "VALUES('"
					+ customer.getfname() + "', '" + customer.getlname() + "', '" + customer.getemail() + "', '"
					+ customer.getpassword() + "')";

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

	/* FOR ACCOUNT DEATILS UPDATE */
	public boolean updateCustomer(Customer customer) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);

		try {
			String sql = "UPDATE customer_info SET gender='" + customer.getgender() + "', address='"
					+ customer.getaddress() + "', zip='" + customer.getzip() + "', contact='" + customer.getcontact()
					+ "', city='" + customer.getcity() + "', country='" + customer.getcountry() + "', state='"
					+ customer.getstate() + "' WHERE email='" + customer.getemail() + "'";

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

	/* FOR PASSWORD CHANGE */
	public boolean updatePassword(Customer customer, String oldpass) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		try {
			String sql = "UPDATE customer_info SET password='" + customer.getpassword() + "' WHERE password='" + oldpass
					+ "' AND email='" + customer.getemail() + "'";
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
