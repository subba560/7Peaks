package com.supplier.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.supplier.model.Login;
import com.supplier.model.Orders;
import com.supplier.model.Supplier;
import com.supplier.util.DataRetrival;

@Repository
public class SupplierDAOImpl implements SupplierDAO {

	public static final String SUPPLIER_SIGNUP = "INSERT INTO SUPPLIER_DETAILS(SUP_NAME, SUP_EMAIL, SUP_PASSWORD, SUP_MOBILE, SUP_LOCATION, CREATED_DATE) VALUES(?,?,?,?,?,NOW())";

	public static final String GET_SUPPLIER_DETAILS = "SELECT SUP_ID, SUP_NAME, SUP_MOBILE, SUP_LOCATION, SUP_STATUS FROM SUPPLIER_DETAILS WHERE SUP_EMAIL=? AND SUP_PASSWORD=?";
	
	public static final String VALIDATE_SUP = "SELECT SUP_EMAIL,SUP_PASSWORD FROM SUPPLIER_DETAILS WHERE SUP_EMAIL=? AND SUP_PASSWORD=?";

	public static final String PLACE_ORDER = "INSERT INTO ORDERS (ITEM_ORD_QTY,ORD_LOCATION,ITEM_ORD_ADLT_CNT,ITEM_ORD_CHLD_CNT,ITEM_ORD_PRIORITY,CONSUMER_ID,CREATED_DATE) VALUES (?,?,?,?,?,?,NOW())";
	
	public static final String GET_ORDER = "SELECT ORD_ID FROM ORDERS WHERE CONSUMER_ID = ?";
	
	public static final String ORDER_IT = "INSERT INTO OREDERD_ITEMS(ORDER_ID,ITEM_ID)VALUES(?,?)";
	
	public static final String GET_ALL_ORDER = "SELECT ORD_ID,ITEM_ORD_QTY,ORD_LOCATION,ITEM_ORD_ADLT_CNT,ITEM_ORD_CHLD_CNT,ITEM_ORD_PRIORITY FROM ORDERS";
	
	public static final String GET_ITEM_NAME = "SELECT ITEM_NAME FROM OREDERD_ITEMS OI JOIN ITEM_CAT O ON OI.ORDER_ID=? AND OI.ITEM_ID = O.ITEM_ID";
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public boolean supplierSignUp(Supplier supplier) {
		// TODO Auto-generated method stub
		boolean isCreated = false;
		int i = jdbcTemplate.update(SUPPLIER_SIGNUP, supplier.getUserName(), supplier.getEmailAddress(),supplier.getPassword(),
				supplier.getMobileNumber(), supplier.getLocation());

		if (i > 0) {
			isCreated = true;
		}
		return isCreated;
	}

	@Override
	public Supplier getSupplierDetails(Login supplier) {
		// TODO Auto-generated method stub
		Supplier supplierDetails = null;
		List<Map<String, Object>> retrievedDetails = jdbcTemplate.queryForList(GET_SUPPLIER_DETAILS,
				supplier.getEmailAddress(), supplier.getPassword());

		if (!retrievedDetails.isEmpty()) {
			for (Map<String, Object> map : retrievedDetails) {
				supplierDetails = retrieveSupplier(map);
			}
		}

		return supplierDetails;
	}

