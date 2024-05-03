<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Director Dashboard</title>
  <link rel="shortcut icon" href="dist/img/browser-icon.png">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
</head>
  <?php
  include "db.php";?>
<body class="hold-transition sidebar-mini layout-fixed">

<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

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
      
 
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
     <!--  <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-controlsidebar-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li> -->
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="UDD Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Urban Development</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        
         <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         <li class="nav-item">
            <a href="https://udd.uk.gov.in/" target="_blank" class="nav-link">
              <i class="fa fa-globe" aria-hidden="true"></i>
              <p>
                 : Urban Development Directorate
              </p>
            </a>
          </li>
        </ul>
      </nav>
        
      </div>

 <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         <li class="nav-item">
            <a href="https://sbmurban.org/" target="_blank" class="nav-link">
              <i class="fa fa-globe" aria-hidden="true"></i>
              <p>
                : Swachh Bharat Mission - Urban (SBM-U)
              </p>
            </a>
          </li>
        </ul>
      </nav>
      </div>

       <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         <li class="nav-item">
            <a href="https://nulm.gov.in/" target="_blank" class="nav-link">
              <i class="fa fa-globe" aria-hidden="true"></i>
              <p>
                : Deendayal Antyoday Yojana - National Urban Livelihood Mission (DAY-NULM)
              </p>
            </a>
          </li>
        </ul>
      </nav>
      </div>

       <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         <li class="nav-item">
            <a href="https://pmaymis.gov.in/" target="_blank" class="nav-link">
              <i class="fa fa-globe" aria-hidden="true"></i>
              <p>
                : Pradhan Mantri Awas Yojana - Housing For All (PMAY-HFA)
              </p>
            </a>
          </li>
        </ul>
      </nav>
      </div>

       <div class="user-panel mt-3 pb-3 mb-3 d-flex">
       <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         <li class="nav-item">
            <a href="http://amrut.gov.in/content/" target="_blank" class="nav-link">
             <i class="fa fa-globe" aria-hidden="true"></i>
              <p>
                : Atal Mission For Rejuvenation and Urban Transformation (AMRUT)
              </p>
            </a>
          </li>
        </ul>
      </nav>
      </div>
     
       <div class="user-panel mt-3 pb-3 mb-3 d-flex">
       <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         <li class="nav-item">
            <a href="https://e-nagarsewaup.gov.in/ulbappsmain/home" target="_blank" class="nav-link">
             <i class="fa fa-globe" aria-hidden="true"></i>
              <p>
                : e-Nagarsewa
              </p>
            </a>
          </li>
        </ul>
      </nav>
      </div>

       <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         <li class="nav-item">
            <a href="https://nagarsewa.uk.gov.in/common/"  target="_blank" class="nav-link">
             <i class="fa fa-globe" aria-hidden="true"></i>
              <p>
               : Nagarsewa (eGov)
              </p>
            </a>
          </li>
        </ul>
      </nav>
      </div>

      <!-- Sidebar Menu -->
      


      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         <li class="nav-item">
            <a href="https://nagarsewa.uk.gov.in/common/" target="_blank" class="nav-link">
            <i class="nav-icon far fa-envelope"></i>
              <p>
               Contact Us
              </p>
            </a>
          </li>
        </ul>
      </nav>

      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            
            <h1 class="m-0">Dashboard</h1>



          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
        <span style="color:Black;">Select Financial Year:</span>

  <select class="check" style="width: 50%;">
