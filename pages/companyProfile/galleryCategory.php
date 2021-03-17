<?php
session_start();
if ($_SESSION["id"] == null || $_SESSION["id"] == "") {
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
        <title>Admin | Gallery Category</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- SweetAlert2 -->
        <link rel="stylesheet" href="../../plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
        <!-- Toastr -->
        <link rel="stylesheet" href="../../plugins/toastr/toastr.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
        <!-- Google Font: Source Sans Pro -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    </head>

    <body class="hold-transition sidebar-mini layout-fixed">
        <div class="wrapper">

            <?php include '../dashboard/navbar.php'; ?>
            <?php include '../sidebar/sidebarGalleryCategory.php'; ?>

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
                                    <li class="breadcrumb-item active">Gallery Category</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid justify-content-center">

                        <!-- /.row -->
                        <!-- Main row -->
                        <div class="row">

                            <div class="col-md-4">
                                <!-- general form elements -->
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Input Gallery Category</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <form role="form" enctype="multipart/form-data" method="POST" action="../../php/companyProfile/galleryCategoryActions.php">
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Category Name</label>
                                                <input type="text" class="form-control" name="category_name" placeholder="Enter category name" required>
                                            </div>
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-primary" name="submitInsertGalleryCategory">Submit</button>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.card -->
                            </div>

                            <div class="col-md-8">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">Data Gallery Category</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <?php
                                        $sql = "SELECT * FROM `gallery_category`";
                                        $res = mysqli_query($conn, $sql);
                                        ?>
                                        <table id="example2" class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Category Name</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php while ($row = mysqli_fetch_array($res)) { ?>
                                                    <tr>
                                                        <td><?php echo $row['category_name']; ?></td>
                                                        <td>
                                                            <button class="btn btn-block bg-gradient-warning" name="detail" data-toggle="modal" data-target="#a<?php echo $row['id_gallery_category']; ?>">Detail</button>
                                                        </td>
                                                    </tr>
                                                    <div class="modal fade" id="a<?php echo $row['id_gallery_category']; ?>">
                                                        <div class="modal-dialog modal-lg">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title">Detail Data</h4>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <form role="form" enctype="multipart/form-data" method="POST" action="../../php/companyProfile/galleryCategoryActions.php">
                                                                        <div class="card-body">
                                                                            <div class="form-group">
                                                                                <label for="exampleInputEmail1">Id Category</label>
                                                                                <input type="text" class="form-control" name="id" placeholder="Enter category name" value="<?php echo $row['id_gallery_category']; ?>" required readonly>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="exampleInputEmail1">Category Name</label>
                                                                                <input type="text" class="form-control" name="category_name" placeholder="Enter category name" value="<?php echo $row['category_name']; ?>" required>
                                                                            </div>
                                                                        </div>
                                                                        <!-- /.card-body -->
                                                                        <div class="card-footer">
                                                                            <button type="submit" class="btn btn-primary" name="submitUpdateGalleryCategory">Save Changes</button>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <div class="modal-footer justify-content-between">
                                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                                    <form class="forms-sample" action="../../php/companyProfile/galleryCategoryActions.php" method="POST">
                                                                        <input type="text" class="form-control" name="id" hidden value="<?php echo $row['id_gallery_category']; ?>">
                                                                        <button class="btn btn-default bg-gradient-danger" name="submitDeleteGalleryCategory">Delete</button>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                            <!-- /.modal-content -->
                                                        </div>
                                                        <!-- /.modal-dialog -->
                                                    </div>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.card-body -->
                                </div>
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
        <!-- Bootstrap 4 -->
        <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- SweetAlert2 -->
        <script src="../../plugins/sweetalert2/sweetalert2.min.js"></script>
        <!-- Toastr -->
        <script src="../../plugins/toastr/toastr.min.js"></script>
        <!-- AdminLTE App -->
        <script src="../../dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../../dist/js/demo.js"></script>
        <!-- DataTables -->
        <script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
        <script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

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

                <?php if (isset($_GET['status'])) {
                    $status = intval($_GET['status']); ?>
                    var status = <?php echo $status; ?>;

                    if (status == 201) {
                        toastr.success('Data Berhasil Disimpan!');
                    } else if (status == 202) {
                        toastr.success('Data Berhasil Dihapus!');
                    } else if (status == 203) {
                        toastr.success('Data Berhasil Diperbaharui!');
                    } else {
                        toastr.error('Data Gagal Disimpan!');
                    }
                <?php } ?>
            });
        </script>
    </body>

    </html>
<?php } ?>