<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript">

	$(document).ready(function() {
        demo.initFormExtendedDatetimepickers();
		
        /* alert('${empAllData.WORK_START_DT}');
        $("#last_nm").val("df22222244dddf");
        $("#work_start_dt").datetimepicker({
        	defaultDate : "11/3/2013"
        });
        alert('${empAllData.WORK_START_DT}'); */
        
        //$('#work_start_dt').datepicker('update', '2011-03-05'); 
      
        
        //$("div.form-group position-select").val("Casher");
        
       // $('#position-select').val("Casher");
        
        //alert('${positionStringToView}');
        
        var selectedValues = new Array();
        
        <c:forEach var="data" items="${positionStringToView}">
      		selectedValues.push("${data}");
      	</c:forEach>   
        

        for(var i=0; i<selectedValues.length; i++){
           alert("value is = " + selectedValues[i]);
        }
        
        $('#position-select').val(selectedValues); // set selected multiple value
        
        alert("${work_style}");
        $("#work_style").val("${work_style}");
        $("#location").val("${location}");
        
        $('input[name=edu_code][value= "${education}"]').attr('checked', true);
        
        
        // related check
        if('${empAllData.RELATED_YN}' == 'Y') {
        	$("#related").prop("checked", true);
        } 
        
        // at least 18 check
        if('${empAllData.ADULT_YN}' == 'Y') {
        	$("#adult_yn").prop("checked", true);
        }
        
        if('${empAllData.HIGH_YN}' == 'Y') {
        	$("#highschol").prop("checked", true);
        }
        
		console.log("register page entered");
		
		alert("${empAllData.WORK_START_DT}");
		
	});

    
	
	  $().ready(function(){

          var $validator = $("#wizardForm").validate({
  		  rules: {
  		    email: {
                  required: true,
                  email: true,
                  minlength: 5
  		    },
  		    first_name: {
  		        required: false,
                  minlength: 1
  		    },
  		    last_name: {
  		        required: false,
                  minlength: 1
  		    },
  		    website: {
  		        required: true,
                  minlength: 5,
                  url: true
  		    },
  		    framework: {
      		    required: false,
      		    minlength: 4
  		    },
  		    cities: {
      		    required: true
  		    },
  		    price:{
      		    number: true
  		    }
  		  }
  		});



          // you can also use the nav-pills-[blue | azure | green | orange | red] for a different color of wizard

          $('#wizardCard').bootstrapWizard({
          	tabClass: 'nav nav-pills',
          	nextSelector: '.btn-next',
              previousSelector: '.btn-back',
          	onNext: function(tab, navigation, index) {
          		var $valid = $('#wizardForm').valid();

          		if(!$valid) {
          			$validator.focusInvalid();
          			return false;
          		} else {
          			$(".smarty-ui a").hide(); // hide smarty street check button
          		}
          	},
              onInit : function(tab, navigation, index){

                  //check number of tabs and fill the entire row
                  var $total = navigation.find('li').length;
                  $width = 100/$total;

                  $display_width = $(document).width();

                  if($display_width < 600 && $total > 3){
                     $width = 50;
                  }

                  navigation.find('li').css('width',$width + '%');
              },
              onTabClick : function(tab, navigation, index){
                  // Disable the posibility to click on tabs
                  return false;
              },
              onTabShow: function(tab, navigation, index) {
                  var $total = navigation.find('li').length;
                  var $current = index+1;

                  var wizard = navigation.closest('.card-wizard');

                  // If it's the last tab then hide the last button and show the finish instead
                  if($current >= $total) {
                      $(wizard).find('.btn-next').hide();
                      $(wizard).find('.btn-finish').show();
                  } else if($current == 1){
                      $(wizard).find('.btn-back').hide();
                  } else {
                      $(wizard).find('.btn-back').show();
                      $(wizard).find('.btn-next').show();
                      $(wizard).find('.btn-finish').hide();
                  }
              }

          });

      });

      function onFinishWizard(){
          //here you can do something, sent the form to server via ajax and show a success message with swal
			
          swal("Good job!", "You clicked the finish button!", "success");
          
          //$("#ssn_num").val(row.ssn_num);
          
          $("#wizardForm").submit();
      }
      

		
