<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registry Officer - Home</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet"/>
    <link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.0/css/boxicons.min.css' rel='stylesheet'>
    
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/mdb.min.css">
    <link rel="stylesheet" href="../css/memos_table.css">
</head>

<body>
    
 <!-- NavBar -->
 <nav style="background: whitesmoke;"class="mb-1 navbar navbar-expand-lg navbar-light lighten-1 sticky-top">
    
    <!-- NavBarLogo -->
    <a class="navbar-brand" href="index_s.html"><img src="../img/ZM_Coat_of_Arms.png"  height="50"></a>
    <!--./NavBarLogo -->
    
    <!-- NavBarTitle -->
    <div class="mx-1 my-4 text-uppercase">
      <h1 class="m-0 p-0 small">System user</h1>
      <h1 class="my-2 p-0 small">Registry Officer</h1>
    </div>
    <!--./NavBarTitle -->

    <!-- Hamburger Menu Bars -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-555"
    aria-controls="navbarSupportedContent-555" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <!--./Hamburger Menu Bars -->

    <!-- NavItemsList -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent-555">
      <ul class="navbar-nav ml-auto nav-flex-icons">
        <li class="nav-item ">
          <a class="nav-link " aria-current="page" href="index.html">HOME</a>
        </li>                 
        <li class="nav-item ">
          <a class="nav-link " aria-current="page"  href="memos_view.html">MEMOS</a>
        </li>                 
        <li class="nav-item ">
        <a class="nav-link active" aria-current="page" href="memos_create.html">CREATE MEMOS</a>
      </li>                 
      </ul>
    </div>
    <!--./NavItemsList -->

  </nav>
  <!--./NavBar -->


  <!-- Content -->
  <div class="container">

    <!-- Breadcrumbs -->
    <section class="pb-5 my-5" >
      <nav class="navbar navbar-expand-lg bg-success">
        <div class="container-fluid">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb text-uppercase">
              <li class="text-white breadcrumb-item"><a href="#" class="text-white">Home</a></li>
            </ol>
          </nav>
        </div>
      </nav>
    </section>
    <!--./Breadcrumbs -->
    <!-- HomePageDashboard -->
    <section class="row justify-content-center">
        <div class="col-lg-6 col-sm-2">
            <div class="card">
                <div class="card-body">
                    <div class="card-title mb-2">
                        <h4 class="float-left"><i class='bx bx-folder-plus' ></i>CREATE MEMO</h4>
                    </div>
                    
                </div>
            </div>
        </div>

    <div class="col-lg-6 col-sm-2">
        <div class="card">
            <div class="card-body">
                <div class="card-title mb-2">
                    <h4 class="float-left">MEMOS</h4>
                    <h4 class="float-right">123</h4>
                </div>
                
            </div>
        </div>
    </div>
    

    </section>
    <!-- HomePageDashboard -->
</div>

<!--./Content -->

  

  <script src="../js/jquery.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/mdb.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.19/js/jquery.dataTables.min.js'></script>
  <script src='https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js'></script>
  <script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
</body>
</html>