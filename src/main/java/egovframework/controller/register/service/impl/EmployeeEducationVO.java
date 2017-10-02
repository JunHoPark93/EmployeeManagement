package egovframework.controller.register.service.impl;

public class EmployeeEducationVO {

	private String ssn_num;
	private String high_yn;
	private String edu_code;
	private String street_addrs;
	private String city;
	private String state;
	private String major;
	private String degree;
	
	public EmployeeEducationVO(String ssn_num, String high_yn, String edu_code, String street_addrs, String city,
			String state, String major, String degree) {
		super();
		this.ssn_num = ssn_num;
		this.high_yn = high_yn;
		this.edu_code = edu_code;
		this.street_addrs = street_addrs;
		this.city = city;
		this.state = state;
		this.major = major;
		this.degree = degree;
	}

	public String getSsn_num() {
		return ssn_num;
	}

	public void setSsn_num(String ssn_num) {
		this.ssn_num = ssn_num;
	}

	public String getHigh_yn() {
		return high_yn;
	}

	public void setHigh_yn(String high_yn) {
		this.high_yn = high_yn;
	}

	public String getEdu_code() {
		return edu_code;
	}

	public void setEdu_code(String edu_code) {
		this.edu_code = edu_code;
	}

	public String getStreet_addrs() {
		return street_addrs;
	}

	public void setStreet_addrs(String street_addrs) {
		this.street_addrs = street_addrs;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}	
}
