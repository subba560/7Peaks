package com.supplier.dao;

import java.util.List;

import com.supplier.model.Login;
import com.supplier.model.Orders;
import com.supplier.model.Supplier;

public interface SupplierDAO {

	public boolean supplierSignUp(Supplier supplier);
	
	public Supplier getSupplierDetails(Login supplier);

	public boolean validateSupplier(Login login);

	public boolean placeOrder(Orders order);

	public List<Orders> getAllOrders();
}
