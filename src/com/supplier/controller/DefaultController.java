package com.supplier.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.supplier.constraints.PageView;
import com.supplier.dao.SupplierDAO;
import com.supplier.model.Login;
import com.supplier.model.Orders;
import com.supplier.model.Supplier;

@Controller
public class DefaultController {

	@Autowired
	SupplierDAO supplierDAO;

	@RequestMapping(value = { "/", "/index" })
	public String index(ModelMap modelMap) {
		return PageView.ORDER_ITEMS;
	}

	@RequestMapping(value = { "/login" })
	public String login(ModelMap modelMap) {
		return PageView.LOGIN;
	}

	@RequestMapping(value = { "/signUp" })
	public String signUp(ModelMap modelMap) {
		return PageView.SIGNUP;
	}

	@RequestMapping(value = { "/items" })
	public String items(ModelMap modelMap) {
		return PageView.MENU;
	}

	@RequestMapping(value = { "/orders" })
	public String orders(ModelMap modelMap) {
		List<Orders> orders =  supplierDAO.getAllOrders();
		if(orders.size()>0){
		modelMap.put("orders",orders);	
		}else{
	    modelMap.put("Message","No orders");	
		}
		return PageView.ORDERS;
	}
	
	@RequestMapping(value = { "/orderItems" })
	public String orderItems(ModelMap modelMap) {
		return PageView.ORDER_ITEMS;
	}

	
	

}
