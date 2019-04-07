package com.codeBind.Safar.model.Vo;

import java.io.Serializable;

public class DriverVo implements Serializable{

	private static final long serialVersionUID = -4644044751943874141L;
	
	private String name;
	private String firstName;
	private String lastName;
	private Integer mobileNo;
	private String address;
	private String gender;	
	private String vehicalDtls;
	private String jsonData;
	private String compCode;
	private Integer driverMstId;
	
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the mobileNo
	 */
	public Integer getMobileNo() {
		return mobileNo;
	}
	/**
	 * @param mobileNo the mobileNo to set
	 */
	public void setMobileNo(Integer mobileNo) {
		this.mobileNo = mobileNo;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}
	/**
	 * @return the vehicalDtls
	 */
	public String getVehicalDtls() {
		return vehicalDtls;
	}
	/**
	 * @param vehicalDtls the vehicalDtls to set
	 */
	public void setVehicalDtls(String vehicalDtls) {
		this.vehicalDtls = vehicalDtls;
	}
	/**
	 * @return the jsonData
	 */
	public String getJsonData() {
		return jsonData;
	}
	/**
	 * @param jsonData the jsonData to set
	 */
	public void setJsonData(String jsonData) {
		this.jsonData = jsonData;
	}
	/**
	 * @return the compCode
	 */
	public String getCompCode() {
		return compCode;
	}
	/**
	 * @param compCode the compCode to set
	 */
	public void setCompCode(String compCode) {
		this.compCode = compCode;
	}
	/**
	 * @return the driverMstId
	 */
	public Integer getDriverMstId() {
		return driverMstId;
	}
	/**
	 * @param driverMstId the driverMstId to set
	 */
	public void setDriverMstId(Integer driverMstId) {
		this.driverMstId = driverMstId;
	}
	
}
