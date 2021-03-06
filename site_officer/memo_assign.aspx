<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="../css/all.css">
    <!-- Google Fonts -->
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    
    <title>E-Registry</title>
</head>
    <body>
        <div >
            <header class="pb-5">
                <section>
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="container">            
                            <div>
                                <a class="navbar-brand" href="#">
                                    <img src="../img/coat-of-arms.png" height="50" alt="" loading="lazy" />
                                </a>
                                | 
                            </div>

                            <div class="float-right">
                                <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarNav" 
                                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation" >
                                    <i class="fas fa-bars"></i>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNav">
                                    <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">In-Tray</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Tasks</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Out-Tray</a>
                                    </li>
                                    </ul>
                                </div>
                            </div>
                          
                        </div>
                    </nav> 
                </section>
            </header>
            
            <div class="container">
                <section class="pb-5" >
                    <nav class="navbar navbar-expand-lg bg-success">
                        <div class="container-fluid">
                          <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                              <li class="text-white breadcrumb-item"><a href="#" class="text-white">Home</a></li>
                              <li class="breadcrumb-item"><a href="#" class="text-white">Assign</a></li>
                            </ol>
                          </nav>
                        </div>
                    </nav>
                </section>
                    
                <section>
                    <div class="row">
                        <div class="col-md-6 offset-3">
                            <div class="mx-auto">
                                <div class="my-auto">
                                    <!-- Default form login -->
                                    <form class="text-center border border-light p-5" action="#!">
                                        <div class="text-left">
                                            <p><h6>TITLE:</h6> </p>
                                            <p><h6>CLASSIFICATION: CIA</h6></p>
                                        </div>
                                        
                                        <!-- selector -->
                                        <!-- <input type="email" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="E-mail"> -->
                                        <div class ="text-left">
                                           
                                            <select class="mdb-select md-form" multiple>
                                                <option value="" disabled selected>Select Office</option>
                                                <option value="1">Option 1</option>
                                                <option value="2">Option 2</option>
                                                <option value="3">Option 3</option>
                                              </select>
                                              <!-- <label class="mdb-main-label">Example label</label> -->
                                              <button class="btn-save btn btn-success btn-sm">Save</button>
                                        </div>
                                        <!-- Password -->
                                        <br/>
                                        <!-- <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password"> -->
                                        <div class ="text-left">
                                            <select class="browser-default custom-select">
                                                <option selected>Priority</option>
                                                <option value="1">High</option>
                                                <option value="2">Medium</option>
                                                <option value="3">Low</option>
                                              </select>
                                        </div>
                                      
                                        <!-- xxxxxxxxxxx new xxxxxxxxxxxxx --> 
                                          <div class="form-group">
                                            <label for="exampleFormControlTextarea2">INSTRUCTIONS. </label>
                                            <textarea class="form-control rounded-0" id="exampleFormControlTextarea2" rows="3"></textarea>
                                          </div>
                                        <!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx -->

                                        
        
                                        <!-- Sign in button -->
                                        <button class="btn btn-success btn-block my-4" type="submit">ASSIGN</button>
        
                                     
                                        <!-- Social login -->
                                      
                                    </form>
                                    <!-- Default form login -->
                                </div> 
                            </div>
                        </div>
                    </div>
                                        
                </section>
            </div>
                       
        </div>
       

        <!-- JQuery -->
        <script type="text/javascript" src="../js/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="../js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="../js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="../js/mdb.min.js"></script>
        <script>
            // Material Select Initialization
            $(document).ready(function() {
                $('.mdb-select').materialSelect();
                });
        </script>
    </body>
</html>