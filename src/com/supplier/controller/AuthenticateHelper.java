package com.supplier.controller;

import com.supplier.model.Login;
import com.supplier.model.Supplier;
import com.supplier.session.UserSession;



public class AuthenticateHelper {
	public static UserSession populateUserSession(Login login,Supplier supplier){

		UserSession userSession=new UserSession();
		userSession.setUserId(supplier.getId());
		userSession.setEmailAddress(login.getEmailAddress());
		userSession.setUserName(supplier.getUserName());
		return userSession;
	}
}
