<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<script type="text/javascript">

</script>
	
	<div class="content">
	     <div class="container-fluid">
	         <div class="row">
	             <div class="col-md-8">
	                 <div class="card">
	                     <div class="header">
	                         <h4 class="title">${empAllData.FRST_NM} ${empAllData.MDDL_NM} ${empAllData.LAST_NM }</h4>
	                     </div>
	                     <div class="content">
	                         <form>
	                             <div class="row">
	                                 <div class="col-md-5">
	                                     <div class="form-group">
	                                         <label>EMAIL</label>
	                                         <input type="text" class="form-control" value="${empAllData.E_MAIL}" readonly>
	                                     </div>
	                                 </div>
	                                 <div class="col-md-3">
	                                 	<div class="form-group">	                                     
		                                 	<label>CEL_TEL</label>
		                                    <input type="text" class="form-control" value="${empAllData.CEL_TEL}" readonly>
	                                    </div>
	                                 </div>
	                                 <div class="col-md-4">
	                                 	<div class="form-group">
		                                 	<label>HOME_TEL</label>
		                                    <input type="text" class="form-control" value="${empAllData.HOME_TEL}" readonly>
		                                </div>
	                                 </div>
	                              </div>                      
	                           
	                             <div class="row">
	                                 <div class="col-md-6">
	                                     <div class="form-group">
	                                         <label>ADDRESS</label>
	                                         <input type="text" class="form-control" value="${empAllData.STREET_ADDRS}" readonly>
	                                     </div>
	                                 </div>
	                             </div>
	
	                             <div class="row">
	                                 <div class="col-md-3">
	                                     <div class="form-group">
	                                         <label>CITY</label>
	                                         <input type="text" class="form-control" value="${empAllData.CITY}" readonly>
	                                     </div>
	                                 </div>
	                                 <div class="col-md-3">
	                                     <div class="form-group">
	                                         <label>STATE</label>
	                                         <input type="text" class="form-control" value="${empAllData.STATE}" readonly>
	                                     </div>
	                                 </div>
	                                 <div class="col-md-3">
	                                     <div class="form-group">
	                                         <label>ZIPCODE</label>
	                                         <input type="text" class="form-control" value="${empAllData.ZIPCODE}" readonly>
	                                     </div>
	                                 </div>
	                             </div>
	
	                             <div class="row">
	                                 <div class="col-md-4">
	                                     <div class="form-group">
	                                         <label>POSITION</label>
	                                         <input type="text" class="form-control" value="${empAllData.POSITION}" readonly>
	                                     </div>
	                                 </div>
	                                 <div class="col-md-4">
	                                     <div class="form-group">
	                                         <label>Location</label>
	                                         <input type="text" class="form-control" value="${empAllData.LOCATION}" readonly>
	                                     </div>
	                                 </div>
	                                 <div class="col-md-2">
	                                     <div class="form-group">
	                                         <label>RELATED</label>
	                                         <input type="text" class="form-control" value="${empAllData.RELATED_YN}" readonly>
	                                     </div>
	                                 </div>
	                                 <div class="col-md-2">
	                                     <div class="form-group">
	                                         <label>ADULT</label>
	                                         <input type="text" class="form-control" value="${empAllData.ADULT_YN}" readonly>
	                                     </div>
	                                 </div>
	                             </div>
	
	                             <div class="row">
	                                 <div class="col-md-12">
	                                     <div class="form-group">
	                                         <label>SKILLS</label>
	                                         <textarea rows="5" class="form-control" placeholder="Here can be your description" readonly>${empAllData.SKILLS }</textarea>
	                                     </div>
	                                 </div>
	                             </div>
	                             
	                             <div class="row">
	                             	<div class="col-md-4">
	                             		<div class="form-group">
	                             			<label>WORK START DATE</label>
	                             			<input type="text" class="form-control" value="${empAllData.WORK_START_DT}" readonly/>
	                             		</div>
	                             	</div>
	                             	<div class="col-md-4">
	                             		<div class="form-group">
		                             		<label>EDUCATION</label>
		                             		<input type="text" class="form-control" value="${empAllData.EDU_CODE}" readonly/>
		                             	</div>
	                             	</div>
	                             	
                             		<div class="col-md-4">
                             		 	<div class="form-group">
                             		 		<label>HIGH SCHOOL</label>
	                             			<input type="text" class="form-control" value="${empAllData.HIGH_YN}" readonly/>
                             		 	</div>	                             		
	                             	</div>
	                             </div>
	
								<div class="row">
	                                 <div class="col-md-3">
	                                     <div class="form-group">
	                                         <label>EDUCATION</label>
	                                         <input type="text" class="form-control" value="" readonly/>
	                                     </div>
	                                 </div>
	                                 <div class="col-md-3">
	                                     <div class="form-group">
	                                         <label>SCHOOL NAME</label>
	                                         <input type="text" class="form-control" value="${empAllData.SCHOOL_NM}" readonly/>
	                                     </div>
	                                 </div>
	                                 <div class="col-md-3">
	                                     <div class="form-group">
	                                         <label>MAJOR</label>
	                                         <input type="text" class="form-control" value="${empAllData.MAJOR}" readonly/>
	                                     </div>
	                                 </div>
	                                 <div class="col-md-3">
	                                     <div class="form-group">
	                                         <label>GRADE</label>
	                                         <input type="text" class="form-control" value="${empAllData.GRADE}" readonly/>
	                                     </div>
	                                 </div>
	                             </div>
								
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<lable>COMPANY NAME</lable>
											<input type="text" class="form-control" value="${empAllData.EMP_NM}" readonly/>
										</div>								
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<lable>BUSINESS TYPE</lable>
											<input type="text" class="form-control" value="${empAllData.TYPE}" readonly/>
										</div>								
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<lable>JOB TITLE</lable>
											<input type="text" class="form-control" value="${empAllData.JOB_TITLE}" readonly/>
										</div>								
									</div>
								</div>
								
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label>START DATE</label>
											<input type="text" class="form-control" value="${empAllData.START_DT}" readonly/>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label>END DATE</label>
											<input type="text" class="form-control" value="${empAllData.END_DT}" readonly/>
										</div>
									</div>
								
								</div>
								
								<div class="row">
	                                 <div class="col-md-12">
	                                     <div class="form-group">
	                                         <label>WORK PERFORMED</label>
	                                         <textarea rows="5" class="form-control" value="dd" readonly>${empAllData.WORK}</textarea>
	                                     </div>
	                                 </div>
	                             </div>
	                             
	                             <div class="row">
	                                 <div class="col-md-12">
	                                     <div class="form-group">
	                                         <label>REASON FOR LEAVING</label>
	                                         <textarea rows="5" class="form-control" value="dd" readonly>${empAllData.REASON}</textarea>
	                                     </div>
	                                 </div>
	                             </div>
								
	                             <button type="submit" class="btn btn-info btn-fill pull-right" readonly>Update Profile</button>
	                             <div class="clearfix"></div>
	                         </form>
	                     </div> <!-- end of content -->
	                 </div>
	             </div>
	             <div class="col-md-4">
	                 <div class="card card-user">
	                     <div class="image">
	                         <img src="images/bootstrap/full-screen-image-3.jpg" alt="..."/>
	                     </div>
	                     <div class="content">
	                         <div class="author">
	                              <a href="#">
	                             <img class="avatar border-gray" src="images/bootstrap/lisa.jpg" alt="..."/>
	
	                               <h4 class="title">${empAllData.FRST_NM} ${empAllData.MDDL_NM} ${empAllData.LAST_NM }<br />
	                                  <small>blank</small>
	                               </h4>
	                             </a>
	                         </div>
	                         <p class="description text-center"> "Lamborghini Mercy <br>
	                                             Your chick she so thirsty <br>
	                                             I'm in that two seat Lambo"
	                         </p>
	                     </div>
	                     <hr>
	                     <div class="text-center">
	                         <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
	                         <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
	                         <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>
	
	                     </div>
	                 </div>
	             </div>
	
	         </div>
	     </div>
	 </div>