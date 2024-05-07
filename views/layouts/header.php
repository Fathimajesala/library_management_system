<!-- Include Config -->
<?php
include __DIR__ . '/../../config.php';
include __DIR__ . '/../../helpers/AppManager.php';

$sm = AppManager::getSM();
$username = $sm->getAttribute("username");
$position = $sm->getAttribute("position");






$currentUrl = $_SERVER['SCRIPT_NAME'];

// Extract the last filename from the URL
$currentFilename = basename($currentUrl);  // e.g., "dashboard.php"

?>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default" data-assets-path="assets/" data-template="vertical-menu-template-free">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Dashboard - Analytics | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet" />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="<?= asset('assets/vendor/fonts/boxicons.css') ?>" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="<?= asset('assets/vendor/css/core.css') ?>" class="template-customizer-core-css" />
    <link rel="stylesheet" href="<?= asset('assets/vendor/css/theme-default.css') ?>" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="<?= asset('assets/css/demo.css') ?>" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="<?= asset('assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css') ?>" />

    <link rel="stylesheet" href="<?= asset('assets/vendor/libs/apex-charts/apex-charts.css') ?>" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="<?= asset('assets/vendor/js/helpers.js') ?>"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="<?= asset('assets/js/config.js') ?>"></script>
</head>


<body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">

        <!-- Content wrapper -->
        <div class="content-wrapper">
            <div class="layout-container">
                <!-- Menu -->

                <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
                    <div class="app-brand demo">
                        <img data-v-ef2c1d0b="" srcset="https://img.icons8.com/?size=48&amp;id=hOy6rvBnl5Jv&amp;format=png 1x, https://img.icons8.com/?size=96&amp;id=hOy6rvBnl5Jv&amp;format=png 2x" width="50" height="50" alt="Library icon">
                            <span class="app-brand-text demo menu-text fw-bolder ms-2 text-capitalize">Library</span>

                        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
                            <i class="bx bx-chevron-left bx-sm align-middle"></i>
                        </a>
                    </div>

                    <div class="menu-inner-shadow"></div>
                    <ul class="menu-inner py-1">
                                           
                        <!-- Dashboard -->
                        <li class="menu-item <?= $currentFilename === "dashboard.php" ? 'active' : '' ?>">
                            <a href="<?= url('views/admin/dashboard.php') ?>" class="menu-link">
                                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                                <div data-i18n="Analytics">Dashboard</div>
                            </a>
                        </li>

                        <li class="menu-item <?= $currentFilename === "book_details.php" ? 'active' : '' ?>">
                                <a href="<?= url('views/admin/book_details.php') ?>" class="menu-link">
                                    <i class="menu-icon tf-icons bx bx-book-open "></i>
                                    <div data-i18n="Analytics"> Books</div>
                                </a>
                            </li>

                            <li class="menu-item <?= $currentFilename === "category.php" ? 'active' : '' ?>">
                                <a href="<?= url('views/admin/category.php') ?>" class="menu-link">
                                    <i class="menu-icon tf-icons bx bx-layer"></i>
                                    <div data-i18n="Analytics">Categories</div>
                                </a>
                            </li>
   
                            <?php if ($position == 'librarian') : ?>
                            <li class="menu-item <?= $currentFilename === "issued_book_details.php" ? 'active' : '' ?>">
                                <a href="<?= url('views/admin/issued_book_details.php') ?>" class="menu-link">
                                    <i class="menu-icon tf-icons bx bx-book"></i>
                                    <div data-i18n="Analytics">details of borrowed books</div>
                                </a>
                            </li>

                        <li class="menu-item <?= $currentFilename === "user.php" ? 'active' : '' ?>">
                                <a href="<?= url('views/admin/user.php') ?>" class="menu-link">
                                    <i class="menu-icon tf-icons bx bxs-user-rectangle"></i>
                                    <div data-i18n="Analytics">Admin</div>
                                </a>
                            </li>
                            <?php endif; ?>

                            <?php if ($position == 'librarian' || $position == 'student') : ?>  
                            <li class="menu-item <?= $currentFilename === "students.php" ? 'active' : '' ?>">
                                <a href="<?= url('views/admin/students.php') ?>" class="menu-link">
                                    <i class="menu-icon tf-icons bx bxs-group"></i>
                                    <div data-i18n="Analytics">Students</div>
                                </a>
                            </li>
                            <?php endif; ?>              
                    </ul>
                </aside>
                <!-- / Menu -->

                <!-- Layout container -->
                <div class="layout-page">
                    <!-- Navbar -->

                    <nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
                        <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
                            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                                <i class="bx bx-menu bx-sm"></i>
                            </a>
                        </div>

                        <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                         The library is open for everyone to use

                            <ul class="navbar-nav flex-row align-items-center ms-auto">

              
                                <!-- User -->
                                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                        <div class="avatar avatar-online">
                                            <img src="<?= asset('assets/img/avatars/6.png') ?>" alt class="w-px-40 h-auto rounded-circle" />
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <a class="dropdown-item" href="#">
                                                <div class="d-flex">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar avatar-online">
                                                            <img src="assets/img/avatars/6.png" alt class="w-px-40 h-auto rounded-circle" />
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <span class="fw-semibold d-block"><?= $username ?></span>
                                                        <small class="text-muted text-capitalize">
                                                            <?= $position ?>
                                                        </small>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                                <i class="bx bx-power-off me-2"></i>
                                                <span class="align-middle">
                                                    Logout
                                                </span>
                                                <form id="logout-form" action="<?= url('views/auth/logout.php') ?>" method="POST" class="d-none">

                                                </form>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <!--/ User -->
                            </ul>
                        </div>
                    </nav>

                    <!-- / Navbar -->
                    