	@Override
	public boolean validateSupplier(Login supplier) {
		// TODO Auto-generated method stub
		Supplier supplierDetails = null;
		List<Supplier> suppliers = new ArrayList<Supplier>();
		boolean isSup =  false;
		List<Map<String, Object>> retrievedDetails = jdbcTemplate.queryForList(VALIDATE_SUP,
				supplier.getEmailAddress(), supplier.getPassword());

		if (!retrievedDetails.isEmpty()) {
			for (Map<String, Object> map : retrievedDetails) {
				supplierDetails = retrieveSupplier(map);
				suppliers.add(supplierDetails);
			}
		}
		if(suppliers.size()>0){
			if(suppliers.get(0).getEmailAddress()!=null){
				isSup = true;
			}
		}

		return isSup;
	}
	private Supplier retrieveSupplier(Map<String, Object> map) {
		// TODO Auto-generated method stub
		Supplier supplier = new Supplier();
		supplier.setId(DataRetrival.getIntValue("SUP_ID", map));
		supplier.setUserName(DataRetrival.getStringValue("SUP_NAME", map));
		supplier.setEmailAddress(DataRetrival.getStringValue("SUP_EMAIL", map));
		supplier.setMobileNumber(DataRetrival.getStringValue("SUP_MOBILE", map));
		supplier.setLocation(DataRetrival.getStringValue("SUP_LOCATION", map));
		supplier.setStatus(DataRetrival.getStringValue("SUP_STATUS", map));
		return supplier;
	}

	@Override
	public boolean placeOrder(Orders order) {
	 String token = RandomStringUtils.random(10, true, true);
     String consumerId = System.currentTimeMillis()+token;
     Orders ord = null;
     boolean isCreated = false;
		int i = jdbcTemplate.update(PLACE_ORDER,order.getAdultCount()+order.getChildrenCount(),order.getOrderLocation(),
				order.getAdultCount(),order.getChildrenCount(),order.getPriority(),consumerId);
		if (i > 0) {
			List<Map<String, Object>> retrievedDetails = jdbcTemplate.queryForList(GET_ORDER,consumerId);
			if (!retrievedDetails.isEmpty()) {
				for (Map<String, Object> map : retrievedDetails) {
					ord = retrieveOrder(map);
					
				}
				String item[] = order.getItemCategoryId().split(",");
				for(String it: item){
				int itemId = Integer.parseInt(it);
				int j = jdbcTemplate.update(ORDER_IT,ord.getOrderId(),itemId);
				if(j>0){
					isCreated=true;	
				}
				}
			}
			
		}
   return isCreated;
	}

	private Orders retrieveOrder(Map<String, Object> map) {
		Orders order =  new Orders();
		order.setOrderId(DataRetrival.getIntValue("ORD_ID", map));
		order.setItemOrderQty(DataRetrival.getIntValue("ITEM_ORD_QTY", map));
		order.setOrderLocation(DataRetrival.getStringValue("ORD_LOCATION", map));
		order.setAdultCount(DataRetrival.getIntValue("ITEM_ORD_ADLT_CNT", map));
		order.setChildrenCount(DataRetrival.getIntValue("ITEM_ORD_CHLD_CNT", map));
		order.setPriority(DataRetrival.getStringValue("ITEM_ORD_PRIORITY", map));
		return order;
	}
	private Orders retrieveItem(Map<String, Object> map) {
		Orders order =  new Orders();
		order.setItems(DataRetrival.getStringValue("ITEM_NAME", map));
		return order;
	}

	@Override
	public List<Orders> getAllOrders() {
		Orders orders = null;
		Orders order1 = null;
		List<Orders> orders2 =  new ArrayList<Orders>();
		List<Map<String, Object>> retrievedDetails = jdbcTemplate.queryForList(GET_ALL_ORDER);
       
        
		if (!retrievedDetails.isEmpty()) {
			for (Map<String, Object> map : retrievedDetails) {
				orders = retrieveOrder(map);
				List<Map<String, Object>> retrievedItemName = jdbcTemplate.queryForList(GET_ITEM_NAME,orders.getOrderId());
				if(retrievedItemName.size()>0){
				String itemName[] = new String[retrievedItemName.size()];
				int count=0;
				for (Map<String, Object> map1 : retrievedItemName) {
				order1 = retrieveItem(map1);
				itemName[count] = order1.getItems();
				count++;
				}
				orders.setItemName(itemName);
				}
				orders2.add(orders);
			}
		}

		return orders2;
	}

	

}
