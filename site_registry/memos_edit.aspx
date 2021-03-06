<!DOCTYPE html>
<html lang="en-gb">

<head>
    <title>Edit: {Get title from memo}? | Memos</title>
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
                            <li class="text-white breadcrumb-item"><a href="#" class="text-white">Edit Memo</a></li>
                        </ol>
                    </nav>
                </div>
            </nav>
        </section>
        <!--./Breadcrumbs -->

        <!-- Content -->
        <div id="form-container" class="column-md-5">
            <form class="my-form border border-light p-5">
                <p class="h4 mb-4 text-center">Edit memo</p>
                <label for="memo-title">Memo Title</label>
                <input type="text" id="memo-title" class="form-control mb-4" placeholder="Title">
                <label for="memo-institution">Source Institution</label>
                <select class="browser-default custom-select mb-4" id="memo-institution">
                    <option value="" disabled="" selected="">Select an institution</option>
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                </select>

                 <label for="memo-contacts">Contact person(s)</label>
                <select class="mdb-select md-form mb-4" editable="true" searchable="Search or add contact..." id="memo-contacts" onchange="this.nextElementSibling.value=this.value">
                    <option value="" disabled="" selected="">type contact people</option>
                    <option value="1">John Musonda 0964758654</option>
                    <option value="2">Mwale Tembo 077556478</option>
                    <option value="3">Mwiche Sulipwa 0952332458</option>
                    
                </select>

                <label for="memo-classification">Memo Classification</label>
                <select class="browser-default custom-select mb-4" id="memo-classification">
                    <option value="" disabled="" selected="">Select a classification</option>
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                </select>

                <label for="memo-files">Memo documents</label>
                <div id="memo-files" class="form-control mb-4">
                    <!--TODO: find a way to get files list fro SP and populate this list-->
                </div>
                
                <!--File upload-->
                <div id="drop-area">
                    <p>Drag supporting documents here to upload</p>
                    <input type="file" id="fileElem" multiple accept="image/*" onchange="handleFiles(this.files)">
                    <label class="button clear-button waves-effect waves-light" for="fileElem">Click to select documents</label>
                    <progress id="progress-bar" max=100 value=0 class=".visually-hidden" hidden></progress>
                    <div id="gallery" class="preview">
                    </div>
                </div>
                <button class="btn btn-info btn-block" type="submit">Save</button>
            </form>
        </div>
        <!--./Content -->
        <footer></footer>
        <script src="../js/crud_memo.js"></script>
        <script src="../js/jquery.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/mdb.min.js"></script>
        <script src="../js/memos_table.js"></script>
        <script src='../js/jquery.dataTables.min.js'></script>
        <script src='../js/dataTables.responsive.min.js'></script>
        <script src='../js/dataTables.bootstrap4.min.js'></script>
        <script src="../js/browser_detect.js"></script>
        <script>
            $(document).ready(function() {
                // Material Select
                    $('.mdb-select').materialSelect({});
                })
        </script>
</body>

</html>