package egovframework.controller.register.service.impl;

import java.util.Date;


public class EmployeeVO {

	/**
	 *  fields for tab1
	 */
	private String ssn_num;
	private String last_nm;
	private String frst_nm;
	private String mddl_nm;
	private String street_addrs;

	private String city;
	private String state;
	private String zipcode;
	private String home_tel;
	private String cel_tel;
	private String e_mail;
	private Date work_start_dt;
	
	/**
	 *  fields for tab2
	 */
	private String position;
	private String location;
	private String work_style;
	private String adult_yn;
	private String related_yn;
	private String skills;
	
	public EmployeeVO() {}

	public EmployeeVO(String ssn_num, String last_nm, String frst_nm, String mddl_nm, String street_addrs, String city,
			String state, String zipcode, String home_tel, String cel_tel, String e_mail, Date work_start_dt,
			String position, String location, String work_style, String adult_yn, String related_yn, String skills) {
		super();
		this.ssn_num = ssn_num;
		this.last_nm = last_nm;
		this.frst_nm = frst_nm;
		this.mddl_nm = mddl_nm;
		this.street_addrs = street_addrs;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
		this.home_tel = home_tel;
		this.cel_tel = cel_tel;
		this.e_mail = e_mail;
		this.work_start_dt = work_start_dt;
		this.position = position;
		this.location = location;
		this.work_style = work_style;
		this.adult_yn = adult_yn;
		this.related_yn = related_yn;
		this.skills = skills;
	}

	public String getSsn_num() {
		return ssn_num;
	}

	public void setSsn_num(String ssn_num) {
		this.ssn_num = ssn_num;
	}

	public String getLast_nm() {
		return last_nm;
	}

	public void setLast_nm(String last_nm) {
		this.last_nm = last_nm;
	}

	public String getFrst_nm() {
		return frst_nm;
	}

	public void setFrst_nm(String frst_nm) {
		this.frst_nm = frst_nm;
	}

	public String getMddl_nm() {
		return mddl_nm;
	}

	public void setMddl_nm(String mddl_nm) {
		this.mddl_nm = mddl_nm;
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

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getHome_tel() {
		return home_tel;
	}

	public void setHome_tel(String home_tel) {
		this.home_tel = home_tel;
	}

	public String getCel_tel() {
		return cel_tel;
	}

	public void setCel_tel(String cel_tel) {
		this.cel_tel = cel_tel;
	}

	public String getE_mail() {
		return e_mail;
	}

	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}

	public Date getWork_start_dt() {
		return work_start_dt;
	}

	public void setWork_start_dt(Date work_start_dt) {
		this.work_start_dt = work_start_dt;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getWork_style() {
		return work_style;
	}

	public void setWork_style(String work_style) {
		this.work_style = work_style;
	}

	public String getAdult_yn() {
		return adult_yn;
	}

	public void setAdult_yn(String adult_yn) {
		this.adult_yn = adult_yn;
	}

	public String getRelated_yn() {
		return related_yn;
	}

	public void setRelated_yn(String related_yn) {
		this.related_yn = related_yn;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	@Override
	public String toString() {
		return "EmployeeVO [ssn_num=" + ssn_num + ", last_nm=" + last_nm + ", frst_nm=" + frst_nm + ", mddl_nm="
				+ mddl_nm + ", street_addrs=" + street_addrs + ", city=" + city + ", state=" + state + ", zipcode="
				+ zipcode + ", home_tel=" + home_tel + ", cel_tel=" + cel_tel + ", e_mail=" + e_mail
				+ ", work_start_dt=" + work_start_dt + ", position=" + position + ", location=" + location
				+ ", work_style=" + work_style + ", adult_yn=" + adult_yn + ", related_yn=" + related_yn + ", skills="
				+ skills + "]";
	}
}
