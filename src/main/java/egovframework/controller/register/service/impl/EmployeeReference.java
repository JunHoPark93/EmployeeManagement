package egovframework.controller.register.service.impl;

public class EmployeeReference {

	private String ssn_num;
	private String nm;
	private String street_addrs;
	private String cell_Tel;
	private String occupation;
	private String years_known;
	
	public EmployeeReference(String ssn_num, String nm, String street_addrs, String cell_Tel, String occupation,
			String years_known) {
		super();
		this.ssn_num = ssn_num;
		this.nm = nm;
		this.street_addrs = street_addrs;
		this.cell_Tel = cell_Tel;
		this.occupation = occupation;
		this.years_known = years_known;
	}

	public String getSsn_num() {
		return ssn_num;
	}

	public void setSsn_num(String ssn_num) {
		this.ssn_num = ssn_num;
	}

	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}

	public String getStreet_addrs() {
		return street_addrs;
	}

	public void setStreet_addrs(String street_addrs) {
		this.street_addrs = street_addrs;
	}

	public String getCell_Tel() {
		return cell_Tel;
	}

	public void setCell_Tel(String cell_Tel) {
		this.cell_Tel = cell_Tel;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getYears_known() {
		return years_known;
	}

	public void setYears_known(String years_known) {
		this.years_known = years_known;
	}
}
