<!DOCTYPE html>
<html lang="en-gb">

<head>
    <title>Create a File</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/crudmemo.css" />
    <link rel="stylesheet" href="../css/main.css">
    <!-- Icons -->
    <link href="../css/all.min.css" rel="stylesheet" />
    <link href='../css/boxicons.min.css' rel='stylesheet'>
    <!-- Lib -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="css/datatables.min.css"> -->
    <link rel="stylesheet" href="../css/mdb.min.css">
</head>
<body onload="window.scrollTo(0, 1);">
    <!-- Header -->
    <head></head>
    <!-- /Header -->
    <!-- NavBar -->
    <nav style="background: whitesmoke;" class="mb-1 navbar navbar-expand-lg navbar-light lighten-1 sticky-top">
        <!-- NavBarLogo -->
        <a class="navbar-brand" href="#"><img src="../img/ZM_Coat_of_Arms.png" height="50"></a>
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
                    <a class="nav-link " aria-current="page" href="memos_view.html">MEMOS</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link active" aria-current="page" href="memos_create.html">CREATE MEMOS</a>
                </li>
            </ul>
        </div>
        <!--./NavItemsList -->

    </nav>
    <!--./NavBar -->
    <div class="container">
        <!-- Breadcrumbs -->
        <section class="pb-5 my-5">
            <nav class="navbar navbar-expand-lg bg-success">
                <div class="container-fluid">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb text-uppercase">
                            <li class="text-white breadcrumb-item"><a href="#" class="text-white">Home</a></li>
                            <li class="text-white breadcrumb-item"><a href="#" class="text-white">Create File</a></li>
                        </ol>
                    </nav>
                </div>
            </nav>
        </section>
        <!--./Breadcrumbs -->
        <!-- Content -->
        <div id="form-container" class="column-md-5">
            <form id="cmform"class="my-form border border-light p-5">
                <div id="formTitleSet">
                    <p class="h4 mb-4 text-center" id="form_title">Create a File</p>
                </div>

                <fieldset class="md-form mb-4">
                    <input type="text" id="memo-title" class="form-control mb-4" >
                    <label class="form-label" for="memo-title">File Title</label>
                </fieldset>
                
                <fieldset class="mb-4">
                    <select class="mmd-select mb-4" id="file-type">
                        <option value="X" disabled="" selected="">File Type</option>
                        <option value="0" selected="">Domestic</option>
                        <option value="1">Portfolio</option>
                    </select>
                </fieldset>
                
            <fieldset id="loader" class="visually-hidden">
                <div class="d-flex justify-content-center">
                    <div class="spinner-border" role="status">
                      <span class="visually-hidden">Loading...</span>
                    </div>
                  </div>
            </fieldset>
            
                <fieldset id="domestic">
                    <select class="md-select mb-4" id="file-institution" searchable="Search here.." >
                        <option value="" disabled="" selected="">Institution</option>
                        <option value="1">Ministry of Education</option>
                        <option value="2">Zambia Statistical Agency</option>
                        <option value="3">Smart Zambia Institute</option>
                    </select>
                </fieldset>
            
                <fieldset id="portfolio"  class="visually-hidden">
                    <select disabled="" class="md-select mb-4" id="file-institution-szi">
                        <option value="" disabled="" selected="">Smart Zambia</option>
                    </select>
                
                    <select class="md-select mb-4" id="file-department-szi" searchable="Search here.." >
                        <option value="" disabled="" selected="">Department</option>
                        <option value="1">E-Governance</option>
                        <option value="2">Standards</option>
                        <option value="3">Systems Developer</option>
                    </select>
                </fieldset>

        
            <fieldset class="md-form mb-4">
                <input type="text" id="memo-subject" class="form-control" >
                <label class="form-label" for="memo-subject">Subject</label>
            </fieldset>
        
                <!--File upload-->
                <div id="drop-area" class="mb-4">
                    <p>Drag supporting documents here to upload</p>
                    
                    <input type="file" id="fileElem" multiple accept=".gdoc,.doc,.docx,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document,.pdf,image/*,.odt,.docm,.dot,.dotx,.dotm,.txt,.xps,.rtf,.ods,.xls,.xlsx,.xlsm,.xlt,.xltx,.xltm,.ppt,.pptx,.pptm,.pps,.ppsx,.ppsm,.pot,.potx,.potm,.epub,.mobi" onchange="handleFiles(this.files)">
                    <label class="button clear-button waves-effect waves-light" for="fileElem">Click to select documents</label>
                    <progress id="progress-bar" max=100 value=0 class=".visually-hidden" hidden></progress>
                    <div id="gallery" class="preview">
                    </div>
                </div>
                <!--./File upload-->
                <button class="btn btn-info btn-block" type="submit">Save</button>
            </form>
        </div>
        <!--./Content -->
        <footer></footer>
        <script src="../js/jquery.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/memos_table.js"></script>
        <script src='../js/jquery.dataTables.min.js'></script>
        <script src='../js/dataTables.responsive.min.js'></script>
        <script src='../js/dataTables.bootstrap4.min.js'></script>
        <script src="../js/browser_detect.js"></script>
        <script src="../js/crud_memo.js"></script>
        <script src="../js/files_create.js"></script>
        <script>
            $(document).ready(function(){
                $('#file-institution').materialSelect();
                $('#file-institution-szi').materialSelect();
                $('#file-department-szi').materialSelect();
                $('#file-type').materialSelect();
                hide("#file-institution")
                hide("#file-institution-szi")
                hide("#file-department-szi")
                hide("#file-type")
                console.log('initilized the material select')
            });
        </script>
    </body>
</html>