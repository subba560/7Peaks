package com.supplier.model;

public class Orders {
	
	private int orderId;
	private int supplierId;
	private String itemCategoryId;
	private int itemOrderQty;
	private int adultCount;
	private int childrenCount;
	private String items;
	private String orderLocation;
	private String priority;
	private String itemName[];
	
	
	
	public String[] getItemName() {
		return itemName;
	}
	public void setItemName(String[] itemName) {
		this.itemName = itemName;
	}
	public String getItems() {
		return items;
	}
	public void setItems(String items) {
		this.items = items;
	}
	/**
	 * @return the orderId
	 */
	public int getOrderId() {
		return orderId;
	}
	/**
	 * @param orderId the orderId to set
	 */
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	/**
	 * @return the supplierId
	 */
	public int getSupplierId() {
		return supplierId;
	}
	/**
	 * @param supplierId the supplierId to set
	 */
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	
	public String getItemCategoryId() {
		return itemCategoryId;
	}
	public void setItemCategoryId(String itemCategoryId) {
		this.itemCategoryId = itemCategoryId;
	}
	/**
	 * @return the itemOrderQty
	 */
	public int getItemOrderQty() {
		return itemOrderQty;
	}
	/**
	 * @param itemOrderQty the itemOrderQty to set
	 */
	public void setItemOrderQty(int itemOrderQty) {
		this.itemOrderQty = itemOrderQty;
	}
	/**
	 * @return the adultCount
	 */
	public int getAdultCount() {
		return adultCount;
	}
	/**
	 * @param adultCount the adultCount to set
	 */
	public void setAdultCount(int adultCount) {
		this.adultCount = adultCount;
	}
	/**
	 * @return the childrenCount
	 */
	public int getChildrenCount() {
		return childrenCount;
	}
	/**
	 * @param childrenCount the childrenCount to set
	 */
	public void setChildrenCount(int childrenCount) {
		this.childrenCount = childrenCount;
	}
	/**
	 * @return the orderLocation
	 */
	public String getOrderLocation() {
		return orderLocation;
	}
	/**
	 * @param orderLocation the orderLocation to set
	 */
	public void setOrderLocation(String orderLocation) {
		this.orderLocation = orderLocation;
	}
	/**
	 * @return the priority
	 */
	public String getPriority() {
		return priority;
	}
	/**
	 * @param priority the priority to set
	 */
	public void setPriority(String priority) {
		this.priority = priority;
	}
}
