<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a><b>Login</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      
        <div class="input-group mb-3">
          <input type="email" id="userName" class="form-control" placeholder="User Name">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" id="userPassword" class="form-control" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="col-sm-12">
                      <!-- select -->
                      <div class="form-group">
                        <label>Select Service Type</label>
                        <select id="userService" class="form-control">
                          <option value="SBMU">SBM-U</option>
                          <option value="DAYNULM">DAY-NULM</option>
                          <option value="PMAYHFA">PMAY-HFA</option>
                          <option value="AMRUT">AMRUT</option>
                          <option value="COMMON">COMMON</option>
                          <option value="COMMONCARDINFO">COMMONCARDINFO</option>
                        </select>
                      </div>
                    </div>
                    
                    <div class="col-sm-12">
                      <!-- select -->
                      <div class="form-group">
                        <label>Select Service Type</label>
                        <select id="ulbNames" class="form-control">
                       	
                          
                          
                        </select>
                      </div>
                    </div>
                    
        <div class="row">
          <div class="col-8">
           
          </div>
          <!-- /.col -->
          <div class="col-12">
            <button type="submit" id="submitBtn" class="btn btn-primary btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      

      
       
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
  
  
   $.ajax({
      type: 'get',
      url: "/ulbDetails", 
      async: false,
      contentType: "application/json;",
	  

    success: function(result){
    
    for (let li of result) {
    let product = $(li);
   $('#ulbNames').append(new Option(product[0].ulbName, product[0].ulbName));
}
    
    }
    	});
  
  
  
   $("#submitBtn").click(function(){
 
   var userName = $('#userName').val();
   var userPassword = $('#userPassword').val();
   var userService = $('#userService').val();
   
   if(userName=="" || userPassword==""){
        swal( "Oops" ,  "Please Enter UserName and Password!" ,  "warning" );
       return;
      }
       var data_json = {"userName":userName,"password":userPassword ,"service":userService}; 
   
     $.ajax({
      type: 'post',
      url: "/loginAuth", 
      async: false,
      contentType: "application/json;",
	  data: JSON.stringify(data_json),

    success: function(result){
    
   if(result === "success"){
	window.location.replace("/ServiceEditForm");
			}
			else if(result === "fail"){
			 swal( "Oops" ,  "User Not Exist!" ,  "warning" );
			}else{
			window.location.replace("/login");
			}
    }
   		
    });
  });
  });

</script>
</body>
</html>
