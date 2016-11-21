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
                        <h2>Academic Resources sharing</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="main_content">
        <div class="container">
            <div class="row player_info_area centered" style="margin-bottom:10%;">
                <h3 class="text-center blue">    </h3><br/>                   
                    <div class="col-md-2"> 
                        <form action="{{URL::to('/upload_file')}}" method="post" enctype="multipart/form-data">
                            Select file to upload:

                                <input type="hidden" name="user_id" value="{{Session::get('user_id')}}">
                                <input type="file" name="fileToUpload" id="fileToUpload">
                                <input type="submit" value="Upload file">
                        </form>
                    </div>
                    <div class="col-md-offset-2 col-md-8">
                        <div class="col-md-9"><h3>File Archive</h3>
                            <div class="row">
                               <div class="col-md-10">
                                   <table class="table table-bordered">
                                  <thead>
                                    <tr>
                                      <th>id</th>                                     
                                      <th>Uploaded_by</th>
                                      <th>File_link</th>
                                      <th>Time Stamp</th>
                                      <th>Download</th>
                                    </tr>
                                  <thead>
                                  <tbody>

                                    @foreach($file_info as $file)
                                      <tr>
                                        <td>{{$file->id}}</td>
                                        <td>{{$file->name}}</td>
                                        <td>{{$file->file_link}}</td>
                                        <td>{{$file->time_stamp}}</td>
                                        <td>
                                           <button class="download" type="button" class="btn btn-danger btn-sm" data-id="{{$file->id}}">Download</button>
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
    <script>
        $(document).ready(function(){ 
                $('button.download').on('click',function(){

                  $.ajax({

                      type:'post',
                      url: 'download',
                      data:{

                        id : $(this).data('id')
                     },
                      dataType:'text',
                    
                      success: function(data){

                        console.log(data);
                        // Append with fadeIn see http://stackoverflow.com/a/978731
                        //if(data=="ok"){
                            window.location="http://localhost:8000/img/"+data;
                                
                               
                        //}
                        
                   
                        
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