<option value="2022-2023">2022-2023</option>
<option value="2023-2024">2023-2024</option>
</select>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-4 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3 id="pt_total"></h3>
                

                <p>Property Tax</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a  class="small-box-footer"></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-4 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3 id="tl_total"></h3>

                <p>Trade Licence</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
             <a  class="small-box-footer"></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-4 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3 id="uc_total"></h3>

                <p>Miscellaneous Collection</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a  class="small-box-footer"></a>
            </div>
          </div>
          <!-- ./col -->
          
          <!-- ./col -->
        </div>
        <!-- /.row -->
        <!-- Main row -->
       <div class="row">
          <!-- top and bottom Ulb card Left col -->
          <section class="col-lg-12 connectedSortable ui-sortable">
            <!-- Custom tabs (Charts with tabs)-->
            <div class="row col-md-12" style="background: #001f4e;">
              <h3 style="margin-bottom: 25px;margin-top: 30px; color: white;">Top and Bottom Leaders.</h3>
            </div>
            <div class="row">
            <div class="col-md-3" style=" background-color: #8ca396; margin-top: 5px;padding-left: 20px;padding-right: 20px;padding-top: 20px;padding-bottom: 20px;">
                    <p class="text-center">
                      
                    </p>
                    <h3>Trade Licence</h3>
                     <div class="progress-group">
                      <strong>Top TL ULB's</strong><br>
                      <span id="tl_top1" class="progress-text"></span>
                      
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-success" style="width: 80%"></div>
                      </div>
                    </div>
                    <div class="progress-group">
                      <span id="tl_top2" class="progress-text"></span>
                      
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-primary" style="width: 70%"></div>
                      </div>
                    </div>
                    <br>
                     <strong>Bottom TL ULB's</strong><br>
                    <!-- /.progress-group -->
                    <div class="progress-group">
                      <span id="tl_bottom1" class="progress-text"></span>
                      
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-warning" style="width: 60%"></div>
                      </div>
                    </div>

                    <!-- /.progress-group -->
                    <div class="progress-group">
                      <span id="tl_bottom2" class="progress-text"></span>
                      
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-danger" style="width: 50%"></div>
                      </div>
                    </div>

                  </div>

                 <div class="col-md-3" style=" background-color: #c7a9a9; margin-top: 5px;padding-left: 20px;padding-right: 20px;padding-top: 20px;padding-bottom: 20px;">
                    <p class="text-center">
                      
                    </p>
                    <h3>Property Tax</h3>
                     <div class="progress-group">
                      <strong>Top PT ULB's</strong><br>
                      <span id="pt_top1" class="progress-text"></span>
                      
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-success" style="width: 83%"></div>
                      </div>
                    </div>
                    <div class="progress-group">
                     
                      <span id="pt_top2" class="progress-text"></span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-primary" style="width: 72%"></div>
                      </div>
                    </div>
                     <br>
                     <strong>Bottom PT ULB's</strong><br>
                    <!-- /.progress-group -->
                    <div class="progress-group">
                      <span id="pt_bottom1" class="progress-text"></span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-warning" style="width: 50%"></div>
                      </div>
                    </div>

                    <!-- /.progress-group -->
                    <div class="progress-group">
                      <span id="pt_bottom2" class="progress-text"></span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-danger" style="width: 30%"></div>
                      </div>
                    </div>

                  </div>
                  <div class="col-md-3" style=" background-color: #a7a7a7; margin-top: 5px;padding-left: 20px;padding-right: 20px;padding-top: 20px;padding-bottom: 20px;">
                    <p class="text-center">
                      
                    </p>
                    <h3>Miscellaneous</h3>
                     <div class="progress-group">
                      <strong>Top UC ULB's</strong><br>
                      <span id="uc_top1" class="progress-text"></span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-success" style="width: 85%"></div>
                      </div>
                    </div>
                    <div class="progress-group">
                     <span id="uc_top2" class="progress-text"></span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-primary" style="width: 78%"></div>
                      </div>
                    </div>
                     <br>
                     <strong>Bottom UC ULB's</strong><br>
                    <!-- /.progress-group -->
                    <div class="progress-group">
                      <span id="uc_bottom1" class="progress-text"></span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-warning" style="width: 53%"></div>
                      </div>
                    </div>

                    <!-- /.progress-group -->
                    <div class="progress-group">
                     <span id="uc_bottom2" class="progress-text"></span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-danger" style="width: 42%"></div>
                      </div>
                    </div>

                  </div>

                  
          <div class="col-md-3">
            <!-- AREA CHART -->
            <div class="card card-primary" style="display:none;">
              <div class="card-header">
                <h3 class="card-title">Area Chart</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="areaChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- DONUT CHART -->
            <div class="card card-danger" style="display:none;">
              <div class="card-header">
                <h3 class="card-title">Donut Chart</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <canvas id="donutChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- PIE CHART -->
            <div class="card card-danger" style="margin:7px;">
              <div class="card-header">
                <h3 class="card-title">Property By Usage Type</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <div id="piecharts"></div>
                <canvas style="display: none;" id="pieChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

          </div>
          <!-- /.col (LEFT) -->
          <div class="col-md-6">
            <!-- LINE CHART -->
            <div class="card card-info"style="display:none;">
              <div class="card-header">
                <h3 class="card-title">Line Chart</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="lineChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            

             
            <!-- /.card -->

          </div>
  
