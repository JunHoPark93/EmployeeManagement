package egovframework.controller.register.service.impl;

public class EmployeeEducationVO {

	private String ssn_num;
	private String school_nm;
	private String high_yn;
	private String edu_code;
	private String major;
	private String grade;
	
	private String regi_nm;
	
	public EmployeeEducationVO() {}

	public EmployeeEducationVO(String ssn_num, String school_nm, String high_yn, String edu_code, String major,
			String grade, String regi_nm) {
		super();
		this.ssn_num = ssn_num;
		this.school_nm = school_nm;
		this.high_yn = high_yn;
		this.edu_code = edu_code;
		this.major = major;
		this.grade = grade;
		this.regi_nm = regi_nm;
	}



	public String getSsn_num() {
		return ssn_num;
	}

	public void setSsn_num(String ssn_num) {
		this.ssn_num = ssn_num;
	}

	public String getSchool_nm() {
		return school_nm;
	}

	public void setSchool_nm(String school_nm) {
		this.school_nm = school_nm;
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

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getRegi_nm() {
		return regi_nm;
	}

	public void setRegi_nm(String regi_nm) {
		this.regi_nm = regi_nm;
	}

	@Override
	public String toString() {
		return "EmployeeEducationVO [ssn_num=" + ssn_num + ", school_nm=" + school_nm + ", high_yn=" + high_yn
				+ ", edu_code=" + edu_code + ", major=" + major + ", grade=" + grade + "]";
	}

	
}
