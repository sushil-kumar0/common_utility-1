<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Data Entry Form (SBM-U)</title>

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
                <h3 class="card-title">SBM-U</h3>
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
                    <label for="exampleInputEmail1">D2D Waste Collection</label>
                    <input type="number" name="d2d_waste_collection" class="form-control" id="d2d_waste_collection" placeholder="Enter d2d_waste_collection">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">D2D Waste Collection Target</label>
                    <input type="number" name="d2d_waste_collection_target" class="form-control" id="d2d_waste_collection_target" placeholder="Enter d2d_waste_collection_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">D2D Waste Segregation</label>
                    <input type="number" name="d2d_waste_segregation" class="form-control" id="d2d_waste_segregation" placeholder="Enter d2d_waste_segregation">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">D2D Waste Segregation Target</label>
                    <input type="number" name="d2d_waste_segregation_target" class="form-control" id="d2d_waste_segregation_target" placeholder="Enter d2d_waste_segregation_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">CT/PT</label>
                    <input type="number" name="ct_pt" class="form-control" id="ct_pt" placeholder="Enter ct_pt">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">CT/PT Target</label>
                    <input type="number" name="ct_pt_target" class="form-control" id="ct_pt_target" placeholder="Enter ct_pt_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Public Urinal</label>
                    <input type="number" name="public_urinal" class="form-control" id="public_urinal" placeholder="Enter public_urinal">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Public Urinal Target</label>
                    <input type="number" name="public_urinal_target" class="form-control" id="public_urinal_target" placeholder="Enter public_urinal_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">IHHL</label>
                    <input type="number" name="ihhl" class="form-control" id="ihhl" placeholder="Enter ihhl">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">IHHL Target</label>
                    <input type="number" name="ihhl" class="form-control" id="ihhl_target" placeholder="Enter ihhl_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">ODF Status</label>
                    <input type="number" name="odf_status" class="form-control" id="odf_status" placeholder="Enter odf_status">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">ODF Status Target</label>
                    <input type="number" name="odf_status" class="form-control" id="odf_status_target" placeholder="Enter odf_status_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">GFC Star Rating</label>
                    <input type="number" name="gfc_star_ratinggfc_star_rating" class="form-control" id="gfc_star_rating" placeholder="Enter gfc_star_rating">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Plastic Compactor</label>
                    <input type="number" name="plastic_compactor" class="form-control" id="plastic_compactor" placeholder="Enter plastic_compactor">
                  </div>
                </div>
                 <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Plastic Compactor Target</label>
                    <input type="number" name="plastic_compactor_target" class="form-control" id="plastic_compactor_target" placeholder="Enter plastic_compactor_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">MRF Centres</label>
                    <input type="number" name="mrf_centres" class="form-control" id="mrf_centres" placeholder="Enter mrf_centres">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">MRF Centres Target</label>
                    <input type="number" name="mrf_centres_target" class="form-control" id="mrf_centres_target" placeholder="Enter mrf_centres_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">SUP Ban</label>
                    <input type="number" name="sup_ban" class="form-control" id="sup_ban" placeholder="Enter sup_ban">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">SUP Ban Target</label>
                    <input type="number" name="sup_ban_target" class="form-control" id="sup_ban_target" placeholder="Enter sup_ban_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">SUP Challan</label>
                    <input type="number" name="sup_challan" class="form-control" id="sup_challan" placeholder="Enter sup_challan">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">SUP Challan Target</label>
                    <input type="number" name="sup_challan_target" class="form-control" id="sup_challan_target" placeholder="Enter sup_challan_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">GIS Map</label>
                    <input type="number" name="gis_map" class="form-control" id="gis_map" placeholder="Enter gis_map">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">GIS Map Target</label>
                    <input type="number" name="gis_map_target" class="form-control" id="gis_map_target" placeholder="Enter gis_map_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">AL & AS Challan</label>
                    <input type="number" name="al_as_challan" class="form-control" id="al_as_challan" placeholder="Enter al_as_challan">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">AL & AS Challan Target</label>
                    <input type="number" name="al_as_challan_target" class="form-control" id="al_as_challan_target" placeholder="Enter al_as_challan_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">AL & AS Fine Collected</label>
                    <input type="number" name="al_as_fine_collected" class="form-control" id="al_as_fine_collected" placeholder="Enter al_as_fine_collected">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">AL & AS Fine Collected Target</label>
                    <input type="number" name="al_as_fine_collected_target" class="form-control" id="al_as_fine_collected_target" placeholder="Enter al_as_fine_collected_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Bin Free City Notified</label>
                    <input type="number" name="bin_free_city_notified" class="form-control" id="bin_free_city_notified" placeholder="Enter bin_free_city_notified">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Bin Free City Notified Target</label>
                    <input type="number" name="bin_free_city_notified_target" class="form-control" id="bin_free_city_notified_target" placeholder="Enter bin_free_city_notified_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Plastic Challan</label>
                    <input type="number" name="plastic_challan" class="form-control" id="plastic_challan" placeholder="Enter plastic_challan">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Plastic Challan Target</label>
                    <input type="number" name="plastic_challan_target" class="form-control" id="plastic_challan_target" placeholder="Enter plastic_challan_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">BWG Identified</label>
                    <input type="number" name="bwg_identified" class="form-control" id="bwg_identified" placeholder="Enter bwg_identified">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">BWG Identified Target</label>
                    <input type="number" name="bwg_identified_target" class="form-control" id="bwg_identified_target" placeholder="Enter bwg_identified_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">BWG Online Composting</label>
                    <input type="number" name="bwg_online_composting" class="form-control" id="bwg_online_composting" placeholder="Enter bwg_online_composting">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">BWG Online Composting Target</label>
                    <input type="number" name="bwg_online_composting_target" class="form-control" id="bwg_online_composting_target" placeholder="Enter bwg_online_composting_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">SWM Fund Released</label>
                    <input type="number" name="swm_fund_released" class="form-control" id="swm_fund_released" placeholder="Enter swm_fund_released">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">SWM Fund Released Target</label>
                    <input type="number" name="swm_fund_released_target" class="form-control" id="swm_fund_released_target" placeholder="Enter swm_fund_released_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">SWM Fund Utilised</label>
                    <input type="number" name="swm_fund_utilised" class="form-control" id="swm_fund_utilised" placeholder="Enter swm_fund_utilised">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">SWM Fund Utilised Target</label>
                    <input type="number" name="swm_fund_utilised_target" class="form-control" id="swm_fund_utilised_target" placeholder="Enter swm_fund_utilised_target">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Allocated Fund SBM</label>
                    <input type="number" name="allocated_fund_sbm" class="form-control" id="allocated_fund_sbm" placeholder="Enter allocated_fund_sbm">
                  </div>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Release Fund SBM</label>
                    <input type="number" name="release_fund_sbm" class="form-control" id="release_fund_sbm" placeholder="Enter release_fund_sbm">
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
   var d2d_waste_collection=$('#d2d_waste_collection'). val();
   var d2d_waste_collection_target=$('#d2d_waste_collection_target'). val(); 
   var d2d_waste_segregation=$('#d2d_waste_segregation'). val();
   var d2d_waste_segregation_target=$('#d2d_waste_segregation_target'). val(); 
   var ct_pt=$('#ct_pt'). val();
   var ct_pt_target=$('#ct_pt_target'). val(); 
   var public_urinal=$('#public_urinal'). val();
   var public_urinal_target=$('#public_urinal_target'). val(); 
   var ihhl=$('#ihhl'). val();
   var ihhl_target=$('#ihhl_target'). val(); 
   var odf_status=$('#odf_status'). val();
   var odf_status_target=$('#odf_status_target'). val(); 
   var gfc_star_rating=$('#gfc_star_rating'). val(); 
   var plastic_compactor=$('#plastic_compactor'). val(); 
   var plastic_compactor_target=$('#plastic_compactor_target'). val(); 
   var mrf_centres=$('#mrf_centres'). val();
   var mrf_centres_target=$('#mrf_centres_target'). val(); 
   var sup_ban=$('#sup_ban'). val();
   var sup_ban_target=$('#sup_ban_target'). val(); 
   var sup_challan=$('#sup_challan'). val();
   var sup_challan_target=$('#sup_challan_target'). val(); 
   var gis_map=$('#gis_map'). val();
   var gis_map_target=$('#gis_map_target'). val(); 
   var al_as_challan=$('#al_as_challan'). val();
   var al_as_challan_target=$('#al_as_challan_target'). val(); 
   var al_as_fine_collected=$('#al_as_fine_collected'). val();
   var al_as_fine_collected_target=$('#al_as_fine_collected_target'). val(); 
   var bin_free_city_notified=$('#bin_free_city_notified'). val();
   var bin_free_city_notified_target=$('#bin_free_city_notified_target'). val(); 
   var plastic_challan=$('#plastic_challan'). val();
   var plastic_challan_target=$('#plastic_challan_target'). val(); 
   var bwg_identified=$('#bwg_identified'). val();
   var bwg_identified_target=$('#bwg_identified_target'). val(); 
   var bwg_online_composting=$('#bwg_online_composting'). val();
   var bwg_online_composting_target=$('#bwg_online_composting_target'). val(); 
   var swm_fund_released=$('#swm_fund_released'). val();
   var swm_fund_released_target=$('#swm_fund_released_target'). val(); 
   var swm_fund_utilised=$('#swm_fund_utilised'). val();
   var swm_fund_utilised_target=$('#swm_fund_utilised_target'). val();
   var allocated_fund_sbm=$('#allocated_fund_sbm'). val();
   var release_fund_sbm=$('#release_fund_sbm'). val(); 
   
   
   
   
   
   
   
   

    var data_json = {"ulbName":ulb_name ,  "year":financial_year ,  "month":month , "d2dWasteCollection":d2d_waste_collection ,  "d2dWasteSegregation":d2d_waste_segregation ,  "ctPt":ct_pt ,  "publicUrinal":public_urinal ,  "ihhl":ihhl ,  "odfStatus":odf_status ,  "gfcStarRating":gfc_star_rating ,  "plasticCompactor":plastic_compactor ,  "mrfCentres":mrf_centres ,  "supBan":sup_ban ,  "supChallan":sup_challan ,  "gisMap":gis_map ,  "alAsChallan":al_as_challan ,  "alAsFineCollected":al_as_fine_collected ,  "binFreeCityNotified":bin_free_city_notified ,  "plasticChallan":plastic_challan ,  "bwgIdentified":bwg_identified ,  "bwgOnlineComposting":bwg_online_composting ,  "swmFundReleased":swm_fund_released ,  "swmFundUtilised":swm_fund_utilised , "extra":"SBMU",
     "d2dWasteCollectionTarget":d2d_waste_collection_target,"d2dWasteSegregationTarget":d2d_waste_segregation_target,"ctPtTarget":ct_pt_target,"publicUrinalTarget":public_urinal_target,"ihhlTarget":ihhl_target,"odfStatusTarget":odf_status_target,"plasticCompactorTarget":plastic_compactor_target,"mrfCentresTarget":mrf_centres_target,"supBanTarget":sup_ban_target,"supChallanTarget":sup_challan_target,"gisMapTarget":gis_map_target,"alAsChallanTarget":al_as_challan_target,"alAsFineCollectedTarget":al_as_fine_collected_target,"binFreeCityNotifiedTarget":bin_free_city_notified_target,"plasticChallanTarget":plastic_challan_target,"bwgIdentifiedTarget":bwg_identified_target,"bwgOnlineCompostingTarget":bwg_online_composting_target,"swmFundReleasedTarget":swm_fund_released_target,
     "swmFundUtilisedTarget":swm_fund_utilised_target,"allocatedFundSBM":allocated_fund_sbm,"releaseFundSBM":release_fund_sbm};
    
   
 
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
