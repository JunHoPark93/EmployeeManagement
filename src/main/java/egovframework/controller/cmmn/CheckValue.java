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
}
