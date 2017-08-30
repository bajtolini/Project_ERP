package dao;

import java.sql.*;
import java.util.*;

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


	public static Client CheckNip(long nip) {

		try {
			Connection conn = Connect.getConn();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM client WHERE nip=? AND active=1;");
			ps.setLong(1, nip);
			ResultSet rs =  ps.executeQuery();
			if(rs.next()) {
				Client client = getClient(rs);
				return client;
			}else {
				return null;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static boolean Submit(Client client) {
		try {
			Connection conn = Connect.getConn();
			PreparedStatement ps = conn.prepareStatement("INSERT INTO client VALUES(default, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
			ps.setString(1, client.name);
			ps.setLong(2, client.nip);
			ps.setString(3, client.postalcode);
			ps.setString(4, client.city);
			ps.setString(5, client.street);
			ps.setString(6, client.housenumber);
			ps.setInt(7, client.localnumber);
			ps.setInt(8, client.phone);
			ps.setString(9, client.email);
			ps.setString(10, client.tag);
			ps.setInt(11, 1);
			ps.executeUpdate();
			ps.close();
			conn.close();
			return true;
		} catch (SQLException e) {

			e.printStackTrace();
			return false;
		}
	}

	public static List<Client> getAllClients() {
		List<Client> clients = new ArrayList<>();
		try {
			Connection conn = Connect.getConn();
			PreparedStatement pr = conn.prepareStatement("SELECT * FROM client WHERE active = 1;");
			ResultSet rs = pr.executeQuery();
			
			while(rs.next()) {
				clients.add(getClient(rs));
			}
			
			rs.close();
			pr.close();
			conn.close();
			return clients;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	private static Client getClient(ResultSet rs) throws SQLException {
		String name = rs.getString("name");
		Long nip = Long.parseLong(rs.getString("nip"));
		String postalcode = rs.getString("postalcode");
		String city = rs.getString("city");
		String street = rs.getString("street");
		String housenumber = rs.getString("housenumber");
		Integer localnumber = Integer.parseInt(rs.getString("localnumber"));
		Integer phone = Integer.parseInt(rs.getString("phone"));
		String email = rs.getString("email");
		String tag = rs.getString("tag");
		return new Client(name, nip, postalcode, city, street, housenumber, localnumber, phone, email, tag);
	}
	
	public Map<String,String> getAllParam() {
		Map<String, String> clientParam = new HashMap<>();
		
		clientParam.put("name", this.name);
		clientParam.put("nip", Long.toString(this.nip));
		clientParam.put("postalcode", this.postalcode);
		clientParam.put("city", this.city);
		clientParam.put("street", this.street);
		clientParam.put("housenumber", this.housenumber);
		clientParam.put("localnumber", Integer.toString(this.localnumber));
		clientParam.put("phone", Integer.toString(this.phone));
		clientParam.put("email", this.email);
		clientParam.put("tag", this.tag);
		
		return clientParam;
	}
	
	public boolean setAllParam(Map<String,String> clientParam) {
		try {
			
			this.name = clientParam.get("name");
			this.nip = Long.parseLong(clientParam.get("nip"));
			this.postalcode = clientParam.get("postalcode");
			this.city = clientParam.get("city");
			this.street = clientParam.get("street");
			this.housenumber = clientParam.get("housenumber");
			this.localnumber = Integer.parseInt(clientParam.get("localnumber"));
			this.phone = Integer.parseInt(clientParam.get("phone"));
			this.email = clientParam.get("email");
			this.tag = clientParam.get("tag");
			//this.street = street+" "+housenumber+"/"+localnumber;
			
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	private String name;
	private Long nip;
	private String postalcode;
	private String city;
	private String street;
	private String housenumber;
	private Integer localnumber;
	private Integer phone;
	private String email;
	private String tag;

	public Client(String name, Long nip, String postalcode, String city, String street, String housenumber,
			Integer localnumber, Integer phone, String email, String tag) {
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
	public Long getNip() {
		return nip;
	}
	public void setNip(Long nip) {
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
	public Integer getLocalnumber() {
		return localnumber;
	}
	public void setLocalnumber(Integer localnumber) {
		this.localnumber = localnumber;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
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

	@Override
	public String toString() {
		return this.nip + " || " + this.name + " || " + this.city + ", " + this.postalcode + " " + this.street;
	}
	
}
