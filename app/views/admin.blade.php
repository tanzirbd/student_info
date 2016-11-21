<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>justExchangeAnything.com</title>
    
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
                        <h2>Admin Panel</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-3">
               <ul class="nav nav-pills nav-stacked">
                   <li><a data-toggle="pill" href="#profile">Profile Management</a></li>
                   <li><a data-toggle="pill" href="#post">Public Post Management</a></li>
                   <li><a data-toggle="pill" href="#forum_post">forum Post Management</a></li>                   
               </ul>
            </div>
            <div class="tab-content">
                <div class="col-md-9 tab-pane fade in active" id="profile" ><h3>Profile Management</h3>
                    <div class="row">
                       <div class="col-md-10">
                           <table class="table table-bordered">
                          <thead>
                            <tr>
                              <th>id</th>
                              <th>Name</th>
                              <th>Email</th>
                              <th>Member From</th>
                              <th>Profile Photo</th>
                              <th>Ban this User!</th>
                            </tr>
                          <thead>
                          <tbody>
                            @foreach($user_data as $user)
                              <tr>
                                <td>{{$user->id}}</td>
                                <td>{{$user->name}}</td>
                                <td>{{$user->email}}</td>
                                <td>{{$user->time_stamp}}</td>
                                <td>{{$user->photo_link}}</td>
                                <td>
                                   <button class="delete" type="button" class="btn btn-danger btn-sm" data-id="{{$user->id}}">Delete</button>
                                </td>
                              <tr/>
                            @endforeach
                          </tbody>
                       </table>
                       </div>
                    </div>
                </div>

                <div class="col-md-9 tab-pane fade in" id="forum_post"><h3>forum Post Management</h3>
                    <div class="row">
                       <div class="col-md-10">
                           <table class="table table-bordered">
                          <thead>
                            <tr>
                              <th>id</th>
                              <th>Forum Post</th>
                              <th>Posted By</th>
                              <th>Time Stamp</th>
                              <th>Profile Photo</th>
                              <th>Delete IT!</th>
                            </tr>
                          <thead>
                          <tbody>
                            @foreach($all_forum_post as $forum_post)
                              <tr>
                                <td>{{$forum_post->id}}</td>
                                <td>{{$forum_post->name}}</td>
                                <td>{{$forum_post->post}}</td>
                                <td>{{$forum_post->time_stamp}}</td>
                                <td>{{$forum_post->photo_link}}</td>
                                <td>
                                   <button class="delete_forum_post" type="button" class="btn btn-danger btn-sm" data-id="{{$forum_post->id}}">Delete</button>
                                </td>
                              <tr/>
                            @endforeach
                          </tbody>
                       </table>
                       </div>
                    </div>
                </div>

                <div class="col-md-9 tab-pane fade in" id="post"><h3>Public Post Management</h3>
                    <div class="row">
                       <div class="col-md-10">
                           <table class="table table-bordered">
                          <thead>
                            <tr>
                              <th>id</th>
                              <th>Post</th>
                              <th>Posted By</th>
                              <th>Time Stamp</th>
                              <th>Profile Photo</th>
                              <th>Delete IT!</th>
                            </tr>
                          <thead>
                          <tbody>
                            @foreach($product_data as $product)
                              <tr>
                                <td>{{$product->id}}</td>
                                <td>{{$product->name}}</td>
                                <td>{{$product->title}}</td>
                                <td>{{$product->time_stamp}}</td>
                                <td>{{$product->photo_link}}</td>
                                <td>
                                   <button class="delete_post" type="button" class="btn btn-danger btn-sm" data-id="{{$product->id}}">Delete</button>
                                </td>
                              <tr/>
                            @endforeach
                          </tbody>
                       </table>
                       </div>
                    </div>
                </div>
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

             $('button.delete').on('click',function(){

                  $.ajax({

                      type:'post',
                      url: 'delete_user',
                      data:{

                        id : $(this).data('id')
                     },
                      dataType:'text',
                    
                      success: function(data){
                        // Append with fadeIn see http://stackoverflow.com/a/978731
                        if(data=="ok"){
                            window.alert("has been deleted");
                            location.reload('true');
                                
                               
                        }
                        
                   
                        
                      },
                      error: function(e){
                        alert('something went wrong');
                      }
                    });

             });


        $('button.delete_forum_post').on('click',function(){

                  $.ajax({

                      type:'post',
                      url: 'delete_forum_post',
                      data:{

                        id : $(this).data('id')
                     },
                      dataType:'text',
                    
                      success: function(data){
                        // Append with fadeIn see http://stackoverflow.com/a/978731
                        if(data=="ok"){
                            window.alert("has been deleted");
                            location.reload('true');
                                
                               
                        }
                        
                   
                        
                      },
                      error: function(e){
                        alert('something went wrong');
                      }
                    });

             });

        $('button.delete_post').on('click',function(){

                  $.ajax({

                      type:'post',
                      url: 'delete_post',
                      data:{

                        id : $(this).data('id')
                     },
                      dataType:'text',
                    
                      success: function(data){
                        // Append with fadeIn see http://stackoverflow.com/a/978731
                        if(data=="ok"){
                            window.alert("has been deleted");
                            location.reload('true');
                                
                               
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