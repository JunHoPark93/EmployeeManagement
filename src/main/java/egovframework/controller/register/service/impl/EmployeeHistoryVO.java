package egovframework.controller.register.service.impl;

import java.util.Date;

public class EmployeeHistoryVO {

	private String ssn_num;
	private String emp_nm;
	private String type;
	private String job_title;
	private Date start_dt;
	private Date end_dt;
	private String work;
	private String reason;

	public EmployeeHistoryVO() {
		
	}

	public EmployeeHistoryVO(String ssn_num, String emp_nm, String type, String job_title, Date start_dt, Date end_dt,
			String work, String reason) {
		super();
		this.ssn_num = ssn_num;
		this.emp_nm = emp_nm;
		this.type = type;
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

	public String getEmp_nm() {
		return emp_nm;
	}

	public void setEmp_nm(String emp_nm) {
		this.emp_nm = emp_nm;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getJob_title() {
		return job_title;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public Date getStart_dt() {
		return start_dt;
	}

	public void setStart_dt(Date start_dt) {
		this.start_dt = start_dt;
	}

	public Date getEnd_dt() {
		return end_dt;
	}

	public void setEnd_dt(Date end_dt) {
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

	@Override
	public String toString() {
		return "EmployeeHistoryVO [ssn_num=" + ssn_num + ", emp_nm=" + emp_nm + ", type=" + type + ", job_title="
				+ job_title + ", start_dt=" + start_dt + ", end_dt=" + end_dt + ", work=" + work + ", reason=" + reason
				+ "]";
	}

	
}
