package egovframework.controller.register.service.impl;

public class EmployeeHistoryVO {

	private String ssn_num;
	private String emp_name;
	private String businessType;
	private String street_address;
	private String city;
	private String state;
	private String cell_tel;
	private String job_title;
	private String start_dt;
	private String end_dt;
	private String work;
	private String reason;
	
	public EmployeeHistoryVO(String ssn_num, String emp_name, String businessType, String street_address, String city,
			String state, String cell_tel, String job_title, String start_dt, String end_dt, String work,
			String reason) {
		super();
		this.ssn_num = ssn_num;
		this.emp_name = emp_name;
		this.businessType = businessType;
		this.street_address = street_address;
		this.city = city;
		this.state = state;
		this.cell_tel = cell_tel;
		this.job_title = job_title;
		this.start_dt = start_dt;
		this.end_dt = end_dt;
		this.work = work;
		this.reason = reason;
	}
	
	public String getSsn_num() {
		return ssn_num;
	}
	public void setSsn_num(String ssn_num) {
		this.ssn_num = ssn_num;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getBusinessType() {
		return businessType;
	}
	public void setBusinessType(String businessType) {
		this.businessType = businessType;
	}
	public String getStreet_address() {
		return street_address;
	}
	public void setStreet_address(String street_address) {
		this.street_address = street_address;
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
	public String getCell_tel() {
		return cell_tel;
	}
	public void setCell_tel(String cell_tel) {
		this.cell_tel = cell_tel;
	}
	public String getJob_title() {
		return job_title;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	public String getStart_dt() {
		return start_dt;
	}
	public void setStart_dt(String start_dt) {
		this.start_dt = start_dt;
	}
	public String getEnd_dt() {
		return end_dt;
	}
	public void setEnd_dt(String end_dt) {
		this.end_dt = end_dt;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	
}
