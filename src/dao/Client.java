package dao;

import java.sql.*;

public class Client {

	public static void Delete(long nip) {
		try {
			Connection conn = Connect.getConn();
			PreparedStatement ps = conn.prepareStatement("UPDATE client SET active=0 WHERE nip=?;");
			ps.setLong(1, nip);
			ps.executeUpdate();
			ps.close();
			conn.close();	}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}


	public static boolean CheckNip(long nip) {

		try {
			Connection conn = Connect.getConn();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM client WHERE nip=? AND active=1;");
			ps.setLong(1, nip);
			ResultSet rs =  ps.executeQuery();
			if(rs.next()) {
				return true;
			}else {
				return false;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public static boolean Submit(Client client) {
		try {
			Connection conn = Connect.getConn();
			PreparedStatement ps = conn.prepareStatement("INSERT INTO client VALUES(default, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
			ps.setString(1, client.name);
			ps.setLong(2, client.nip);
			ps.setString(3, client.postalcode);
			ps.setString(4, client.city);
			ps.setString(5, (client.street));
			ps.setInt(6, client.phone);
			ps.setString(7, client.email);
			ps.setString(8, client.tag);
			ps.setInt(9, 1);
			ps.executeUpdate();
			ps.close();
			conn.close();
			return true;}
		catch (SQLException e) {

			e.printStackTrace();
			return false;
		}
	}

	public static List<Client> getAll() {
		List<Client> clients = new ArrayList<>();

		Connection conn = Connect.getConn();

		conn.close();

		return clients;
	}

	private String name;
	private long nip;
	private String postalcode;
	private String city;
	private String street;
	private String housenumber;
	private int localnumber;
	private int phone;
	private String email;
	private String tag;

	public Client(String name, long nip, String postalcode, String city, String street, String housenumber,
			int localnumber, int phone, String email, String tag) {
		super();
		this.name = name;
		this.nip = nip;
		this.postalcode = postalcode;
		this.city = city;
		this.street = street+" "+housenumber+"/"+localnumber;
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
	public long getNip() {
		return nip;
	}
	public void setNip(long nip) {
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
