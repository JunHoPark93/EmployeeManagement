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
			alert($("#wizardForm input[type='radio']:checked").val());
		});
		
				
		/* var regex = /^(.+?)(\d+)$/i;
		var cloneIndex = $(".work-experience").length;
		
		function clone() {
			alert("cloning");
			$(this).parents(".work-experience").clone().appendTo("body").attr("id", "work_experience"+cloneIndex)
			.find("*")
			.each(function() {
				var id = this.id || "";
	            var match = id.match(regex) || [];
	            if (match.length == 3) {
	                this.id = match[1] + (cloneIndex);
	            }
			})
			.on('click', 'button.clone', clone)
	        .on('click', 'button.remove', remove);
	    
			cloneIndex++;
		}
		
		function remove(){
		    $(this).parents(".clonedInput").remove();
		}
		
		$("button .c").on("click", clone);

		$("button .r").on("click", remove); */


	});
	
	
	console.log("register page entered");

	//console.log($('input:radio[name=optionsRadios]:checked').val());
	
	
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
                  minlength: 5
  		    },
  		    last_name: {
  		        required: false,
                  minlength: 5
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
          
          //$("#wizardForm").attr("action", "complete.do");
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
							<p class="category">Split a complicated flow in multiple
								steps</p>
						</div>

						<div class="content">
							<ul class="nav">
								<li><a href="#tab1" data-toggle="tab">First Tab</a></li>
								<li><a href="#tab2" data-toggle="tab">Second Tab</a></li>
								<li><a href="#tab3" data-toggle="tab">Third Tab</a></li>
							</ul>

							<div class="tab-content">
								<div class="tab-pane" id="tab1">
									<h5 class="text-center">Please tell us more about
										yourself.</h5>

									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">First Name</label> <input
													class="form-control" type="text" name="first_name"
													required="true" placeholder="ex: Mike" />
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Middle Name</label> <input
													class="form-control" type="text" name="middle_name"
													placeholder="ex: John" />
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Last Name</label> <input
													class="form-control" type="text" name="last_name"
													required="true" placeholder="ex: Andrew" />
											</div>
										</div>
										
									</div>

									<div class="row">
										<div class="col-md-5 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">Email<star>*</star></label> <input
													class="form-control" type="text" name="email" email="true"
													placeholder="ex: hello@creative-tim.com" />
											</div>
										</div>
										
										<div class="col-md-5">
											<div class="form-group">
												<label class="control-label">SSN Number<star>*</star></label> <input
													class="form-control" type="text" name="ssn"
													required="true" 
													placeholder="111-111-111" />
											</div>
										</div>
										
									</div>
									
									<div class="row">
										<div class="col-md-9 col-md-offset-1">
											<div class="form-group">											
												<lable>Street:</lable>
												<input type="text" id="street-address" name="street-address" class="form-control">
												<lable>City:</lable>
												<input type="text" id="city" name="city" class="form-control">
												<lable>State:</lable>
												<input type="text" id="state" name="state" class="form-control">
												<lable>Zip code:</lable>
												<input type="text" id="zip" name="zip" class="form-control">
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">Cell Phone</label> 
												<input type="text" class="input-medium bfh-phone"
												name="phone" 
												data-format="+1 (ddd) ddd-dddd">
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
	                                            <label class="control-label">Checkboxes and radios</label>                                               
	
                                               	<label class="radio">
	                                                   <input type="radio" data-toggle="radio" name="optionsRadios" value="Casher" checked="">Casher
                                               	</label>
	
                                               	<label class="radio">
                                                   <input type="radio" data-toggle="radio" name="optionsRadios" value="Sales">Sales
                                               	</label>
                                               
                                               	<label class="radio">
                                                   <input type="radio" data-toggle="radio" name="optionsRadios" value="Warehouse">Warehouse
                                               	</label>
                                               
                                              	 <label class="radio">
                                                   <input type="radio" data-toggle="radio" name="optionsRadios" value="manager">Full-time store assistant manager 
                                               	</label>
                                               
                                               	<label class="radio">
                                                   <input type="radio" data-toggle="radio" name="optionsRadios" value="Non-store">Non-store position
                                               	</label>
                                               	
	                                        </div>
	                                	</div>
									</div>
									
									<!-- <div class="row">
										<div class="col-sm-10">
									  		<div class="form-group">
		                                    	<label class="col-sm-2 control-label">Position</label>		                                          
	                                               <label class="radio">
	                                                   <input type="radio" data-toggle="radio" name="optionsRadios" value="option1" checked="">Casher
	                                               </label>
		
	                                               <label class="radio">
	                                                   <input type="radio" data-toggle="radio" name="optionsRadios" value="option2">Sales
	                                               </label>
	                                               
	                                               <label class="radio">
	                                                   <input type="radio" data-toggle="radio" name="optionsRadios" value="option2">Warehouse
	                                               </label>
	                                               
	                                               <label class="radio">
	                                                   <input type="radio" data-toggle="radio" name="optionsRadios" value="option2">Full-time store assistant manager 
	                                               </label>
	                                               
	                                               <label class="radio">
	                                                   <input type="radio" data-toggle="radio" name="optionsRadios" value="option2">Non-store position
	                                               </label>
		                                     </div>
		                                </div>
	                                </div>     --> 
	                                
	                                <button type="button" class="btn btn-primary" id="testBtn">TestBtn</button>                          
								</div> <!-- end of tab1 -->
								
								

								<div class="tab-pane" id="tab2">
									<h5 class="text-center">Please give us more details about
										your platform.</h5>
									<!-- <div class="row">
										<div class="col-md-10 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">Your Website<star>*</star></label>
												<input class="form-control" type="text" name="website"
													url="true" placeholder="ex: http://www.creative-tim.com" />
											</div>
										</div>
									</div> -->									
									
									<div class="row">
										<div class="col-md-5 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">Working Type</label>

												<!--     IMPORTANT! - the "bootstrap select picker" is not compatible with jquery.validation.js, that's why we use the "default select" inside this wizard. We will try to contact the guys who are responsibble for the "bootstrap select picker" to find a solution. Thank you for your patience.
                                                     -->

												<select name="cities" class="form-control">
													<option selected="" disabled="">- Select Type -</option>
													<option value="Full Time">Full Time</option>
													<option value="Part Time">Part Time</option>
													<option value="Temporary">Temporary</option>
													<option value="Seasonal">Seasonal</option>
												</select>

											</div>
										</div>

										<div class="col-md-5 ">
											<div class="form-group">
												<label class="control-label">Price</label> <input
													class="form-control" type="text" name="price"
													placeholder="ex: 19.00" />
											</div>
										</div>

									</div>
									
									<div class="row">
										<div class="col-md-4 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">Related</label>
			                                    <div class="switch"
			                                         data-on-label=""
			                                         data-off-label="">
			                                         <input type="checkbox" checked/>
			                                    </div>
			                                    <div class="switch"
			                                         data-on-label=""
			                                         data-off-label="">
			                                         <input type="checkbox"/>
			                                    </div>
											</div>
		                                </div>
									</div>
									
									<div class="row">
										<div class="col-md-5 col-md-offset-1">
											<div class="form-group">
												<label for="exampleTextarea">Skills And Experience</label>
											    <textarea class="form-control" id="skills" rows="3"></textarea>
											</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-5 col-md-offset-1">
											<div class="form-group">
	                                           	<label class="col-sm-2 control-label">High School completed</label>
	                                           	<div class="col-sm-10">
	                                                <label class="checkbox checkbox-inline">
	                                                    <input type="checkbox" data-toggle="checkbox" value="option1">YES
	                                                </label>
	
	                                                <label class="checkbox checkbox-inline">
	                                                    <input type="checkbox" data-toggle="checkbox" value="option2">NO
	                                                </label>		                                         
	                                           	</div>
                                        	</div>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-3 col-md-offset-1">
											<div class="form-group">
												<label class="control-label">School Name</label> <input
													class="form-control" type="text" name="school_name"
													required="true" placeholder="ex: Mike" />
											</div>
										</div>								
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Major</label> <input
													class="form-control" type="text" name="last_name"
													required="true" placeholder="ex: Andrew" />
											</div>
										</div>
										
										<div class="col-md-3">
											<div class="form-group">
												<label class="control-label">Grade</label> <input
													class="form-control" type="text" name="last_name"
													required="true" placeholder="ex: Andrew" />
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


									<div class="work-experience" id="work_experience1">									
										<div class="row">
											<div class="col-md-3 col-md-offset-1">
												<div class="form-group">
													<label class="control-label">Employer Name</label> <input
														class="form-control" type="text" name="employer_name"
														placeholder="ex: Mike" />
												</div>
											</div>
											
											<div class="col-md-3">
												<div class="form-group">
													<label class="control-label">Business Type</label> <input
														class="form-control" type="text" name="businesss_type"
														placeholder="ex: John" />
												</div>
											</div>
											
											<div class="col-md-3">
												<div class="form-group">
													<label class="control-label">Job Title</label> <input
														class="form-control" type="text" name="job_title"
														required="true" placeholder="ex: Andrew" />
												</div>
											</div>
											
										</div>
										
										<div class="row">
											<div class="col-md-9 col-md-offset-1">
												<div class="form-group">											
													<lable>Street:</lable>
													<input type="text" id="street-address" name="street-address" class="form-control">
													<lable>City:</lable>
													<input type="text" id="city" name="city" class="form-control">
													<lable>State:</lable>
													<input type="text" id="state" name="state" class="form-control">				
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-4 col-md-offset-1">
												<div class="form-group">
													<label class="control-label">Start Date</label>
													<input type="text" class="form-control datepicker" name="start_date" placeholder="Date Picker Here"/>
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="control-label">End Date</label>
													<input type="text" class="form-control datepicker" name="end_date" placeholder="Date Picker Here"/>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-5 col-md-offset-1">
												<div class="form-group">
													<label for="exampleTextarea">Work Performed</label>
												    <textarea class="form-control" id="work_performed" rows="3"></textarea>
												</div>
											</div>
										</div>
										
										<div class="row">
											<div class="col-md-5 col-md-offset-1">
												<div class="form-group">
													<label for="exampleTextarea">Reason for Leaving</label>
												    <textarea class="form-control" id="reason_for_leaving" rows="3"></textarea>
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

							<button type="button"
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