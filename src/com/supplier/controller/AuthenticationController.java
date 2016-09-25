package com.supplier.controller;

import javax.servlet.http.HttpSession;

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
import com.supplier.session.UserSession;



@Controller
public class AuthenticationController {

	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value = "/loginSubmit", method = RequestMethod.POST)
	public String loginSubmit(ModelMap modelMap,  Login login,HttpSession session) {

		if (login.getEmailAddress()!= null && login.getPassword() != null) {
			boolean validate = supplierDAO.validateSupplier(login);
			if(validate){
			Supplier supplierDetails = supplierDAO.getSupplierDetails(login);
			UserSession userSession = AuthenticateHelper.populateUserSession(login, supplierDetails);
			session.setAttribute("userSession", userSession);
			if (supplierDetails != null) {
				modelMap.put("supplierDetails", supplierDetails);
			    return PageView.MENU;
			}
			}else{
				modelMap.put("errorEM", "No User Found");
				return PageView.LOGIN;
			}
			
			
		}
		return "";
     } 
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String signUp(ModelMap modelMap, Supplier supplier,HttpSession session) {
		if (supplier.getUserName() != null && supplier.getPassword() != null && supplier.getLocation() != null
				&& supplier.getMobileNumber() != null) {
			boolean isCreated = supplierDAO.supplierSignUp(supplier);
			if (isCreated) {
				modelMap.put("isCreated", isCreated);
			}
		}
		
		return null;
     } 

	@RequestMapping(value = "/placeOrder", method = RequestMethod.POST)
	public String signUp(ModelMap modelMap, Orders order,HttpSession session) {
		boolean isOrderPlaced = supplierDAO.placeOrder(order);
		if(isOrderPlaced){
			modelMap.put("message", "Order Placed Successfully");
		}else{
			modelMap.put("message", "There is error while placing Order");
		}
	  return "";
     } 
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap modelMap, Login login,HttpSession session) {

		session.removeAttribute("userSession");

		return PageView.LOGIN;
	}
 }