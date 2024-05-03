<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Data Entry Form</title>

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
                <h3 class="card-title">Common Cards</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <div id="quickForm">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">financial_year</label>
                    <select class="check" id="financial_year" style="width: 50%;">
                    <option value="2022-2023">2022-2023</option>
                    </select>
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Property Tax Total</label>
                    <input type="text" name="pt_total" class="form-control" id="pt_total" placeholder="Enter PropertyTax Total">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Trade Licence Total</label>
                    <input type="text" name="tl_total" class="form-control" id="tl_total" placeholder="Enter Trade Licence Total">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Miscellaneous Total</label>
                    <input type="text" name="uc_total" class="form-control" id="uc_total" placeholder="Enter Miscellaneous Total">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Trade Licence Top 1</label>
                    <input type="text" name="tl_top1" class="form-control" id="tl_top1" placeholder="Enter Trade Licence Top 1">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Trade Licence Top 2</label>
                    <input type="text" name="tl_top2" class="form-control" id="tl_top2" placeholder="Enter Trade Licence Top 2">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Trade Licence Bottom 1</label>
                    <input type="text" name="tl_bottom1" class="form-control" id="tl_bottom1" placeholder="Enter d2d_waste_collection">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Trade Licence Bottom 2</label>
                    <input type="text" name="tl_bottom2" class="form-control" id="tl_bottom2" placeholder="Enter Trade Licence Bottom 2">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Property Tax Top 1</label>
                    <input type="text" name="pt_top1" class="form-control" id="pt_top1" placeholder="Enter Property Tax Top 1">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Property Tax Top 2</label>
                    <input type="text" name="pt_top2" class="form-control" id="pt_top2" placeholder="Enter Property Tax Top 2">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Property Tax Bottom 1</label>
                    <input type="text" name="pt_bottom1" class="form-control" id="pt_bottom1" placeholder="Enter Property Tax Bottom 1">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Property Tax Bottom 2</label>
                    <input type="text" name="pt_bottom2" class="form-control" id="pt_bottom2" placeholder="Enter Property Tax Bottom 2">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Miscellaneous Collection Top 1</label>
                    <input type="text" name="uc_top1" class="form-control" id="uc_top1" placeholder="Enter Miscellaneous Collection Top 1">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Miscellaneous Collection Top 2</label>
                    <input type="text" name="uc_top2" class="form-control" id="uc_top2" placeholder="Enter Miscellaneous Collection Top 2">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Miscellaneous Collection Bottom 1</label>
                    <input type="text" name="uc_bottom1" class="form-control" id="uc_bottom1" placeholder="Enter Miscellaneous Collection Bottom 1">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Miscellaneous Collection Bottom 2</label>
                    <input type="text" name="uc_bottom2" class="form-control" id="uc_bottom2" placeholder="Enter Miscellaneous Collection Bottom 2">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Residential Property</label>
                    <input type="text" name="residential" class="form-control" id="residential" placeholder="Enter Residential">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Non-Residential Property</label>
                    <input type="text" name="nonresidential" class="form-control" id="nonresidential" placeholder="Enter Non-Residential">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Mixed Property</label>
                    <input type="text" name="mixed" class="form-control" id="mixed" placeholder="Enter Mixed Property">
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
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
  $("#btn").click(function(){
    
   var financial_year=$('#financial_year'). val(); 
   var pt_total=$('#pt_total'). val(); 
   var tl_total=$('#tl_total'). val(); 
   var uc_total=$('#uc_total'). val(); 
   var tl_top1=$('#tl_top1'). val(); 
   var tl_top2=$('#tl_top2'). val(); 
   var tl_bottom1=$('#tl_bottom1'). val(); 
   var tl_bottom2=$('#tl_bottom2'). val(); 
   var pt_top1=$('#pt_top1'). val(); 
   var pt_top2=$('#pt_top2'). val(); 
   var pt_bottom1=$('#pt_bottom1'). val(); 
   var pt_bottom2=$('#pt_bottom2'). val(); 
   var uc_top1=$('#uc_top1'). val(); 
   var uc_top2=$('#uc_top2'). val(); 
   var uc_bottom1=$('#uc_bottom1'). val(); 
   var uc_bottom2=$('#uc_bottom2'). val(); 
   var residential=$('#residential'). val(); 
   var nonresidential=$('#nonresidential'). val(); 
   var mixed=$('#mixed'). val(); 
   var event ="create_data_common";
    

    var data_json = {"financialYear":financial_year, "ptTotal":pt_total ,  "tlTotal":tl_total ,  "ucTotal":uc_total ,  "tlTop1":tl_top1 ,  "tlTop2":tl_top2 ,  "tlBottom1":tl_bottom1 ,  "tlBottom2":tl_bottom2 ,  "ptTop1":pt_top1 ,  "ptTop2":pt_top2 ,  "ptBottom1":pt_bottom1 ,  "ptBottom2":pt_bottom2 ,  "ucTop1":uc_top1 ,  "ucTop2":uc_top2 ,  "ucBottom1":uc_bottom1 ,  "ucBottom2":uc_bottom2 ,  "residential":residential ,  "nonResidential":nonresidential ,  "mixed":mixed};
    
  $.ajax({
      type: 'post',
      url: "/common_card_data_create", 
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
