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
		
		$("#testBtn").on('click', function(e) {
			alert("clicked!!");
			//alert($("#wizardForm input[type='radio']:checked").val());
			//alert($("#wizardForm input[type='checkbox']:checked").val());

		});
		
/* 		jQuery.LiveAddress({
			key: "27443863863185130",
			debug: false,
			target: "US", // INTERNATIONAL
			autocomplete: 5,
			autoVerify: true,
			addresses : [ {
				address1 : '#street-address',
				locality : '#city',
				administrative_area : '#state',
				postal_code : '#zip',
				country : '#country'
			} ]
		}); */
		

	});
	
	
	console.log("register page entered");
	
	
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
			alert("zz);")
          swal("Good job!", "You clicked the finish button!", "success");
          
          $("#wizardForm").submit();
      }
</script>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="card card-wizard" id="wizardCard">
					<form id="wizardForm" method="post" action="complete.do">

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
													id="frst_nm"
													required="true" placeholder="ex: Mike" />
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Middle Name</label> <input
													class="form-control" type="text" name="mddl_nm"
													placeholder="ex: John" />
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Last Name</label> <input
													class="form-control" type="text" name="last_nm"
													id="last_nm"
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
													placeholder="ex: hello@creative-tim.com" />
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">SSN Number<star>*</star></label> <input
													class="form-control" type="text" name="ssn_num"
													id="ssn_num"
													required="true" 
													placeholder="111-111-111" />
											</div>
										</div>
										
									</div>
									
									<div class="row">
										<div class="col-md-9 col-md-offset-1">
											<div class="form-group">											
												<lable>Street:</lable>
												<input type="text" id="street-address" name="street_addrs" class="form-control">											
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
												<lable>City:</lable>
												<input type="text" id="city" name="city" class="form-control">
												
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<lable>State:</lable>
												<input type="text" id="state" name="state" class="form-control">												
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<lable>Zip code:</lable>
												<input type="text" id="zip" name="zipcode" class="form-control">
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">Cell Phone</label> 
												<input type="text" class="input-medium bfh-phone"
												name="cel_tel" required="true"
												id="cel_tel"
												data-format="+1 (ddd) ddd-dddd">
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Home Tel</label>
												<input type="text" class="input-medium bfh-phone"
												name="home_tel"
												id="home_tel"
												data-format="+1 (ddd) ddd-dddd">
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
	                                            <label class="control-label">Position</label>                                               
	
													<select multiple data-title="Multiple Select" name="position" class="selectpicker" data-style="btn-info btn-fill btn-block" data-menu-style="dropdown-blue">
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
												<input type="text" class="form-control datepicker" name="work_start_dt" placeholder="Date Picker Here"/>
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

												<select class="form-control" name="work_style" required="true">
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

												<select class="form-control" name="location" required="true">
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
			                                         <input type="checkbox" name="related" value="1"/>			                                         
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
			                                         <input type="checkbox" name="adult_yn" value="1"/>			                                         
			                                    </div>
			                            
											</div>
		                                </div>
									</div>
									
									<div class="row">
										<div class="col-md-5 col-md-offset-1">
											<div class="form-group">
												<label for="exampleTextarea">Skills And Experience</label>
											    <textarea class="form-control" name="skills" id="skills" rows="3"></textarea>
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
			                                         <input type="checkbox" name="highschool" value="1"/>			                                         
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
													placeholder="ex: XXX University, XXX college" />
											</div>
										</div>								
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Major</label> <input
													class="form-control" type="text" name="major"
													placeholder="ex: Advertising" />
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Grade</label> <input
													class="form-control" type="text" name="grade"
													placeholder="ex: 3.0" />
											</div>
										</div>
										
									</div>
									
									<!-- <div class="row">
										<div class="col-md-5 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">Framework Type</label> <input
													class="form-control" type="text" name="framework"
													placeholder="ex: http://www.creative-tim.com" />
											</div>
										</div>

										<div class="col-md-5">
											<div class="form-group">
												<label class="control-label">Language<star>*</star></label>

												    IMPORTANT! - the "bootstrap select picker" is not compatible with jquery.validation.js, that's why we use the "default select" inside this wizard. We will try to contact the guys who are responsibble for the "bootstrap select picker" to find a solution. Thank you for your patience.
                                                    

												<select name="cities" class="form-control">
													<option selected="" disabled="">- language -</option>
													<option value="ms">Bahasa Melayu</option>
													<option value="ca">Català</option>
													<option value="da">Dansk</option>
													<option value="de">Deutsch</option>
													<option value="en">English</option>
													<option value="es">Español</option>
													<option value="el">Eλληνικά</option>
													<option value="fr">Français</option>
													<option value="it">Italiano</option>
													<option value="hu">Magyar</option>
													<option value="nl">Nederlands</option>
													<option value="no">Norsk</option>
													<option value="pl">Polski</option>
													<option value="pt">Português</option>
													<option value="fi">Suomi</option>
													<option value="sv">Svenska</option>
													<option value="tr">Türkçe</option>
													<option value="is">Íslenska</option>
													<option value="cs">Čeština</option>
													<option value="ru">Русский</option>
													<option value="th">ภาษาไทย</option>
													<option value="zh">中文 (简体)</option>
													<option value="zh-TW">中文 (繁體)</option>
													<option value="ja">日本語</option>
													<option value="ko">한국어</option>
												</select>

											</div>
										</div>
									</div> -->
									
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
														placeholder="ex: Mike" />
												</div>
											</div>
											
											<div class="col-md-3">
												<div class="form-group">
													<label class="control-label">Business Type</label> <input
														class="form-control" type="text" name="type"
														placeholder="ex: Food Mart" />
												</div>
											</div>
											
											<div class="col-md-3">
												<div class="form-group">
													<label class="control-label">Job Title</label> <input
														class="form-control" type="text" name="job_title"
														required="false" placeholder="ex: Manager" />
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
													<input type="text" class="form-control datepicker" name="start_dt" placeholder="Date Picker Here"/>
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="control-label">End Date</label>
													<input type="text" class="form-control datepicker" name="end_dt" placeholder="Date Picker Here"/>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-5 col-md-offset-1">
												<div class="form-group">
													<label for="exampleTextarea">Work Performed</label>
												    <textarea class="form-control" name="work" id="work_performed" rows="3"></textarea>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-5 col-md-offset-1">
												<div class="form-group">
													<label for="exampleTextarea">Reason for Leaving</label>
												    <textarea class="form-control" name="reason" id="reason_for_leaving" rows="3"></textarea>
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