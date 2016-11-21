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
    <link rel="stylesheet" href="/css/owl.carousel.css">
    <link rel="stylesheet" href="/style.css">
    <link rel="stylesheet" href="/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body >
    @include("header")
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Students login</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="login" style="background-image: url(/img/abc.jpg);">
          <div class="wwrap" >
                <div class="col_1_of_login span_1_of_login">
                    <h4 class="title">New Student</h4>
                    <h5 class="sub_title">Register Account</h5>
                    <p>New students have to register here to enroll courses. </p>
                    <div class="button1">
                       <a href="{{URL::to('register')}}"><input type="submit" name="Submit" value="Continue"></a>
                     </div>
                     <div class="clear"></div>
                </div>
                <div class="col_1_of_login span_1_of_login">
                  <div class="login-title">
                    <h4 class="title">Registered Students</h4>
                    @if(Input::get('e') == 1)
                    <div class="bg-danger danger" style="padding: 10px 10px;">
                        <p>Invalid Username or Password</p>
                    </div>
                    @endif
                     <div class="comments-area">

                        <form action="{{URL::to('log_request')}}" method="post">

                            <p style="color:red";>{{$log_message}}</p>
                            <p>
                                <label>Name</label>
                                <span>*</span>
                                <input name="username" type="text" required>
                            </p>
                            <p>
                                <label>Password</label>
                                <span>*</span>
                                <input name="password" type="password" required>
                            </p>
                             <p id="login-form-remember">
                                <label><a href="#">Forget Your Password ? </a></label>
                             </p>
                             <p>
                                <input type="submit" value="Login" style="margin-top:-40px;">
                            </p>
                        </form>
                    </div>
                  </div>
                </div>
             <div class="clear"></div>   
        </div>
    </div>

    
   
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