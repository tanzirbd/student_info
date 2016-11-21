<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>justExchangeAnything.com - profile</title>
    
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
                        @if($profile)
                        <h2>{{$profile->name}}</h2>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
    
        <div class="container-fluid" style="background-image:url(img/abc.jpg);">
            <div class="row player_info_area centered" style="margin-bottom:10%;">
                <h3 class="text-center blue">    </h3><br/>
                    <div class="col-md-3" style="min-height:800px;min-width:20%;">
                        @if($profile)
                        <h2>{{$profile->name}}</h2>
                        @endif

                        @if($profile)
                        <img src="/{{$profile->photo_link}}" alt="user image"/>
                        @endif

                    </div>
                    
                            <div class="col-md-6 demo" style="background-color:#fff !important;">
                                <div class="row">
                                      <div class="col-md-offset-2 col-md-8" style="position:relative;top:1em;">

                                @if($product_post)
                                    @foreach($product_post as $product)
                                    <div>
                                        <h3 class="product-name">
                                            <a href="{{URL::to('single_post/'.$product->id.'')}}">{{$product->title}}</a>
                                        </h3>
                                    </div>
                                    
                                    <div class="product-images">
                                        <div class="product-main-img">
                                             <img src="{{$product->photo_link}}" alt=""/>
                                        </div>
                                        
                                        
                                    </div>
                                    @endforeach
                                @endif
                                  </div>
                            </div>
                                
                                    
                            </div>
                      



 
                       
                    <div class="col-md-3 player_img">
                        <div>
                            <a href="{{URL::to('edit_profile/'.$id.'')}}" style="color:#888;"><h4>Edit Profile</h4></a>
                        </div>
                        <div>
                            <a href="{{URL::to('/add_post')}}" style="color:#888;"><h4>Post an Advertise!</h4></a>
                        </div>
                        <div>
                            <a href="{{URL::to('/exchange_history')}}" style="color:#888;"><h4>Exchange History</h4></a>
                        </div>

                        <!-- @for($i = 0; $i < 10; $i++)
                            <p>{{'asdsads'}}</p>
                        @endfor -->
                    </div>                                            
            </div>
        </div>
    







    @include("footer")
   
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