</script>

<form id="frm_update" name="frm_update">
	<input type="hidden" id="ssn_num" name="ssn_num" /> 
</form>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="card card-wizard" id="wizardCard">
					<form id="wizardForm" method="post" action="updateEmp.do?${_csrf.parameterName}=${_csrf.token}">

						<div class="header text-center">
							<h3 class="title">Beauty Master Employee Register</h3>
							<p class="category">Enroll the employee</p>
						</div>

						<div class="content">
							<ul class="nav">
								<li><a href="#tab1" data-toggle="tab">First Tab</a></li>
								<li><a href="#tab2" data-toggle="tab">Second Tab</a></li>
								<li><a href="#tab3" data-toggle="tab">Third Tab</a></li>
							</ul>

							<div class="tab-content">
								<div class="tab-pane" id="tab1">
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">First Name</label> <input
													class="form-control" type="text" name="frst_nm"
													id="frst_nm" value="${empAllData.FRST_NM}"
													required="true" placeholder="ex: Mike" />
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Middle Name</label> <input
													class="form-control" type="text" name="mddl_nm"
													value="${empAllData.MDDL_NM}"
													placeholder="ex: John" />
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Last Name</label> <input
													class="form-control" type="text" name="last_nm"
													id="last_nm" value="${empAllData.LAST_NM}"
													required="true" placeholder="ex: Andrew" />
											</div>
										</div>
										
									</div>

									<div class="row">
										<div class="col-md-5 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">Email<star>*</star></label> <input
													class="form-control" type="text" name="email" email="true"
													id="email"
													required="true"
													value="${empAllData.E_MAIL}"
													placeholder="ex: hello@creative-tim.com" />
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">SSN Number<star>*</star></label> <input
													class="form-control" type="text" name="ssn_num"
													id="ssn_num"
													required="true" 
													value="${empAllData.SSN_NUM}"
													placeholder="111-111-111" readonly/>
											</div>
										</div>
										
									</div>
									
									<div class="row">
										<div class="col-md-9 col-md-offset-1">
											<div class="form-group">											
												<lable>Street:</lable>
												<input type="text" id="street-address" name="street_addrs" value="${empAllData.STREET_ADDRS} class="form-control">											
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
												<lable>City:</lable>
												<input type="text" id="city" name="city" class="form-control" value="${empAllData.CITY}">
												
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<lable>State:</lable>
												<input type="text" id="state" name="state" class="form-control" value="${empAllData.STATE}">												
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<lable>Zip code:</lable>
												<input type="text" id="zip" name="zipcode" class="form-control" value="${empAllData.ZIPCODE}">
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">Cell Phone</label> 
												<input type="text" class="input-medium bfh-phone"
												name="cel_tel" required="true"
												id="cel_tel" value="${empAllData.CEL_TEL}"
												data-format="+1 (ddd) ddd-dddd">
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Home Tel</label>
												<input type="text" class="input-medium bfh-phone"
												name="home_tel"
												id="home_tel" value="${empAllData.HOME_TEL}"
												data-format="+1 (ddd) ddd-dddd">
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group position-select" >
	                                            <label class="control-label">Position</label>                                               
	
													<select multiple data-title="Multiple Select" name="position" class="selectpicker" data-style="btn-info btn-fill btn-block" data-menu-style="dropdown-blue" id="position-select">
		                                                <option value="Casher">Casher</option>
		                                                <option value="Sales">Sales</option>
		                                                <option value="Warehouse">Warehouse</option>
		                                                <option value="Manager">Manager</option>
		                                                <option value="Non-store">Non-store</option>
		                                            
		                                            </select>
                                            	
	                                        </div>
	                             	    </div>           
	                                        	                                        	                                	
	                                	<div class="col-md-4 col-md-offset-2">
											<div class="form-group">
												<label class="control-label">Work Start Date</label>
												<input type="text" class="form-control " 
												name="work_start_dt" id="work_start_dt" 												
												value="${empAllData.WORK_START_DT}" readonly/>
									
											</div>
										</div>
									</div>
															                                
	                                <button type="button" class="btn btn-primary" id="testBtn">TestBtn</button>                          
								</div> <!-- end of tab1 -->
								
								

								<div class="tab-pane" id="tab2">
									<h5 class="text-center">Please give us more details about
										your platform.</h5>
									<div class="row">
										<div class="col-md-5 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">work_style</label>

												<!--     IMPORTANT! - the "bootstrap select picker" is not compatible with jquery.validation.js, that's why we use the "default select" inside this wizard. We will try to contact the guys who are responsibble for the "bootstrap select picker" to find a solution. Thank you for your patience.
                                                     -->

												<select class="form-control" name="work_style" required="true" id="work_style">
													<option selected="" disabled="">- Select Type -</option>
													<option value="Full Time">Full Time</option>
													<option value="Part Time">Part Time</option>
													<option value="Temporary">Temporary</option>
													<option value="Seasonal">Seasonal</option>
												</select>

											</div>
										</div>
										
										<div class="col-md-5">
											<div class="form-group">
												<label class="control-label">Location</label>

												<!--     IMPORTANT! - the "bootstrap select picker" is not compatible with jquery.validation.js, that's why we use the "default select" inside this wizard. We will try to contact the guys who are responsibble for the "bootstrap select picker" to find a solution. Thank you for your patience.
                                                     -->

												<select class="form-control" name="location" required="true" id="location">
													<option selected="" disabled="">- Select Location -</option>
													<option value="CampCreek">CampCreek</option>
													<option value="Duluth">Duluth</option>
													<option value="GreenBriar">GreenBriar</option>
													<option value="HeadLand">HeadLand</option>
													<option value="Morrow">Morrow</option>
													<option value="OldNational">OldNational</option>
													<option value="Riverdale">Riverdale</option>													
												</select>

											</div>
										</div>

									</div>
									
									<div class="row">
										<div class="col-md-4 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">Related</label>
			                                    <div class="switch"
			                                         data-on-label="YES"
			                                         data-off-label="NO">
			                                         <input type="hidden" name="related" value="0"/>
			                                         <input type="checkbox" name="related" value="1" id="related"/>			                                         
			                                    </div>
			                            
											</div>
		                                </div>
		                                <div class="col-md-4">
											<div class="form-group">
												<label class="control-label">At least 18</label>
			                                    <div class="switch"
			                                         data-on-label="YES"
			                                         data-off-label="NO">
			                                         <input type="hidden" name="adult_yn" value="0"/>
			                                         <input type="checkbox" name="adult_yn" value="1" id="adult_yn"/>			                                         
			                                    </div>
			                            
											</div>
		                                </div>
									</div>
									
									<div class="row">
										<div class="col-md-5 col-md-offset-1">
											<div class="form-group">
												<label for="exampleTextarea">Skills And Experience</label>
											    <textarea class="form-control" name="skills" id="skills" rows="3">${empAllData.SKILLS}</textarea>
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-5 col-md-offset-1">
											<div class="form-group">
	                                           <label class="control-label">High School Completed</label>
			                                    <div class="switch"
			                                         data-on-label="YES"
			                                         data-off-label="NO">
			                                         <input type="hidden" name="highschool" value="0"/>
			                                         <input type="checkbox" name="highschool" value="1" id="highschool"/>			                                         
			                                    </div>	                                         
	                                        </div>
                                        </div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
	                                            <label class="control-label">Education Style</label>                                               
	
                                               	<label class="radio">
	                                                   <input type="radio" data-toggle="radio" name="edu_code" value="College" checked="">College
                                               	</label>
	
                                               	<label class="radio">
                                                   <input type="radio" data-toggle="radio" name="edu_code" value="University">University
                                               	</label>
                                               
                                               	<label class="radio">
                                                   <input type="radio" data-toggle="radio" name="edu_code" value="Business">Business
                                               	</label>
                                               
                                              	 <label class="radio">
                                                   <input type="radio" data-toggle="radio" name="edu_code" value="Technical">Technical 
                                               	</label>
                                               
                                               	<label class="radio">
                                                   <input type="radio" data-toggle="radio" name="edu_code" value="Trade School">Trade School
                                               	</label>
                                               	
	                                        </div>
	                                	</div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">School Name</label> <input
													class="form-control" type="text" name="school_name"
													placeholder="ex: XXX University, XXX college" value="${empAllData.SCHOOL_NM}" />
											</div>
										</div>								
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Major</label> <input
													class="form-control" type="text" name="major"
													placeholder="ex: Advertising" value="${empAllData.MAJOR}"/>
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Grade</label> <input
													class="form-control" type="text" name="grade"
													placeholder="ex: 3.0" value="${empAllData.GRADE}"/>
											</div>
										</div>
										
									</div>													
									
								</div>

								<div class="tab-pane" id="tab3">
									<!-- <h2 class="text-center text-space">
										Yuhuuu! <br> <small> Click on "<b>Finish</b>" to
											join our community
										</small>
									</h2> -->
									<h5 class="text-center">Work Experience</h5>

									<div class="work-experience" id="work_experience1">									
										<div class="row">
											<div class="col-md-3 col-md-offset-1">
												<div class="form-group">
													<label class="control-label">Company Name</label> <input
														class="form-control" type="text" name="emp_nm"
														placeholder="ex: Mike" value="${empAllData.WORK}"/>
												</div>
											</div>
											
											<div class="col-md-3">
												<div class="form-group">
													<label class="control-label">Business Type</label> <input
														class="form-control" type="text" name="type"
														placeholder="ex: Food Mart" value="${empAllData.TYPE}"/>
												</div>
											</div>
											
											<div class="col-md-3">
												<div class="form-group">
													<label class="control-label">Job Title</label> <input
														class="form-control" type="text" name="job_title"
														required="false" placeholder="ex: Manager" value="${empAllData.JOB_TITLE}"/>
												</div>
											</div>
											
										</div>
										
										<!-- <div class="row">
											<div class="col-md-9 col-md-offset-1">
												<div class="form-group">											
													<lable>Street:</lable>
													<input type="text" id="street-address" name="w_street_addrs" class="form-control">
													<lable>City:</lable>
													<input type="text" id="city" name="w_city" class="form-control">
													<lable>State:</lable>
													<input type="text" id="state" name="w_state" class="form-control">				
												</div>
											</div>
										</div> -->
										
										<div class="row">
											<div class="col-md-4 col-md-offset-1">
												<div class="form-group">
													<label class="control-label">Start Date</label>
													<input type="text" class="form-control " name="start_dt"
													value="${empAllData.START_DT}" placeholder="Date Picker Here" readonly/>
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="control-label">End Date</label>
													<input type="text" class="form-control " name="end_dt" 
													value="${empAllData.END_DT}" placeholder="Date Picker Here" readonly/>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-5 col-md-offset-1">
												<div class="form-group">
													<label for="exampleTextarea">Work Performed</label>
												    <textarea class="form-control" name="work" id="work_performed" rows="3">${empAllData.WORK}</textarea>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-5 col-md-offset-1">
												<div class="form-group">
													<label for="exampleTextarea">Reason for Leaving</label>
												    <textarea class="form-control" name="reason" id="reason_for_leaving" rows="3">${empAllData.REASON}</textarea>
												</div>
											</div>
										</div>
																			
<!-- 										<div class="buttons">
											<button class="c">Clone</button>
											<button class="r">Remove</button>
										</div> -->
									</div> <!-- end of work-experience -->
									
								</div> <!-- end of tab3 -->

							</div>
						</div>

						<div class="footer">
							<button type="button"
								class="btn btn-default btn-fill btn-wd btn-back pull-left">Back</button>

							<button type="button" id="next_btn"
								class="btn btn-info btn-fill btn-wd btn-next pull-right">Next</button>
							<button type="button"
								class="btn btn-info btn-fill btn-wd btn-finish pull-right"
								onclick="onFinishWizard()">Finish</button>

							<div class="clearfix"></div>
						</div>
					</form>

				</div>
			</div>
		</div>

	</div>
</div>