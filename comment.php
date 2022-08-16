<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Comment</title>
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"
        crossorigin="anonymous"></script>
</head>

<body class="bg-new">

<?php

  require_once "config.php";
  
  $error = ''; 
  if(isset($_POST['submit']))
  {     
    
      
      $text =  $_POST['comment'];

      $sql = ("INSERT INTO `comments`(`comment`) VALUES ($text)");
      $result = mysqli_query($link,$sql);
      $count = mysqli_num_rows($result);
      
      if($count)
      {
       header('location:adDash.php');
          die();
      }
      
      
      
  
  }
?>
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">COMMENT</h3>
                                </div>
                                

                                <div class="card-body">
                                    <form method="POST">
                                        <div class="form-group">
                                            <label class="small mb-1" for="inputUserId">Enter the Comment Here</label>
                                            <input class="form-control py-4" id="inputUserId" name="comment" type="text-area"
                                                placeholder="Enter the comment" required />
                                        </div>
                                       
                                        
                                        <div
                                            class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <a class="small" style="color:red;"><?php  echo $error?></a>
                      <input type="submit" class="btn btn-primary" value="submit" id="login" name="Submit">
      
                                        </div>
                                    </form>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>

    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>

</html>
