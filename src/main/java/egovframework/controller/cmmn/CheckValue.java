package egovframework.controller.cmmn;

public final class CheckValue {

	public static String checkPosition(String name) {
		if(name.equals("Casher")) {
			return "5";
		} else if(name.equals("Sales")) {
			return "4";
		} else if(name.equals("Warehouse")) {
			return "6";
		} else if(name.equals("Manager")) {
			return "3";
		} else if(name.equals("Non-store")) {
			return "7";
		} else {
			return "9"; // error
		}
	}
	
	public static String checkPositionReverse(String name) {
		if(name.equals("5")) {
			return "Casher";
		} else if(name.equals("4")) {
			return "Sales";
		} else if(name.equals("6")) {
			return "Warehouse";
		} else if(name.equals("3")) {
			return "Manager";
		} else if(name.equals("7")) {
			return "Non-store";
		} else {
			return "9"; // error
		}
	}
	
	public static String checkWorkStyle(String name) {
		if(name.equals("Full Time")) {
			return "1";
		} else if(name.equals("Part Time")) {
			return "2";
		} else if(name.equals("Temporary")) {
			return "3";
		} else if(name.equals("Seasonal")) {
			return "4";
		} else {
			return "9"; //error
		}
	}
	
	public static String checkWorkStyleReverse(String name) {
		if(name.equals("1")) {
			return "Full Time";
		} else if(name.equals("2")) {
			return "Part Time";
		} else if(name.equals("3")) {
			return "Temporary";
		} else if(name.equals("4")) {
			return "Seasonal";
		} else {
			return "9"; //error
		}
	}
	
	public static String checkAdult(String yn) {
		if(yn.equals("1"))
			return "Y";
		else 
			return "N";
	}
	
	public static String checkRelated(String yn) {
		if(yn.equals("1"))
			return "Y";
		else 
			return "N";
	}
	
	public static String checkLocation(String loc) {
		if(loc.equals("HeadLand"))
			return "1";
		else if(loc.equals("Morrow")) 
			return "2";
		else if(loc.equals("OldNational")) 
			return "3";
		else if(loc.equals("CampCreek"))
			return "4";
		else if(loc.equals("GreenBriar"))
			return "5";
		else if(loc.equals("Duluth"))
			return "6";
		else if(loc.equals("Riverdale"))
			return "7";
		else
			return "99"; // error
	}
	
	public static String checkLocationReverse(String loc) {
		if(loc.equals("1"))
			return "HeadLand";
		else if(loc.equals("2")) 
			return "Morrow";
		else if(loc.equals("3")) 
			return "OldNational";
		else if(loc.equals("4"))
			return "CampCreek";
		else if(loc.equals("5"))
			return "GreenBriar";
		else if(loc.equals("6"))
			return "Duluth";
		else if(loc.equals("7"))
			return "Riverdale";
		else
			return "99"; // error
	}
	
	public static String CheckEduCode(String edu) {
		if(edu.equals("College")) 
			return "2";
		else if(edu.equals("University"))
			return "1";
		else if(edu.equals("Business"))
			return "3";
		else if(edu.equals("Technical"))
			return "4";
		else if(edu.equals("Trade School"))
			return "5";
		else
			return "9"; // error
	}
	
	public static String CheckEduCodeReverse(String edu) {
		if(edu.equals("2")) 
			return "College";
		else if(edu.equals("1"))
			return "University";
		else if(edu.equals("3"))
			return "Business";
		else if(edu.equals("4"))
			return "Technical";
		else if(edu.equals("5"))
			return "Trade School";
		else
			return "9"; // error
	}
	
	public static String checkHighSchool(String yn) {
		if(yn.equals("1"))
			return "Y";
		else 
			return "N";
	}
}