<br>
  <div class="col-md-12">


    
    


 <!-- More services -->
           <div class="col-md-12">

      <div class="card collapsed-card">
              <div class="card-header border-transparent" style="cursor: move;background-color: #28a745;">
                <h3 style="color:white;">SBM, DAY-NULM, PMAY-HFA, AMRUT</h3><br>
                <span style="color:white;">Select ULB:</span>
                 <select name="ulb3" id="ulb_name2" style="width: 10%;margin: 10px;">

  </select>
  
                <span style="color:white;">Select Financial Year:</span><select id="financial_year4" style="width: 10%;margin: 10px;">
    <option value="2022">2022</option>
    <option value="2023">2023</option>
  </select>

 
                <span style="color:white;">Select Month:</span><select name="january" id="month4" style="width: 10%;margin: 10px;">
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

  <button id="btnFrom4">Apply</button>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-plus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0" id="tr1" style="display: none;">
                <div class="table-responsive">




                  <table class="table m-0" style="background: #c6c6c6;">
                    <thead style="color:white; background: #001f4e;">
                    <tr>
                       <th>Swachh Bharat Mission - Urban (SBM-U)</th>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th></th>
                    </tr>
                    </thead>
					 <thead>
                    <tr>
                       <th><p>Total Allocation from Central Government:</p> <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="afund1" value="NA" readonly></input></div></th>
                      <th></th>
                      <th></th>
                      <th><p>Total Release from Central Government:<p> <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="rfund1" value="NA" readonly></input></div></th>                      
                    </tr>
                    </thead>
                    <!-- http://localhost/dashboard/pages/widgets.html -->
                    
                    
                    <thead>
                    <tr>
                       <th>Service Name</th>
                      <th></th>
                      <th></th>
                      <th>Progress</th>
                      <th>Target</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td><a>1. D2D Waste Collection</a></td>
                      <td></td>
                      <td></td>
                      <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input1" value="NA" readonly></input></div>
             </td>
             <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target1" value="NA" readonly></input></div>Ward Wise
                      </td>
                    </tr>
                    <tr>
                      <td><a>2. D2D Waste Segregation</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input2" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target2" value="NA" readonly></input></div>Ward Wise
                      </td>
                    </tr><tr>
                      <td><a>3. CT/PT</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input3" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target3" value="NA" readonly></input></div>Number of Blocks
                      </td>
                    </tr><tr>
                      <td><a>4. Public Urinal</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input4" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target4" value="NA" readonly></input></div>Number of Blocks
                      </td>
                    </tr><tr>
                      <td><a>5. IHHL</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input5" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target5" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>6. ODF Status</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input6" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target6" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>7. GFC Star Rating</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input7" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20">(1-7) Star</div>
                      </td>
                    </tr><tr>
                      <td><a>8.Plastic Compactor</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input8" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target8" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>9. MRF Centres</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input9" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target9" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>10. SUP Ban</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input10" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target10" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>11. SUP Challan</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input11" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target11" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>12. GIS MAP</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input12" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target12" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>13. AL&AS Challan</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input13" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target13" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>14. AL&AS Fine Collected</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input14" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target14" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>15. Bin Free City Notified</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input15" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target15" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>16. Plastic Challan</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input16" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target16" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>17. BWG Identified</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input17" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target17" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>18. BWG Onsite Composting</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input18" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target18" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>19. SWM Fund Released</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input19" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target19" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>20. SWM Fund Utilised</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input20" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target20" value="NA" readonly></input></div>
                      </td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>

              <div class="card-body p-0" id="tr2" style="display: none;">
                <div class="table-responsive">
                  <table class="table m-0" style="background: #c6c6c6;">
                    <thead style="color:white; background: #001f4e;">
                    <tr>
                       <th>Deendayal Antyoday Yojana - National Urban Livelihood Mission (DAY-NULM)</th>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th></th>
                    </tr>
                    </thead>
                     <thead>
                    <tr>
                       <th><p>Total Allocation from Central Government:</p> <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="afund2" value="NA" readonly></input></div></th>
                      <th></th>
                      <th></th>
                      <th><p>Total Release from Central Government:<p> <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="rfund2" value="NA" readonly></input></div></th>                      
                    </tr>
                    </thead>
                    <thead>
                    <tr>
                       <th>Service Name</th>
                      <th></th>
                      <th></th>
                      <th>Progress</th>
                      <th>Target</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td><a>1. SEP I</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input21" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target21" value="NA" readonly></input></div>
                      </td>
                    </tr>
                    <tr>
                      <td><a>2. SHG BL</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input22" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target22" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>3. SHGs Formation</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input23" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target23" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>4. SHGs Revolving Fund</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input24" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target24" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>5. ALF Formation</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input25" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target25" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>6. ALFs Revolving Fund</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input26" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target26" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>7. PMFME for SHG</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input27" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target27" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>8.PMSVANidhi</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input28" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target28" value="NA" readonly></input></div>
                      </td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>

              <div class="card-body p-0" id="tr3" style="display: none;">
                <div class="table-responsive">
                  <table class="table m-0" style="background: #c6c6c6;">
                    <thead style="color:white; background: #001f4e;">
                    <tr>
                       <th>Pradhan Mantri Awas Yojana - Housing For All (PMAY-HFA)</th>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th></th>
                    </tr>
                    </thead>
                     <thead>
                    <tr>
                       <th><p>Total Allocation from Central Government:</p> <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="afund3" value="NA" readonly></input></div></th>
                      <th></th>
                      <th></th>
                      <th><p>Total Release from Central Government:<p> <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="rfund3" value="NA" readonly></input></div></th>                      
                    </tr>
                    </thead>
                    <thead>
                    <tr>
                       <th>Service Name</th>
                      <th></th>
                      <th></th>
                      <th>Progress</th>
                      <th>Target</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td><a>1. Self BLC Accomodation Count</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input29" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target29" value="NA" readonly></input></div>
                      </td>
                    </tr>
                    <tr>
                      <td><a>2. Progress BLC Accomodation Count</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input30" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target30" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>3. Complete BLC Accomodation Count</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input31" value="NA" readonly></input></div>
                      </td>
                       <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target31" value="NA" readonly></input></div>
                      </td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>

              <div class="card-body p-0" id="tr4" style="display: none;">
                <div class="table-responsive">
                  <table class="table m-0" style="background: #c6c6c6;">
                    <thead style="color:white; background: #001f4e;">
                    <tr>
                       <th>Atal Mission For Rejuvenation and Urban Transformation (AMRUT)</th>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th></th>
                      <th></th>
                    </tr>
                    </thead>
                    <thead>
                    <tr>
                       <th><p>Total Allocation from Central Government:</p> <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="afund4" value="NA" readonly></input></div></th>
                      <th></th>
                      <th></th>
                      <th><p>Total Release from Central Government:<p> <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="rfund4" value="NA" readonly></input></div></th>                      
                    </tr>
                    </thead>
                    <thead>
                    <tr>
                       <th>Service Name</th>
                      <th></th>
                      <th></th>
                      <th>Physical Progress</th>
                      <th>Financial Progress</th>
                      <th>Progress of Target</th>
                      <th>Total Target</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td><a>1. GIS Master Plan 2041 (AMRUT-1)</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="physical32" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="financial32" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input32" value="NA" readonly></input></div>
                      </td>
                      <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target32" value="NA" readonly></input></div>
                      </td>
                    </tr>
                    <tr>
                      <td><a>2. Water Supply (AMRUT-1)</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="physical33" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="financial33" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input33" value="NA" readonly></input></div>
                      </td>
                      <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target33" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>3. Sewerage (AMRUT-1)</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="physical34" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="financial34" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input34" value="NA" readonly></input></div>
                      </td>
                      <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target34" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>4. Drainage (AMRUT-1)</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="physical35" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="financial35" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input35" value="NA" readonly></input></div>
                      </td>
                      <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target35" value="NA" readonly></input></div>
                      </td>
                    </tr><tr>
                      <td><a>5. Parks (AMRUT-1)</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="physical36" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="financial36" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input36" value="NA" readonly></input></div>
                      </td>
                      <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target36" value="NA" readonly></input></div>
                      </td>
                    </tr>
                    <tr>
                      <td><a>6. Water Supply (AMRUT-2)</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="physical37" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="financial37" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input37" value="NA" readonly></input></div>
                      </td>
                      <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target37" value="NA" readonly></input></div>
                      </td>
                    </tr>
                    <tr>
                      <td><a>7. Parks (AMRUT-2)</a></td>
                      <td></td>
                      <td></td>
                     <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="financial38" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input38" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input38" value="NA" readonly></input></div>
                      </td>
                      <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target38" value="NA" readonly></input></div>
                      </td>
                    </tr>
                    <tr>
                      <td><a>8. Water Bodies/Sarovar (AMRUT-2)</a></td>
                      <td></td>
                      <td></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="financial39" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input39" value="NA" readonly></input></div>
                      </td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="input39" value="NA" readonly></input></div>
                      </td>
                      <td>
              <div class="sparkbar" data-color="#00a65a" data-height="20"><input id="target39" value="NA" readonly></input></div>
                      </td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>

              <!-- /.card-body -->
              <div class="card-footer clearfix" style="display: none;">
                
              </div>
              <!-- /.card-footer -->
            </div>
       
                  
                </div>
 
          </section>
          
        

          </div>
          </section>
           
     </div>
 
  <!-- /.content-wrapper -->
  <footer class="main-footer" style="background:#343434;">
    <strong>Copyright &copy; 2022-2023 <a href="https://udd.uk.gov.in/">Urban Development Directorate</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 1.0.0
  
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
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>

