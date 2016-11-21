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
                        <h2>Students Forum</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>



    
        <div class="container-fluid" style="background-image:url(/img/abc.jpg);">
            <div class="row player_info_area centered" style="margin-bottom:10%;">
                <h3 class="text-center blue">    </h3><br/>
                    <div class="col-md-3" style="min-height:800px;min-width:20%;">
                        
                    </div>
                    
                    <div class="col-md-6 demo" style="overflow:scroll;background-color:#fff !important;">
                        <div class="row">
                            <div class="col-md-offset-2 col-md-10" style="position:relative;top:1em;">
                                <form id="forum_post">
                                    <div class="form-group">
                                        <textarea class="form-control" id="forum_post" name="forum_post" rows="7" style="max-width:80%"></textarea>
                                    </div>
                                    <div class="">
                                        <button type="submit" class="btn btn-primary btn-small">Post</button>
                                    </div>
                                </form>
                            </div>
                        </div> 
                        <div class="row" id="new_post" style="position:relative;top:3em;">


                        </div>                                   
                    </div>


                         
                    <div class="col-md-3 player_img">                                                
                        
                    </div>                                            
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

    <script type="text/javascript">
        $(document).ready(function(){

            
               $.ajax({

                      type:'post',
                      url: 'all_forum_post',
    
                       dataType:'json',
                    
                      success: function(data){
                        // Append with fadeIn see http://stackoverflow.com/a/978731
                        if(data){
                            
                            $.each(data,function(i,item){
                                   
                                jQuery('<div/>',{

                                id:'time_stamp'+item.id,
                                class: 'col-md-offset-2 col-md-8 well'
                    

                            }).prependTo('#new_post');
                              
                             console.log(item.name); 
                            $('#time_stamp'+item.id).append('<p>'+item.name+'</P>');
                            $('#time_stamp'+item.id).append('<p>'+item.time_stamp+'</P>');
                            $('#time_stamp'+item.id).append('<p id="post" style="border:1px solid black;border-radius:0.5em;padding:1em;">'+item.post+'</P>');

                            var count=0;

                            $('<button/>', {
                                  
    
                                class:'btn btn-primary btn-sm',
                                text: 'comment', 
                                'data-id'  : item.id,
                                click: function(){

                                    commentFunction($(this).data('id'));
                                }
                                 
                            }).appendTo($('#time_stamp'+item.id));

                            


                           });     
                               
                        }
                   
                        
                      },
                      error: function(e){
                        alert('something went wrong');
                      }
                    });




            $('#forum_post').on('submit',function(e){
                e.preventDefault();

              //  console.log($(this).serialize());

                     $.ajax({
                      type:'post',
                      url: 'forum_post',
                      data: $(this).serialize(),
                       //form serizlize data
                    
                      success: function(data){
                        // Append with fadeIn see http://stackoverflow.com/a/978731
                        console.log(data);
                        if(data){
                              
                              location.reload(true);
                             
                                

                        }
                   
                        
                      },
                      error: function(e){
                        alert('something went wrong');
                      }
                    });
            });

            function commentFunction(value){

                if($('#time_stamp'+value).find('textarea').length){

                    return;
                }

              
                 jQuery('<textarea/>',{

                        id:'real_post_coment'+value,
                        class:'form-control',
                         rows:'2',


                     }).appendTo('#time_stamp' + value).css('margin-top','1em');

                 $('<button/>', {
                                  
    
                                class:'btn btn-primary btn-sm',
                                text: 'post your comment', 
                                'data-id'  : value,
                                click: function(){

                                    commentSubmitFunction($(this).data('id'));
                                }
                                 
                }).appendTo($('#time_stamp'+value));

                 $.ajax({

                      type:'post',
                      url: 'post_coment',
                      data:{

                        id : value
                     },
                      dataType:'json',
                    
                      success: function(data){
                        // Append with fadeIn see http://stackoverflow.com/a/978731
                        if(data){
                            
                            $.each(data,function(i,item){
                                   
                                jQuery('<div/>',{

                                id:'comment_id'+item.id,
                                class: 'col-md-offset-2 col-md-6 well'
                    

                            }).insertAfter('#time_stamp'+value);
                              
                            $('#comment_id'+item.id).append('<p>'+item.name+'</P>');
                            $('#comment_id'+item.id).append('<p>'+item.time_stamp+'</P>');
                            $('#comment_id'+item.id).append('<p id="post">'+item.comment+'</P>');

        

                            


                           });     
                               
                        }
                        
                   
                        
                      },
                      error: function(e){
                        alert('something went wrong');
                      }
                    });

            }

            function commentSubmitFunction(value){

                 $.ajax({

                      type:'post',
                      url: 'real_post_coment',
                      data:{

                        id: value,
                        comment : $('#real_post_coment'+value).val()
                     },
                      dataType:'json',
                    
                      success: function(data){

                        console.log(data);
                        // Append with fadeIn see http://stackoverflow.com/a/978731
                        if(data){
                            
            
                                   
                                $.each(data,function(i,item){

                                  jQuery('<div/>',{

                                id:'new_comment_id' + value,
                                class: 'col-md-offset-2 col-md-6 well '
                    

                            }).insertAfter('#time_stamp'+value);
                              
                            $('#new_comment_id'+value).append('<p>'+item.name+'</P>');
                            $('#new_comment_id'+value).append('<p>'+item.time_stamp+'</P>');
                            $('#new_comment_id'+value).append('<p id="post">'+item.comment+'</P>');

                                });

        

                            


                              
                               
                        }
                        
                   
                        
                      },
                      error: function(e){
                        alert('something went wrong');
                      }
                    });

            }

            

        });
    </script>
  </body>
</html>