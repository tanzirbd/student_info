<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>justExchangeAnything.com - Single Post</title>
    
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
  <body>

  @include("header")
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Single Post</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Search Products</h2>
                        <form action="">
                            <input type="text" placeholder="Search products...">
                            <input type="submit" value="Search">
                        </form>
                    </div>
                </div>
                @foreach($posted_by as $posted_by)
                <div class="col-md-8">
                    <div class="product-content-right">
                        
                        
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src="/{{$posted_by->photo_link}}" alt="">
                                    </div>
                                    
                                    
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name">{{$posted_by->title}}</h2>
                                    <div class="product-inner-price">
                                        Posted By:
                                        <a href="{{URL::to('profile_for_public/'.$posted_by->user_id.'')}}">{{$posted_by->name}}</a>
                                        <h5>{{$posted_by->time_stamp}}</h5>
                                    </div>    
                                     
                                    
                                    
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Product Description</h2>  
                                               {{$posted_by->detail}}</p>
                                            </div>
                                            <div><h2>Contact with this person</h2>  phone : {{$posted_by->phone_number}}</div>
                                            <div>          e-mail : {{$posted_by->email}}</div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <h2>Reviews</h2>
                                                <div class="submit-review">
                                                    <p><label for="name">Name</label> <input name="name" type="text"></p>
                                                    <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                    <div class="rating-chooser">
                                                        <p>Your rating</p>

                                                        <div class="rating-wrap-post">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p><label for="review">Your review</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                    <p><input type="submit" value="Submit"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div style="border:1px solid black;border-radius:0.5em;padding:1em;">
                                <div class="row">
                                    <div class="col-md-offset-2 col-md-8" style="position:relative;top:1em;">
                                        <form id="product_comment">
                                            <div class="form-group">
                                                <textarea class="form-control" id="comment" name="comment" rows="2" style="max-width:80%;" placeholder="Post comment for further info..."></textarea>
                                            </div>
                                            <input type="hidden" name="product_id" value="{{$id}}">
                                            <div class="">
                                                <button type="submit" class="btn btn-primary btn-sm">comment</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                @if(isset($product_all))
                                @foreach($product_all as $product)
                                <div class="row" id="product_comment" style="position:relative;top:3em;">
                                     <div class="col-md-offset-3 col-md-6 well">
                                        <p>{{$product->name}} says</p>
                                        <p>{{$product->time_stamp}}</p>
                                        <p>{{$product->comment}}</p>
                                     </div>
                                </div>
                                @endforeach
                                @endif
                            </div>
                        </div>
                        
                        

                    </div>                    
                </div>
                @endforeach
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
    <script type="text/javascript">
        $(document).ready(function(){


                $('#product_comment').on('submit',function(e){
                e.preventDefault();

              //  console.log($(this).serialize());

                     $.ajax({
                      type:'post',
                      url: 'ready_product_comment',
                      data: $(this).serialize(),
                       //form serizlize data
                    
                      success: function(data){
                        // Append with fadeIn see http://stackoverflow.com/a/978731
                        console.log(data);
                        if(data){
                              
                              window.location="http://localhost:8000/single_post/"+data;
                             
                                

                        }
                   
                        
                      },
                      error: function(e){
                        alert('something went wrong');
                      }
                    });
            });
            });
    </script>
  </body>
</html>