<script src="plugins/flot/jquery.flot.js"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="plugins/flot/plugins/jquery.flot.resize.js"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="plugins/flot/plugins/jquery.flot.pie.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>



<script>
  $(function () {
    
  //-------------------------------------------------------------
    //- Application->>>>>> STACKED BAR CHART - Total Application
    //-----------------------------------------------------------
    
     
    
   $.ajax({
      type: 'post',
      url: "/temp", 
      async: false,
      contentType: "application/json;",
	  

    success: function(result){ 
    
    chartCreation(result,"TotalApplication");
   
    }
    	});
    	
   //----------------------------------------------------
    //- Application->>>>>>  BAR CHART - Total Collection
    //---------------------------------------------------
    
   $.ajax({
      type: 'post',
      url: "/temp", 
      async: false,
      contentType: "application/json;",
	  

    success: function(result){ 
    chartCreation(result,"TotalCollection");
    }
    	});  	
  
  
   //-----------------------------------------------------------
    //- Dynamic Call for  Total Collection and Total Application
    //----------------------------------------------------------
    	
    	 $("#totalApp").click(function(){
    	 var ulbName = $('#ulb_name').val();
    	  var data_json = {"tenantid":ulbName}; 
    	 
    	 $.ajax({
      type: 'post',
      url: "/temps", 
      async: false,
      contentType: "application/json;",
	  data: JSON.stringify(data_json),
	  success: function(result){ 
	  console.log(result);
    chartCreation(result,"TotalApplication");
    }
    	 })
    	 });
    	 
    	
    	
    	 $("#totalColl").click(function(){
    	 var ulbName = $('#ulb_name1').val();
    	 
    	 var data_json = {"tenantid":ulbName}; 
    	 
    	 $.ajax({
      type: 'post',
      url: "/temps", 
      async: false,
      contentType: "application/json;",
       data: JSON.stringify(data_json),
	  success: function(result){ 
	   console.log(result);
      chartCreation(result,"TotalCollection");
      }
      })
    	 });
    	 
    	 
    	 
    
 function chartCreation(result,chartReco){
 
 const month = ["January","February","March","April","May","June","July","August","September","October","November","December"];

let leng = Number(result.length);
const monthName=[];
const data=[];

for(let i = 0; i < leng; i++){
 var a=result[i].split(",");
 monthName[i]=a[1];
 data[i]=a[0]
}


if(monthName[0]==month[0]){

}
const monthlyData = [];
const monthlyDatas = [];
for (let i = 0; i < leng; i++) {

 for (let j = 0; j < 12; j++) {
    if(monthName[i]==month[j]){
    monthlyData[j]=data[i];
    }else{
    if(i==0){
    monthlyData[j]=0;
    }else{
    if(monthlyData[j]===0)
    monthlyData[j]=0;
    }
    
    }
    }
  }
    
    if(chartReco==="TotalApplication"){
    var label = "Applications Chart";
    }else{
    var label = "Collection Chart";
    }
    
    
    console.log(monthlyData);
    
    var ChartData = {
      labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July','August','September','October','November','December'],
      datasets: [
        
        {
          label               : label,
          backgroundColor     : '#007bff',	
          borderColor         : 'rgba(251,60,40,1)',
          pointRadius         : false,
          pointColor          : 'rgba(251,60,40,1)',
          pointStrokeColor    : '#fff',
          pointHighlightFill  : '#fb3c28',
          pointHighlightStroke: 'rgba(251,60,40,1)',
          data                : [monthlyData[0],monthlyData[1],monthlyData[2],monthlyData[3],monthlyData[4],monthlyData[5],monthlyData[6],monthlyData[7],monthlyData[8],monthlyData[9],monthlyData[10],monthlyData[11]]
        },
      ]
    }
    
    if(chartReco==="TotalApplication"){
    var stackedBarChartCanvas = $('#stackedBarChart').get(0).getContext('2d');
    }else{
    var stackedBarChartCanvas = $('#barChart').get(0).getContext('2d');
    }
    
    var stackedBarChartData = $.extend(true, {}, ChartData)

    var stackedBarChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      scales: {
        xAxes: [{
          stacked: true,
        }],
        yAxes: [{
          stacked: true
        }]
      }
    }

    new Chart(stackedBarChartCanvas, {
      type: 'bar',
      data: stackedBarChartData,
      options: stackedBarChartOptions
    })
    };
    
   
    	
  });
  
  
