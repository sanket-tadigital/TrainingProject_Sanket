package com.tadigital.ecommerce.vendor.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.vendor.entity.Vendor;

public class VendorDao extends Dao {
	/* FOR LOGIN AUTHENTICATION */
	public boolean selectVendorByEmailAndPassword(Vendor vendor) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM vendor_info WHERE email = '" + vendor.getemail() + "' AND password = '"
					+ vendor.getpassword() + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				status = true;
				vendor.setid(rs.getInt(1));
				vendor.setname(rs.getString(2));
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
	public boolean updatelastlogin(Vendor vendor) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);

		try {
			String sql = "UPDATE vendor_info SET lastlogin='" + vendor.getlastlogin() + "' WHERE email='"
					+ vendor.getemail() + "'";
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
	public boolean selectVendorByEmailAndLogintime(Vendor vendor) {
		boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM vendor_info WHERE email = '" + vendor.getemail() + "' AND lastlogin = '"
					+ vendor.getlastlogin() + "'";
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				status = true;
				vendor.setid(rs.getInt(1));
				vendor.setname(rs.getString(2));
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
}
