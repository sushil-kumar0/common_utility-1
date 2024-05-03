<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Data Entry Form AMRUT</title>

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
                <h3 class="card-title">AMRUT</h3>
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
                    <label for="exampleInputEmail1">GIS Master Plan 2041(AMRUT-1)</label>
                    <input type="number" name="gis_master_plan_2041" class="form-control" id="gis_master_plan_2041" placeholder="Enter gis_master_plan_2041">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">GIS Master Plan 2041(AMRUT-1) Target</label>
                    <input type="number" name="gis_master_plan_2041_target" class="form-control" id="gis_master_plan_2041_target" placeholder="Enter gis_master_plan_2041_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">GIS Master Plan 2041(AMRUT-1) Physical Progress</label>
                    <input type="number" name="gis_master_plan_2041_physical" class="form-control" id="gis_master_plan_2041_physical" placeholder="Enter gis_master_plan_2041_physical_progress">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">GIS Master Plan 2041(AMRUT-1) Financial Progress</label>
                    <input type="number" name="gis_master_plan_2041_financial" class="form-control" id="gis_master_plan_2041_financial" placeholder="Enter gis_master_plan_2041_financial_progress">
                  </div>
                </div>
                
                
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Water Supply(AMRUT-1)</label>
                    <input type="number" name="water_supply" class="form-control" id="water_supply" placeholder="Enter water_supply">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Water Supply(AMRUT-1) Target</label>
                    <input type="number" name="water_supply_target" class="form-control" id="water_supply_target" placeholder="Enter water_supply_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Water Supply(AMRUT-1) Physical Progress</label>
                    <input type="number" name="water_supply_physical" class="form-control" id="water_supply_physical" placeholder="Enter water_supply_physical_progress">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Water Supply(AMRUT-1) Financial Progress</label>
                    <input type="number" name="water_supply_financial" class="form-control" id="water_supply_financial" placeholder="Enter water_supply_financial_progress">
                  </div>
                </div>
                
                
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sewerage(AMRUT-1)</label>
                    <input type="number" name="sewerage" class="form-control" id="sewerage" placeholder="Enter sewerage">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sewerage(AMRUT-1) Target</label>
                    <input type="number" name="sewerage_target" class="form-control" id="sewerage_target" placeholder="Enter sewerage_target">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sewerage(AMRUT-1) Physical Progress</label>
                    <input type="number" name="sewerage_physical" class="form-control" id="sewerage_physical" placeholder="Enter sewerage_physical_progress">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sewerage(AMRUT-1) Financial Progress</label>
                    <input type="number" name="sewerage_financial" class="form-control" id="sewerage_financial" placeholder="Enter sewerage_financial_progress">
                  </div>
                </div>
                
                
                
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Drainage(AMRUT-1)</label>
                    <input type="number" name="drainage" class="form-control" id="drainage" placeholder="Enter drainage">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Drainage(AMRUT-1) Target</label>
                    <input type="number" name="drainage_target" class="form-control" id="drainage_target" placeholder="Enter drainage_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Drainage(AMRUT-1) Physical Progress</label>
                    <input type="number" name="drainage_physical" class="form-control" id="drainage_physical" placeholder="Enter drainage_physical_progress">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Drainage(AMRUT-1) Financial Progress</label>
                    <input type="number" name="drainage_financial" class="form-control" id="drainage_financial" placeholder="Enter drainage_financial_progress">
                  </div>
                </div>
                
                
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Parks(AMRUT-1)</label>
                    <input type="number" name="parks" class="form-control" id="parks" placeholder="Enter parks">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Parks(AMRUT-1) Target</label>
                    <input type="number" name="parks_target" class="form-control" id="parks_target" placeholder="Enter parks_target">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Parks(AMRUT-1) Physical Progress</label>
                    <input type="number" name="parks_physical" class="form-control" id="parks_physical" placeholder="Enter parks_physical_progress">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Parks(AMRUT-1) Financial Progress</label>
                    <input type="number" name="parks_financial" class="form-control" id="parks_financial" placeholder="Enter parks_financial_progress">
                  </div>
                </div>
                
                
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Water Supply(AMRUT-2)</label>
                    <input type="number" name="water_supply2" class="form-control" id="water_supply2" placeholder="Enter water_supply_amrut2">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Water Supply(AMRUT-2) Target</label>
                    <input type="number" name="water_supply2_target" class="form-control" id="water_supply2_target" placeholder="Enter water_supply_amrut2_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Water Supply(AMRUT-2) Physical Progress</label>
                    <input type="number" name="water_supply2_physical" class="form-control" id="water_supply2_physical" placeholder="Enter water_supply_amrut2_physical_progress">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Water Supply(AMRUT-2)Financial Progress</label>
                    <input type="number" name="water_supply2_financial" class="form-control" id="water_supply2_financial" placeholder="Enter water_supply_amrut2_financial_progress">
                  </div>
                </div>
                
                
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Parks(AMRUT-2)</label>
                    <input type="number" name="parks2" class="form-control" id="parks2" placeholder="Enter parks_amrut2">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Parks(AMRUT-2)</label>
                    <input type="number" name="parks2_target" class="form-control" id="parks2_target" placeholder="Enter parks_amrut2_target">
                  </div>
                </div><div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Parks(AMRUT-2)</label>
                    <input type="number" name="parks2_physical" class="form-control" id="parks2_physical" placeholder="Enter parks_amrut2_physical_progress">
                  </div>
                </div><div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Parks(AMRUT-2)</label>
                    <input type="number" name="parks2_financial" class="form-control" id="parks2_financial" placeholder="Enter parks_amrut2_financial_progress">
                  </div>
                </div>
                
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">WaterBodies/Sarovar(AMRUT-2)</label>
                    <input type="number" name="water_bodies2" class="form-control" id="water_bodies2" placeholder="Enter water_bodies_amrut2">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">WaterBodies/Sarovar(AMRUT-2)</label>
                    <input type="number" name="water_bodies2_target" class="form-control" id="water_bodies2_target" placeholder="Enter water_bodies_amrut2_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">WaterBodies/Sarovar(AMRUT-2)</label>
                    <input type="number" name="water_bodies2_physical" class="form-control" id="water_bodies2_physical" placeholder="Enter water_bodies_amrut2_physical_progress">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">WaterBodies/Sarovar(AMRUT-2)</label>
                    <input type="number" name="water_bodies2_financial" class="form-control" id="water_bodies2_financial" placeholder="Enter water_bodies_amrut2_financial_progress">
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
   
   var gis_master_plan_2041=$('#gis_master_plan_2041'). val(); 
   var water_supply=$('#water_supply'). val(); 
   var sewerage=$('#sewerage'). val(); 
   var drainage=$('#drainage'). val(); 
   var parks=$('#parks'). val(); 
   var water_supply2=$('#water_supply2'). val();
   var parks2=$('#parks2'). val(); 
   var water_bodies2=$('#water_bodies2'). val();
   
   var gis_master_plan_2041_target=$('#gis_master_plan_2041_target'). val(); 
   var water_supply_target=$('#water_supply_target'). val(); 
   var sewerage_target=$('#sewerage_target'). val(); 
   var drainage_target=$('#drainage_target'). val(); 
   var parks_target=$('#parks_target'). val(); 
   var water_supply2_target=$('#water_supply2_target'). val();
   var parks2_target=$('#parks2_target'). val(); 
   var water_bodies2_target=$('#water_bodies2_target'). val();
   
   
   var gis_master_plan_2041_physical=$('#gis_master_plan_2041_physical'). val(); 
   var water_supply_physical=$('#water_supply_physical'). val(); 
   var sewerage_physical=$('#sewerage_physical'). val(); 
   var drainage_physical=$('#drainage_physical'). val(); 
   var parks_physical=$('#parks_physical'). val(); 
   var water_supply2_physical=$('#water_supply2_physical'). val();
   var parks2_physical=$('#parks2_physical'). val(); 
   var water_bodies2_physical=$('#water_bodies2_physical'). val();
   
   
   var gis_master_plan_2041_financial=$('#gis_master_plan_2041_financial'). val(); 
   var water_supply_financial=$('#water_supply_financial'). val(); 
   var sewerage_financial=$('#sewerage_financial'). val(); 
   var drainage_financial=$('#drainage_financial'). val(); 
   var parks_financial=$('#parks_financial'). val(); 
   var water_supply2_financial=$('#water_supply2_financial'). val();
   var parks2_financial=$('#parks2_financial'). val(); 
   var water_bodies2_financial=$('#water_bodies2_financial'). val();
   
    
   
    

    var data_json = {"ulbName":ulb_name ,  "year":financial_year ,  "month":month ,"gisMasterPlan2041":gis_master_plan_2041 ,  "waterSupply":water_supply ,  "sewerage":sewerage ,  "drainage":drainage ,  "parks":parks, "extra":"AMRUT"
    ,"gisMasterPlan2041Target":gis_master_plan_2041_target,"waterSupplyTarget":water_supply_target,"sewerageTarget":sewerage_target,"drainageTarget":drainage_target,"parksTarget":parks_target,"waterSupply2Target":water_supply2_target,
    "parks2Target":parks2_target,"waterBodies2Target":water_bodies2_target,"gisMasterPlan2041Physical":gis_master_plan_2041_physical,"waterSupplyPhysical":water_supply_physical,"seweragePhysical":sewerage_physical,"drainagePhysical":drainage_physical,
    "parksPhysical":parks_physical,"waterSupply2Physical":water_supply2_physical,"parks2Physical":parks2_physical,"waterBodies2Physical":water_bodies2_physical,"gisMasterPlan2041Financial":gis_master_plan_2041_financial,"waterSupplyFinancial":water_supply_financial,
    "sewerageFinancial":sewerage_financial,"drainageFinancial":drainage_financial,"parksFinancial":parks_financial,"waterSupply2Financial":water_supply2_financial,"parks2Financial":parks2_financial,"waterBodies2Financial":water_bodies2_financial};
    
   console.log(data_json);
   
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