</script>





<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
   // Load google charts
  google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {

  var data = google.visualization.arrayToDataTable([
  ['Task', 'Hours per Day'],
  ['Residential', 200],
  ['Non-Residential', 200],
  ['Mixed', 200],
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'width':265, 'height':170};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piecharts'));
  chart.draw(data,options);
}



  $(function(){
  
  $.ajax({
      type: 'get',
      url: "/ulbDetails", 
      async: false,
      contentType: "application/json;",
	  

    success: function(result){
    
    for (let li of result) {
    let product = $(li);
   $('#ulb_name').append(new Option(product[0].ulbName, product[0].ulbName));
    $('#ulb_name1').append(new Option(product[0].ulbName, product[0].ulbName));
     $('#ulb_name2').append(new Option(product[0].ulbName, product[0].ulbName));
}
    
    }
    	});


    var data_json = {"financialYear":"2022-2023"};  
      $.ajax({
      type: 'post',
      url: "/common_card_data_fetch", 
      async: false,
      contentType: "application/json;",
	  data: JSON.stringify(data_json),

    success: function(response){
    
 $("#pt_total").html(response[0].ptTotal);
 $("#tl_total").html(response[0].tlTotal);
 $("#uc_total").html(response[0].ucTotal);
 $("#tl_top1").html(response[0].tlTop1);
 $("#tl_top2").html(response[0].tlTop2);
 $("#tl_bottom1").html(response[0].tlBottom1);
 $("#tl_bottom2").html(response[0].tlBottom2);
 $("#pt_top1").html(response[0].ptTop1);
 $("#pt_top2").html(response[0].ptTop2);
 $("#pt_bottom1").html(response[0].ptBottom1);
 $("#pt_bottom2").html(response[0].ptBottom2);
 $("#uc_top1").html(response[0].ucTop1);
 $("#uc_top2").html(response[0].ucTop2);
 $("#uc_bottom1").html(response[0].ucBottom1);
 $("#uc_bottom2").html(response[0].ucBottom2);
 

 setTimeout(()=> {
        google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawCharts(response[0].residential,response[0].nonResidential,response[0].mixed));
      }
      ,1000);
    },
    error:function(e){
  swal ( "Oops" ,  "Something went wrong!" ,  "error" );
        }
  });

   
    //this is called when we change in the financial year dropdown

    $('.check').change(function(){
      var financial_year= $(this).val();
      var data_json = {"financialYear":financial_year};  
      $.ajax({
      type: 'post',
      url: "/common_card_data_fetch", 
      async: false,
      contentType: "application/json;",
	  data: JSON.stringify(data_json),
 
    success: function(response){
   
   if(response!=""){
 $("#pt_total").html(response[0].ptTotal);
 $("#tl_total").html(response[0].tlTotal);
 $("#uc_total").html(response[0].ucTotal);
 $("#tl_top1").html(response[0].tlTop1);
 $("#tl_top2").html(response[0].tlTop2);
 $("#tl_bottom1").html(response[0].tlBottom1);
 $("#tl_bottom2").html(response[0].tlBottom2);
 $("#pt_top1").html(response[0].ptTop1);
 $("#pt_top2").html(response[0].ptTop2);
 $("#pt_bottom1").html(response[0].ptBottom1);
 $("#pt_bottom2").html(response[0].ptBottom2);
 $("#uc_top1").html(response[0].ucTop1);
 $("#uc_top2").html(response[0].ucTop2);
 $("#uc_bottom1").html(response[0].ucBottom1);
 $("#uc_bottom2").html(response[0].ucBottom2);

google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawCharts(response[0].residential,response[0].nonResidential,response[0].mixed));
//google.charts.setOnLoadCallback();
;

   }else{
   
    $("#pt_total").html("NA");
 $("#tl_total").html("NA");
 $("#uc_total").html("NA");
 $("#tl_top1").html("NA");
 $("#tl_top2").html("NA");
 $("#tl_bottom1").html("NA");
 $("#tl_bottom2").html("NA");
 $("#pt_top1").html("NA");
 $("#pt_top2").html("NA");
 $("#pt_bottom1").html("NA");
 $("#pt_bottom2").html("NA");
 $("#uc_top1").html("NA");
 $("#uc_top2").html("NA");
 $("#uc_bottom1").html("NA");
 $("#uc_bottom2").html("NA");

google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawCharts(0,0,0));
//google.charts.setOnLoadCallback();
;
   
   }
    },
    error:function(e){
  swal ( "Oops" ,  "Something went wrong!" ,  "error" );
        }
  });

    });

   });
  
