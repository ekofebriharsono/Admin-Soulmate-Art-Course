  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Soulmate Art Course</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block"><?php echo $_SESSION["user_name"]; ?></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="../dashboard/" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="../user/user.php" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>User</p>
            </a>
          </li>
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Company Profile
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview menu-open">
              <li class="nav-item">
                <a href="../companyProfile/header.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Header</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/promo.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Promo</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/owner.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Owner</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/client.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Client</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/visimisi.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Visi / Misi</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/event.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Event</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/service.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Service</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/priceCategory.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Price Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/price.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Price</p>
                </a>
              </li>

              <li class="nav-item">
                <a href="../companyProfile/galleryCategory.php" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Gallery Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/gallery.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Gallery</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/videoCategory.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Video Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/video.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Video</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/team.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Team</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/aboutUs.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>About Us</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../companyProfile/contactUs.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Contact Us</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>