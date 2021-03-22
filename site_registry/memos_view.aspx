<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registry Officer - Create Memo</title>
    <link href="../css/all.min.css" rel="stylesheet"/>
    <link href='../css/boxicons.min.css' rel='stylesheet'>
    
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/mdb.min.css">
    <link rel="stylesheet" href="../css/memos_table.css">

</head>

<body>

    
  <!-- NavBar -->
  <nav style="background: whitesmoke;"class="mb-1 navbar navbar-expand-lg navbar-light lighten-1 sticky-top">
  <div class="container-fluid">

    <!-- NavBarLogo -->
    <a class="navbar-brand" href="memos_view_s.html"><img src="../img/ZM_Coat_of_Arms.png"  height="50"></a>
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
  </div>  

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
               <li class="text-white breadcrumb-item"><a href="#" class="text-white">View memo </a></li>
              </ol>
            </nav>

            <!-- SearchField -->
            <form class="form-inline ml-auto">
              <div class="form-inline  my-0">
                <input class="form-control" type="text" id="searchField" placeholder="Search" aria-label="Search">
                <i class="fas fa-search text-white ml-3" aria-hidden="true"></i>
              </div>
            </form>
            <!--./SearchField -->
        </div>
      </nav>
    </section>
    <!--./Breadcrumbs -->
    
    <!--MemosTable  -->
    <div class="container">
        <div class="row ">
        <div class="col-12">
          <!-- <table id="example" class="table table-hover responsive nowrap" style="width:100%;"> -->
          <table id="example" class="table table-hover responsive nowrap" style="width:100%; border-collapse: unset;">
            <thead>
              <tr class="text-uppercase">
                <th>Memo Title</th>
                <th>File Index</th>
                <th>Institution</th>
                <th>Date Created </th>
                <th>Metadata</th>
                <th>Documents</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              <tr class="my-2">
                <td>
                  <a href="#">
                    <div class="d-flex align-items-center">
                      <div class="">
                        <h2 class="font-weight-bold mb-0">E-Registry</h2>
                        <p class="text-muted mb-0">SZI/101/1/16</p>
                      </div>
                    </div>
                  </a>
                </td>
                <td>SZI/101/1/16</td> 
                <td>PSMD</td>
                <td>09/04/1996</td>
                <td>
                  <ul>
                      <li>Institution: MOE</li>
                      <li>Documents: 2</li>
                      <li>Classification: CIA</li>
                  </ul>
                  </td>
                <td>
                  <ul>
                    <a href="#">
                      <li><i class='bx bxs-file-doc' ></i>Proposal to enhance the Registry System</li>
                    </a>
                    <a href="#">
                      <li><i class='bx bxs-file-doc' ></i>Terms of Reference</li>
                    </a>
                    </ul>
                </td>
                <td>
                  <div class="dropdown">
                    <button class="btn btn-sm btn-icon" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="bx bx-dots-horizontal-rounded" data-toggle="tooltip" data-placement="top"
                            title="Actions"></i>
                        </button>
                        <i class='bx ' ></i>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                      <a class="dropdown-item" href="#"><i class="bx bxs-pencil mr-2"></i> Edit</a>
                      <a class="dropdown-item text-danger" href="#"><i class="bx bxs-trash mr-2"></i> Remove</a>
                    </div>
                  </div>
                </td>
              </tr>

              <tr class="">
                <td>
                  <a href="#">
                    <div class="d-flex align-items-center">
                      <div class="">
                        <h2 class="font-weight-bold mb-0 text-warning" data-toggle="tooltip"
                        title="Incomplete Submission" >ZIAMIS <i class="bx bxs-error-alt small"></i></h2>
                        <p class="text-muted mb-0">SZI/102/1/26</p>
                      </div>
                    </div>
                  </a>
                </td>
                <td>SZI/102/1/26</td> 
                <td>MOA</td>
                <td>09/04/2018</td>
                <td>
                  <ul>
                      <li>Institution: MOA</li>
                      <li>Documents: 1</li>
                      <li>Classification: CIA</li>
                  </ul>
                  </td>
                <td>
                  <ul>
                    <a href="#">
                      <li class="text-danger"><i class='bx bxs-file-doc' ></i>Proposal to enhance the ZIAMIS System</li>
                    </a>
                    </ul>
                </td>
                <td>
                  <div class="dropdown">
                    <button class="btn btn-sm btn-icon" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="bx bx-dots-horizontal-rounded" data-toggle="tooltip" data-placement="top"
                            title="Actions"></i>
                        </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                      <a class="dropdown-item" href="#"><i class="bx bxs-pencil mr-2"></i> Edit</a>
                      <a class="dropdown-item text-danger" href="#"><i class="bx bxs-trash mr-2"></i> Remove</a>
                    </div>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    
    <!--./MemosTable  -->

  </div>
  <!--./Content -->

<!-- removed the footer -->
<script src="../js/jquery.min.js"></script>
<script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/mdb.min.js"></script>
  <script src="../js/memos_table.js"></script>
  <script src='../js/jquery.dataTables.min.js'></script>
  <script src='../js/dataTables.responsive.min.js'></script>
  <script src='../js/dataTables.bootstrap4.min.js'></script>
<script>
</script>
</body>
</html>