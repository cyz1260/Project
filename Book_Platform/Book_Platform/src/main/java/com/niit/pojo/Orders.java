package com.niit.pojo;

public class Orders {
	
	private String orderid;
	private String ouserid;
	private String ousername;
	private String ousertel;
	private String ouseraddress;
	private String obookname;
	private String obookprice;
	private String obookdescription;
	private String obookimga;
	
	public Orders() {
	}

	public Orders(String orderid, String ouserid, String ousername, String ousertel, String ouseraddress,
			String obookname, String obookprice, String obookdescription, String obookimga) {
		this.orderid = orderid;
		this.ouserid = ouserid;
		this.ousername = ousername;
		this.ousertel = ousertel;
		this.ouseraddress = ouseraddress;
		this.obookname = obookname;
		this.obookprice = obookprice;
		this.obookdescription = obookdescription;
		this.obookimga = obookimga;
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getOuserid() {
		return ouserid;
	}

	public void setOuserid(String ouserid) {
		this.ouserid = ouserid;
	}

	public String getOusername() {
		return ousername;
	}

	public void setOusername(String ousername) {
		this.ousername = ousername;
	}

	public String getOusertel() {
		return ousertel;
	}

	public void setOusertel(String ousertel) {
		this.ousertel = ousertel;
	}

	public String getOuseraddress() {
		return ouseraddress;
	}

	public void setOuseraddress(String ouseraddress) {
		this.ouseraddress = ouseraddress;
	}

	public String getObookname() {
		return obookname;
	}

	public void setObookname(String obookname) {
		this.obookname = obookname;
	}

	public String getObookprice() {
		return obookprice;
	}

	public void setObookprice(String obookprice) {
		this.obookprice = obookprice;
	}

	public String getObookdescription() {
		return obookdescription;
	}

	public void setObookdescription(String obookdescription) {
		this.obookdescription = obookdescription;
	}

	public String getObookimga() {
		return obookimga;
	}

	public void setObookimga(String obookimga) {
		this.obookimga = obookimga;
	}
	
}
