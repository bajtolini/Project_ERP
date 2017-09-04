package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class Validator {
	public static ArrayList<String> checkAll(String nip, String postalcode, String city, String street, String housenumber,
		String localnumber, String phone){
		ArrayList<String> wrongParams = new ArrayList<>();

		return wrongParams;
	}


	public static boolean checkPostalCode(String postalCode) {
		if(postalCode.length()==5) {
			try { 
				Integer.parseInt(postalCode);
				return true;}
			catch (Exception e) {
				return false;
			}
		}
		else if(postalCode.length()==6) {
			try {
				String code = postalCode.substring(0, 1) + postalCode.substring(3, 5);
				Integer.parseInt(code);
				char dash = postalCode.charAt(2);
				if(dash=='-') {
					return true;
				}
			}catch (Exception e) {
				return false;
			}
		}
		return false;
	}

}
