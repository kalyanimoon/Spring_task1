<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$.validator.setDefaults({
		highlight: function(element){
			$(element)
			.closest('.form-group')
			.addClass('has-error')
		},
		unhighlight: function(element){
			$(element)
			.closest('.form-group')
			.removeClass('has-error')
		}
	});
	
	$.validate({
		rules:
		{	
		    password: "required",
			birthDate: "required",
			weight: {
			    required:true,
			    number:true
			},
			height:  {
			    required:true,
			    number:true
			},
			email: {
				required: true,
				email: true
			}
		},
			messages:{			
				email: {
				required: true,
				email: true
			}
		},
				password: {
					required: " Please enter password"
				},
				birthDate: {
					required: " Please enter birthdate"
				},
				email: {
					required: ' Please enter email',
					email: ' Please enter valid email'
				},
				weight: {
					required: " Please enter your weight",
					number: " Only numbers allowed"
				},
				height: {
					required: " Please enter your height",
					number: " Only numbers allowed"
				},
			}
			
	});
});
</script>
<style type="text/css">
body {
     background-color:teal;
    background-size: cover;
}

*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    border-radius: 0.3em;
    background-color: #f2f2f2;
}

*[role="form"] h2 { 
    font-family: 'Open Sans' , sans-serif;
    font-size: 30px;
    font-weight: 600;
    color: #000000;
    margin-top: 5%;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 4px;
}


</style>
</head>
<body>
<div class="container">
            <form class="form-horizontal" role="form" action="saveStudent" method="post">
                <h2>Registration Form</h2>
                <div class="form-group">
                    <label for="Student_No" class="col-sm-3 control-label">STUDENT_NO</label>
                    <div class="col-sm-9">
                        <input type="text" id="Student_No" placeholder="Student_No" name="STUDENT_NO" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="Student_Name" class="col-sm-3 control-label">STUDENT_NAME</label>
                    <div class="col-sm-9">
                        <input type="text" id="Student_Name" placeholder="Student_Name" name="STUDENT_NAME" class="form-control" autofocus>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="DobDate" class="col-sm-3 control-label">STUDENT_DOB</label>
                    <div class="col-sm-9">
                        <input type="date" id="birthDate" class="form-control" name="STUDENT_DOB">
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="DofDate" class="col-sm-3 control-label">STUDENT_DOJ</label>
                    <div class="col-sm-9">
                        <input type="date" id="DojDate" class="form-control" name="STUDENT_DOJ">
                    </div>
                </div>
               
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </form> <!-- /form -->
        </div> <!-- ./container -->
 
 </div>
</body>
</html>