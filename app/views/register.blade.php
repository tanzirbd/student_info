<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sylhet Engineering College</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

    @include("header")

    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Register</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>



    
    <section class="main_content">
        <div class="container">
            <div class="row player_info_area centered" style="margin-bottom:10%;">
                <h3 class="text-center blue">    </h3><br/>
                    <div class="col-md-3 player_img">
                        <?php echo'<img src="/'.$pic_dir.'" alt="user image"/>'; ?>
                    </div>
                    <div class="col-md-2"> 
                        <form action="{{URL::to('uploadImage')}}" method="post" enctype="multipart/form-data">
                            Select image to upload:
                                <input type="file" name="fileToUpload" id="fileToUpload">
                                <input type="submit" value="Upload Image">
                        </form>
                    </div>
                                            
            </div>

                    
                        <form action="{{URL::to('register_new')}}" method="post">
                            <div class="row cv_form_area">
                              <h3 class="text-center blue">Personal Information</h3><br/>
                              <div class="col-md-6 centered">

                                  <div class="form-group">
                                    <label for="pic_link">Photo link</label>
                                    <?php
                                    echo '<input type="text" class="form-control" id="pic_link" name="pic_link" value="'.$pic_dir.'">';
                                    ?>
                                  </div>
                                  <div class="form-group">
                                    <label for="name">Name</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="">
                                  </div>

                                  <div class="form-group">
                                    <label for="email">E-mail</label>
                                    <input type="text" class="form-control" id="email" name="email" placeholder="">
                                  </div>

                                  <div class="form-group"> 
                                    <label for="cell">ID</label>
                                    <input type="text" class="form-control" id="cell" name="cell"  placeholder="">
                                  </div>

                                  <div class="form-group"> 
                                    <label for="area">Session</label>
                                    <input type="text" class="form-control" id="area" name="area"  placeholder="">
                                  </div>
                                  <div class="form-group"> 
                                    <label for="dept">Department</label>
                                    <input type="text" class="form-control" id="dept" name="dept"  placeholder="">
                                  </div>
                                  <div class="form-group"> 
                                    <label for="sem">Semester</label>
                                    <input type="text" class="form-control" id="sem" name="sem"  placeholder="">
                                  </div>
                                  <div class="form-group"> 
                                    <label for="cgpa">CGPA</label>
                                    <input type="text" class="form-control" id="cgpa" name="cgpa"  placeholder="">
                                  </div>
                                  <div class="form-group"> 
                                    <label for="intr">Interest</label>
                                    <input type="text" class="form-control" id="intr" name="intr"  placeholder="">
                                  </div>
                                  <div class="form-group"> 
                                    <label for="birth_day">Birth Date</label>
                                    <input type="text" class="form-control" id="birth_day" name="birth_day"  placeholder="yyyy-mm-dd">
                                  </div>
                                  <div class="form-group"> 
                                    <label for="user_name">User Name</label>
                                    <input type="text" class="form-control" id="user_name" name="user_name"  placeholder="">
                                  </div>
                                  <div class="form-group"> 
                                    <label for="password">Password</label>
                                    <input type="text" class="form-control" id="password" name="password"  placeholder="">
                                  </div>                                  
                              </div>
                            </div>
                            <button type="submit" id="player_info_sub" class="btn btn_send centered" style="margin-left:65%;margin-bottom:5%;">Submit</button>
                    </form> 
                             
            </div>    
        </div>
    </section>                      

 
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
  </body>
</html>