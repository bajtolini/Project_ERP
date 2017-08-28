package dao;

import java.sql.*;

public class Client {

	public static boolean Submit(Client client) {
		Connection conn;
		try {
			//DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp?useSSL=false","root","coderslab");
			PreparedStatement ps = conn.prepareStatement("INSERT INTO client VALUES(?, ?, ?, ?, ?, ?, ?, ?)");
			ps.setString(1, client.name);
			ps.setInt(2, client.nip);
			ps.setString(3, client.postalcode);
			ps.setString(4, client.city);
			ps.setString(5, (client.street+" "+client.housenumber+"//"+client.localnumber));
			ps.setInt(6, client.phone);
			ps.setString(7, client.email);
			ps.setString(8, client.tag);
			ps.executeUpdate();
			ps.close();
			conn.close();
			return true;}
		catch (SQLException e) {

			e.printStackTrace();
			return false;
		}	
	}

	private String name;
	private int nip;
	private String postalcode;
	private String city;
	private String street;
	private String housenumber;
	private int localnumber;
	private int phone;
	private String email;
	private String tag;

	public Client(String name, int nip, String postalcode, String city, String street, String housenumber,
			int localnumber, int phone, String email, String tag) {
		super();
		this.name = name;
		this.nip = nip;
		this.postalcode = postalcode;
		this.city = city;
		this.street = street;
		this.housenumber = housenumber;
		this.localnumber = localnumber;
		this.phone = phone;
		this.email = email;
		this.tag = tag;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNip() {
		return nip;
	}
	public void setNip(int nip) {
		this.nip = nip;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getHousenumber() {
		return housenumber;
	}
	public void setHousenumber(String housenumber) {
		this.housenumber = housenumber;
	}
	public int getLocalnumber() {
		return localnumber;
	}
	public void setLocalnumber(int localnumber) {
		this.localnumber = localnumber;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
}
