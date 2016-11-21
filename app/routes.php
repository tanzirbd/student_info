<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/file_transfer', function()
{
	if(Session::get('login')=='yes')
	{

		$file_info=DB::table('profile')
				    ->join('file_upload', 'profile.user_id', '=', 'file_upload.user_id')
				    ->select('name','file_upload.time_stamp', 'profile.user_id','file_link', 'file_upload.id')				    
				    ->get();



	   return View::make('file_transfer')->with('file_info',$file_info);
    }

    else{
    	return Redirect::to('/login');
    }
});






Route::get('/chat_messenger', function()
{
	return View::make('');
});




Route::get('test',function(){
	      

        $file=Files::where('id','3')->get();

        // foreach ($file as $key) {
        // 	file_put_contents("$key->file_name", fopen("public\img", 'r'));
        // }

        foreach ($file as $key) {
        $filename = $key->file_name;

		return $filename;
	}


        

        //file_put_contents("$file->file_name", fopen("$file->file_link", 'r'));
	    	//$abc=Input::get('id');

	    	//return $file;

});

Route::get('admin', function()
{
	$user_data= DB::table('profile')
				    ->join('users', 'profile.user_id', '=', 'users.id')
				    ->select('name','profile.time_stamp','users.id','email','photo_link','user_name')				    
				    ->get();

	$all_forum_post=DB::table('profile')
				    ->join('forum', 'profile.user_id', '=', 'forum.user_id')
				    ->select('name','forum.time_stamp','post', 'forum.id','photo_link')				    
				    ->get();

	$product_data= DB::table('profile')
				    ->join('product', 'profile.user_id', '=', 'product.user_id')
				    ->select('name','product.time_stamp','product.user_id','product.photo_link','title','product.id')				    
				    ->get();

	return View::make('admin')->with('user_data',$user_data)
							  ->with('all_forum_post',$all_forum_post)
							  ->with('product_data',$product_data);

});






Route::get('/', function()
{
	return View::make('hello');
});

Route::get('/profile', function()
{
	return View::make('profile');
});

Route::get('/forum', function()
{
	if(Session::get('login')=='yes'){
	return View::make('forum');
	}
	else{
		$log_message="to view the forum page you have to be logged in!";
	    return View::make('login')->with('log_message',$log_message);
	}
});

Route::get('/add_post', function()
{
	$pic_dir="";
	return View::make('product_post')->with('pic_dir',$pic_dir);
});


Route::get('/logout', function()
{
	Session::flush();
	return Redirect::to('/login');
});

Route::get('/public_post', function()
{
	$product_all=DB::table('profile')
				    ->join('product', 'profile.user_id', '=', 'product.user_id')
				    ->select('name','phone_number','email','area','product.photo_link','title','product.time_stamp','detail','offer','product.id', 'profile.user_id')				    
				    ->get();

	$user_id=Product::get(['user_id']);

	$posted_by=RegisterModel::where('user_id',$user_id)->get();

	return View::make('public_post')->with('posted_by',$posted_by)
									->with('product_all',$product_all);
});



//login and register

Route::get('/login', function()
{
	$log_message="";
	return View::make('login')->with('log_message',$log_message);
});

Route::get('/register', function()
{
	$pic_dir="";
	return View::make('register')->with('pic_dir',$pic_dir);
});



Route::get('edit_profile/{id}','RegisterController@edit_profile');


Route::get('login_check','LoginController@login_check');


Route::post('uploadImage','RegisterController@ImageUpload');


Route::post('uploadImage_edit/{id}','RegisterController@uploadImage_edit');


Route::post('register_new','RegisterController@register_new');


Route::post('log_request','loginController@login');


Route::post('profile_edited/{id}','RegisterController@profile_edited');


//product

Route::post('upload_post','ProductPostController@upload_post');

Route::post('productpost_new','ProductPostController@Product_Post');

Route::get('single_post/{id}','ProductPostController@single_post');





Route::get('public_to_single/{id}','ProductPostController@public_to_single');


Route::get('profile_for_public/{id}','ProductPostController@profile_for_public');


Route::post('single_post/ready_product_post','ProductPostController@ready_product_post');

Route::post('public_to_single/ready_product_post','ProductPostController@ready_product_post');

Route::post('single_post/ready_product_comment','ProductPostController@comment_area');

Route::post('public_to_single/ready_product_comment','ProductPostController@comment_area');

//Route::post('/ready_product_post','ProductPostController@ready_product_post');

Route::post('ready_product_comment','ProductPostController@comment_area');

//comment

Route::get('commentData','ProductPostController@comment_area');

Route::get('ajaira', function(){
	return View::make('ajaira')->with('name','Tuhin');
});

//forum
Route::post('forum_post','ForumPostController@forum_post');


Route::post('all_forum_post','ForumPostController@all_forum_post');


Route::post('post_coment','ForumPostController@post_coment');

Route::post('real_post_coment','ForumPostController@real_post_coment');


//admin


Route::post('delete_user','AdminController@delete_user');


Route::post('delete_forum_post','AdminController@delete_forum_post');

Route::post('delete_post','AdminController@delete_post');


Route::post('download','AdminController@download');




Route::post('/upload_file', function()
{
	$target_dir = "public/img/";
					$dir="img/";
					$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
					$uploadOk = 1;
					$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
					// Check if image file is a actual image or fake image


					if(isset($_POST["submit"])) {
						
							    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
							    if($check !== false) {
							        echo "File is an image - " . $check["mime"] . ".";
							        $uploadOk = 1;
							    } else {
							        echo "File is not an image.";
							        $uploadOk = 0;
							    }
							
					}
					// Check if file already exists
					if (file_exists($target_file)) {
					  //   alert("Sorry, file already exists.");
						echo '<script language="javascript">';
						echo 'alert("Sorry, file already exists.")';
						echo '</script>';
					    $uploadOk = 0;
					}
					// Check file size
					if ($_FILES["fileToUpload"]["size"] > 1500000000) {
					    //echo "Sorry, your file is too large.";
					    echo '<script language="javascript">';
						echo 'alert("Sorry, your file is too large.")';
						echo '</script>';
					    $uploadOk = 0;
					}
					// Allow certain file formats
					
					// Check if $uploadOk is set to 0 by an error
					if ($uploadOk == 0) {
					    echo "Sorry, your file was not uploaded.";
					// if everything is ok, try to upload file
					} else {
					    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
					        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.".$target_file."";
					    } else {
					        //echo "Sorry, there was an error uploading your file.";
					        echo '<script language="javascript">';
						echo 'alert("Sorry, there was an error uploading your file.")';
						echo '</script>';
					    }
					}

					$file_dir= $dir . basename($_FILES["fileToUpload"]["name"]);

					DB::table('file_upload')->insert(
				    array(
				    	  'user_id'=>Session::get('user_id'),
				          'file_link' =>$file_dir,
				          'file_name' =>basename($_FILES["fileToUpload"]["name"])
				          
				    	));

				return Redirect::to('/file_transfer');	
});