<?php?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Charts - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <!--Header -->
        <?php include('includes/header.php');?>
        <!--/Header -->

        <div id="layoutSidenav">
           	<!--Sidebar -->
			<?php include('includes/sidebar.php');?>
			<!-- /Sidebar--> 
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Account</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Account</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <form>
                                    <div class="form-row">
                                    <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputFaIDCardNumber">User ID</label>
                                                <input class="form-control py-4" id="inputFaIDCardNumber" type="text" readonly />
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputFaIDCardNumber">Name</label>
                                                <input class="form-control py-4" id="inputFaIDCardNumber" type="text" readonly />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputFaIDCardNumber">Email</label>
                                                <input class="form-control py-4" id="inputFaIDCardNumber" type="text" readonly />
                                            </div>
                                        </div>
                                  
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputFaIDCardNumber">Password</label>
                                                <input class="form-control py-4" id="inputFaIDCardNumber" type="text" readonly />
                                            </div>
                                        </div>

                                        
                                        
                                    </div>

                                    <div class="form-row">
                                    <div class="col-md-6">
                                        
                                    </div>
                                </div>

                                    

                                   

                                    <script>

                                        function add() {
                                            var x = parseInt(document.getElementById("inputPriceOf1KG").value);
                                            var y = parseInt(document.getElementById("inputNumberOfKG").value);
                                                 document.getElementById("inputTotalAmount").value = x * y;
                                    }
                                    </script>

                                    <!--Batton Save-->
                                    <div class="form-group mt-4 mb-0"><button class="btn btn-primary btn-block" name="submit" type="submit">Save</button>

                                    </div>

                                    <!--Batton Cancel-->
                                    <div class="form-group mt-4 mb-0"><button class="btn btn-secondary btn-block" type="reset">Edit</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </main>

                <!--Footer -->
                <?php include('includes/footer.php');?>
                <!--/Footer -->
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="assets/demo/chart-pie-demo.js"></script>
    </body>
</html>
