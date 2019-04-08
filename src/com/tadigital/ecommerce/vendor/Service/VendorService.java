package com.tadigital.ecommerce.vendor.service;

import com.tadigital.ecommerce.vendor.dao.VendorDao;
import com.tadigital.ecommerce.vendor.entity.Vendor;

public class VendorService {
	VendorDao vendorDao = new VendorDao();

	// CALLING DAO FUNCTION FOR LOGIN AUTHENTICATION
	public boolean loginVendor(Vendor vendor) {
		boolean status = vendorDao.selectVendorByEmailAndPassword(vendor);
		return status;
	}

	// CALLING DAO FUNCTION FOR COOKIE LOGIN STAY SIGNED IN FUNCTION
	public boolean loginCookie(Vendor vendor) {
		boolean status = vendorDao.selectVendorByEmailAndLogintime(vendor);

		return status;
	}

	// CALLING DAO FUNCTION FOR STAY SIGN IN FUNCTIONALITY
	public boolean CreateCookie(Vendor vendor) {
		boolean status = vendorDao.updatelastlogin(vendor);
		return status;
	}


}


