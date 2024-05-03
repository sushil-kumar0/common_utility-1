<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Data Entry Form PMAY-HFA</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">

  
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        
       
      </li>

      <!-- Messages Dropdown Menu -->
      
      
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
           <a href="/logout">Logout</a>
        </a>
      </li>
      
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Urban Development</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Data Entry Form</a>
        </div>
      </div>

     

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
          
         
          < 
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Dashboard Data Entry</h1>
          </div>
           
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- jquery validation -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">PMAY-HFA</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <div id="quickForm">
                 <div class="card-body">
                  <div class="form-group">
                        <label>Select ULB</label>
                        
                        <select id="ulb_name" class="form-control">
                         
                        </select>
                      </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                     <label>Year</label>
                        
                        <select id="financial_year" class="form-control">
                          <option value="2021">2021</option>
                          <option value="2022">2022</option>
                          <option value="2023">2023</option>
                        </select>
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                     <label>Month</label>
                        
                        <select id="month" class="form-control">
                          <option value="January">January</option>
                          <option value="February">February</option>
                          <option value="March">March</option>
                          <option value="April">April</option>
                          <option value="May">May</option>
                          <option value="June">June</option>
                          <option value="July">July</option>
                          <option value="August">August</option>
                          <option value="September">September</option>
                          <option value="October">October</option>
                          <option value="November">November</option>
                          <option value="December">December</option>
                        </select>
                  </div>
                </div>
                
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Self Blc Acc Count</label>
                    <input type="number" name="self_blc_acc_count" class="form-control" id="self_blc_acc_count" placeholder="Enter self_blc_acc_count">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Self Blc Acc Count Target</label>
                    <input type="number" name="self_blc_acc_count_target" class="form-control" id="self_blc_acc_count_target" placeholder="Enter self_blc_acc_count_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Progress Blc Acc Count</label>
                    <input type="number" name="progress_blc_acc_count" class="form-control" id="progress_blc_acc_count" placeholder="Enter progress_blc_acc_count">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Progress Blc Acc Count Target</label>
                    <input type="number" name="progress_blc_acc_count_target" class="form-control" id="progress_blc_acc_count_target" placeholder="Enter progress_blc_acc_count_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Complete Blc Acc Count</label>
                    <input type="number" name="complete_blc_acc_count" class="form-control" id="complete_blc_acc_count" placeholder="Enter complete_blc_acc_count">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Complete Blc Acc Count Target</label>
                    <input type="number" name="complete_blc_acc_count_target" class="form-control" id="complete_blc_acc_count_target" placeholder="Enter complete_blc_acc_count_target">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Allocated Fund Pmay Hfa</label>
                    <input type="number" name="allocated_fund_pmay_hfa" class="form-control" id="allocated_fund_pmay_hfa" placeholder="Enter allocated_fund_pmay_hfa">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Release Fund Pmay Hfa</label>
                    <input type="number" name="release_fund_pmay_hfa" class="form-control" id="release_fund_pmay_hfa" placeholder="Enter release_fund_pmay_hfa">
                  </div>
                </div>
                
                
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" id="btn" class="btn btn-primary">Submit</button>
                </div>
              </div>
            </div>
            <!-- /.card -->
            </div>
          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-md-6">

          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.2.0
    </div>
    <strong>Copyright &copy; 2022-2023. All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jquery-validation -->
<script src="plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="plugins/jquery-validation/additional-methods.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Page specific script -->
<!-- <script>
$(function () {
  $.validator.setDefaults({
    submitHandler: function () {
      alert( "Form successful submitted!" );
    }
  });
  $('#quickForm').validate({
    rules: {
      email: {
        required: true,
        email: true,
      },
      password: {
        required: true,
        minlength: 5
      },
      terms: {
        required: true
      },
    },
    messages: {
      email: {
        required: "Please enter a email address",
        email: "Please enter a valid email address"
      },
      password: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long"
      },
      terms: "Please accept our terms"
    },
    errorElement: 'span',
    errorPlacement: function (error, element) {
      error.addClass('invalid-feedback');
      element.closest('.form-group').append(error);
    },
    highlight: function (element, errorClass, validClass) {
      $(element).addClass('is-invalid');
    },
    unhighlight: function (element, errorClass, validClass) {
      $(element).removeClass('is-invalid');
    }
  });
});
</script> -->

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
   $('#ulb_name').append(new Option(product[0].ulbName, product[0].ulbName));
}
    
    }
    	});
  
  $("#btn").click(function(){
    
   var ulb_name=$('#ulb_name'). val(); 
   var financial_year=$('#financial_year'). val(); 
   var month=$('#month'). val(); 
   var self_blc_acc_count=$('#self_blc_acc_count'). val(); 
   var progress_blc_acc_count=$('#progress_blc_acc_count'). val(); 
   var complete_blc_acc_count=$('#complete_blc_acc_count'). val();
   
   var self_blc_acc_count_target=$('#self_blc_acc_count_target'). val();
   var progress_blc_acc_count_target=$('#progress_blc_acc_count_target'). val();
   var complete_blc_acc_count_target=$('#complete_blc_acc_count_target'). val();
   var allocated_fund_pmay_hfa=$('#allocated_fund_pmay_hfa'). val();
   var release_fund_pmay_hfa=$('#release_fund_pmay_hfa'). val(); 
   
  
   

    var data_json = {"ulbName":ulb_name ,  "year":financial_year ,  "month":month ,  "selfBlcAccCount":self_blc_acc_count ,  "progressBlcAccCount":progress_blc_acc_count ,  "completeBlcAccCount":complete_blc_acc_count , "extra":"PMAYHFA","selfBlcAccCountTarget":self_blc_acc_count_target ,"progressBlcAccCountTarget":progress_blc_acc_count_target ,"completeBlcAccCountTarget":complete_blc_acc_count_target ,"allocatedFundPmayHfa":allocated_fund_pmay_hfa ,"releaseFundPmayHfa":release_fund_pmay_hfa};
    
   
 
     $.ajax({
      type: 'post',
      url: "/other_service_data_create", 
      async: false,
      contentType: "application/json;",
	  data: JSON.stringify(data_json),

    success: function(response){
    swal( "Success" ,  "Data Added Successfully" ,  "success" );
   
 },
error:function(e){
  alert("Something went wrong");
        }
  });
});

  });
     
  </script>
</body>
</html>