</script>


<script type="text/javascript">

function drawCharts(a,b,c) {
  
  let val1 = Number(a);
  let val2 = Number(b);
  let val3 = Number(c);
  
var data =  google.visualization.arrayToDataTable([
  ['Task', 'Hours per Day'],
  ['Residential', val1],
  ['Non-Residential', val2],
  ['Mixed', val3],
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'width':265, 'height':170};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piecharts'));
  chart.draw(data,options);
}
</script>


<script type="text/javascript">
  $(document).ready(function(){

    $("#totalApp").click(function(){
      var frm = $('#from1'). val();
      var to = $('#to1'). val(); 
      var frmObj = new Date(frm);
      var toObj = new Date(to);

      if(frmObj=="Invalid Date" && toObj!="Invalid Date"){
        swal( "Oops" ,  "`FROM` date is blank" ,  "warning" );
       return;
      }
      if(toObj=="Invalid Date" && frmObj!="Invalid Date"){
        swal( "Oops" ,  "`TO` date is blank" ,  "warning" );
       return;
      }
      if(frmObj>toObj){
       swal( "Oops" ,  "`From` Date is LESS then `To` Date" ,  "warning" );
       return;
      }

     
    });

    $("#totalColl").click(function(){
     
      var frm = $('#from2'). val();
      var to = $('#to2'). val(); 
      var frmObj = new Date(frm);
      var toObj = new Date(to);
      var ulb_name = $('#ulb_name'). val();
      var module_name = $('#sm3'). val();
      
      
      if(frmObj=="Invalid Date" && toObj!="Invalid Date"){
        swal( "Oops" ,  "`FROM` date is blank" ,  "warning" );
       return;
      }
      if(toObj=="Invalid Date" && frmObj!="Invalid Date"){
        swal( "Oops" ,  "`TO` date is blank" ,  "warning" );
       return;
      }

      if(frmObj>toObj){
       swal( "Oops" ,  "`From` Date is LESS then `To` Date" ,  "warning" );
       return;
      }
	    
      });


  $("#btnFrom4").click(function(){
   var ulbName=$('#ulb4'). val(); 
   var ulb_name = $('#ulb_name2').val();
   var financial_year=$('#financial_year4'). val(); 
   var month=$('#month4'). val();
     
     

   var data_json = {"ulbName":ulb_name ,  "year":financial_year ,  "month":month};

   $.ajax({
      type: 'post',
      url: "/other_service_data_fetch", 
      async: false,
      contentType: "application/json;",
	  data: JSON.stringify(data_json),

    success: function(response){
    
  if(response != ""){
    $('#input1'). val(response[0].d2dWasteCollection);
    $('#input2'). val(response[0].d2dWasteSegregation);
    $('#input3'). val(response[0].ctPt);
    $('#input4'). val(response[0].publicUrinal);
    $('#input5'). val(response[0].ihhl);
    $('#input6'). val(response[0].odfStatus);
    $('#input7'). val(response[0].gfcStarRating);
    $('#input8'). val(response[0].plasticCompactor);
    $('#input9'). val(response[0].mrfCentres);
    $('#input10'). val(response[0].supBan);
    $('#input11'). val(response[0].supChallan);
    $('#input12'). val(response[0].gisMap);
    $('#input13'). val(response[0].alAsChallan);
    $('#input14'). val(response[0].alAsFineCollected);
    $('#input15'). val(response[0].binFreeCityNotified);
    $('#input16'). val(response[0].plasticChallan);
    $('#input17'). val(response[0].bwgIdentified);
    $('#input18'). val(response[0].bwgOnlineComposting);
    $('#input19'). val(response[0].swmFundReleased);
    $('#input20'). val(response[0].swmFundUtilised);
    $('#input21'). val(response[0].sepI);
    $('#input22'). val(response[0].shgBl);
    $('#input23'). val(response[0].shgFormation);
    $('#input24'). val(response[0].shgRevolvingFund);
    $('#input25'). val(response[0].alfFormation);
    $('#input26'). val(response[0].alfRevolvingFund);
    $('#input27'). val(response[0].pmfmeShg);
    $('#input28'). val(response[0].pmsvaNidhi);
    $('#input29'). val(response[0].selfBlcAccCount);
    $('#input30'). val(response[0].progressBlcAccCount);
    $('#input31'). val(response[0].completeBlcAccCount);
    $('#input32'). val(response[0].gisMasterPlan2041);
    $('#input33'). val(response[0].waterSupply);
    $('#input34'). val(response[0].sewerage);
    $('#input35'). val(response[0].drainage);
    $('#input36'). val(response[0].parks);
    $('.p-0').css('display', 'block');
    
  }else{
  swal( "Oops" ,  "Data not Found!" ,  "warning" );
    $('.p-0').css('display', 'none');
    $('#input1'). val("NA");
    $('#input2'). val("NA");
    $('#input3'). val("NA");
    $('#input4'). val("NA");
    $('#input5'). val("NA");
    $('#input6'). val("NA");
    $('#input7'). val("NA");
    $('#input8'). val("NA");
    $('#input9'). val("NA");
    $('#input10'). val("NA");
    $('#input11'). val("NA");
    $('#input12'). val("NA");
    $('#input13'). val("NA");
    $('#input14'). val("NA");
    $('#input15'). val("NA");
    $('#input16'). val("NA");
    $('#input17'). val("NA");    
    $('#input18'). val("NA");
    $('#input19'). val("NA");
    $('#input20'). val("NA");
    $('#input21'). val("NA");
    $('#input22'). val("NA");
    $('#input23'). val("NA");
    $('#input24'). val("NA");
    $('#input25'). val("NA");
    $('#input26'). val("NA");
    $('#input27'). val("NA");
    $('#input28'). val("NA");
    $('#input29'). val("NA");
    $('#input30'). val("NA");
    $('#input31'). val("NA");
    $('#input32'). val("NA");
    $('#input33'). val("NA");
    $('#input34'). val("NA");
    $('#input35'). val("NA");
    $('#input36'). val("NA");
    
  }
 },
error:function(e){
  
  swal ( "Oops" ,  "Something went wrong!" ,  "error" );
        }
  });
});

  });
</script>





</body>
</html>

