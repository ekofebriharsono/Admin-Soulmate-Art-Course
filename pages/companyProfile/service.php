<?php
session_start();
if($_SESSION["id"] == null || $_SESSION["id"] == ""){
  header('Location: ../../login.php?status=4'); //belum login
} else { 
  include '../../php/koneksi.php';   
  include '../../php/format.php'; 
  $conn = OpenCon(); ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin | Service</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="../../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="../../plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="../../plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <?php  include '../dashboard/navbar.php'; ?>
        <?php  include '../sidebar/sidebarService.php'; ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Company Profile</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Service</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">

                    <!-- /.row -->
                    <!-- Main row -->
                    <div class="row">

                        <div class="col-md-12">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Input Service</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form role="form" enctype="multipart/form-data" method="POST"
                                    action="../../php/companyProfile/serviceActions.php">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Service Name</label>
                                            <input type="text" class="form-control" name="service_name"
                                                placeholder="Enter service name">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Service Description</label>
                                            <input type="text" class="form-control" name="service_descriptions"
                                                placeholder="Enter service description">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Image || 278x191 px</label>
                                            <input type="file" class="form-control" name="image">
                                        </div>
                                    </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary" name="submitInsertService">Submit</button>
                            </div>
                            </form>
                        </div>
                        <!-- /.card -->
                    </div>
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Data Service</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <?php 
                                  $sql = "SELECT * FROM `service`";
                                  $res = mysqli_query($conn, $sql);
                                ?>
                                <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Service Name</th>
                                            <th>Service Description</th>
                                            <th>Image</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php while($row = mysqli_fetch_array($res)){ ?>
                                        <tr>
                                            <td><?php echo $row['service_name']; ?></td>
                                            <td><?php echo $row['service_descriptions']; ?></td>
                                            <td><img style="width:40px;height:50px;" src="<?php echo $row['image']; ?>"
                                                    alt=""></td>
                                            <td>
                                                <form class="forms-sample"
                                                    action="../../php/companyProfile/serviceActions.php" method="POST">
                                                    <input type="text" class="form-control" name="id" hidden
                                                        value="<?php echo $row['id_service']; ?>">
                                                    <button class="badge badge-danger"
                                                        name="submitDeleteService">Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>

                    <!-- /.row (main row) -->
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <?php include '../dashboard/footer.php'; ?>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="../../plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="../../plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
    $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="../../plugins/chart.js/Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="../../plugins/sparklines/sparkline.js"></script>
    <!-- JQVMap -->
    <script src="../../plugins/jqvmap/jquery.vmap.min.js"></script>
    <script src="../../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="../../plugins/jquery-knob/jquery.knob.min.js"></script>
    <!-- daterangepicker -->
    <script src="../../plugins/moment/moment.min.js"></script>
    <script src="../../plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="../../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Summernote -->
    <script src="../../plugins/summernote/summernote-bs4.min.js"></script>
    <!-- overlayScrollbars -->
    <script src="../../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/adminlte.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="../../dist/js/pages/dashboard.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js"></script>
    <!-- DataTables -->
    <script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <!-- page script -->
    <script>
    $(function() {
        $("#example1").DataTable({
            "responsive": true,
            "autoWidth": false,
        });
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
        });
    });
    </script>
</body>

</html>
<?php } ?>