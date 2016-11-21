<?php 
	/**
	* 
	*/
	class RegisterController extends BaseController
	{
				public function ImageUpload(){


					
    			
    		

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
					if ($_FILES["fileToUpload"]["size"] > 500000000) {
					    //echo "Sorry, your file is too large.";
					    echo '<script language="javascript">';
						echo 'alert("Sorry, your file is too large.")';
						echo '</script>';
					    $uploadOk = 0;
					}
					// Allow certain file formats
					if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
					&& $imageFileType != "gif" ) {
					    //echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
					    $uploadOk = 1;
					}
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

					$pic_dir= $dir . basename($_FILES["fileToUpload"]["name"]);
					
					return View::make('register')->with('pic_dir',$pic_dir);
		}


		        public function register_new(){
		        	$user_name=Input::get('user_name');
		        	$password=Input::get('password');

		        	$user= new user;
		        	$user->user_name=$user_name;
		        	$user->password=$password;

		        	$user->save();
					

		        	$pic_link=Input::get('pic_link');
		        	$name=Input::get('name');
		        	$email=Input::get('email');
		        	$cell=Input::get('cell');
		        	$area=Input::get('area');
		        	$birth_day=Input::get('birth_day');

		        	$dept=Input::get('dept');
		        	$sem=Input::get('sem');
		        	$cgpa=Input::get('cgpa');
		        	$intr=Input::get('intr');

		        	$profile= new RegisterModel;

		        	$profile->photo_link=$pic_link;
		        	$profile->name = $name;
		        	$profile->email =$email;
					$profile->phone_number= $cell;
					$profile->area=$area;

					$profile->dept = $dept;
		        	$profile->sem =$sem;
					$profile->cgpa= $cgpa;
					$profile->intr=$intr;

					$profile->birth_date= $birth_day;
					$profile->user_id=$user->id;

		        	$profile->save();

		        	$log_message="As a newly registered User you have to login first";

		        	return View::make('login')->with('log_message',$log_message);
		        	//return View::make('profile')->with('photo_link',$profile->photo_link)
		        								//->with('profile',$profile);




		        }

		        public function edit_profile($id){
		        	$user_data=User::where('id',$id)->get();
		        	$profile_data=RegisterModel::where('user_id',$id)->get();
		        	$pic_dir=$profile_data[0]->photo_link;

		        	return View::make('edit_profile')->with('user_data',$user_data)
		        									 ->with('profile_data',$profile_data)
		        									 ->with('id',$id)
		        									 ->with('pic_dir',$pic_dir);
		        }

		        public function uploadImage_edit($id){


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
					if ($_FILES["fileToUpload"]["size"] > 500000000) {
					    //echo "Sorry, your file is too large.";
					    echo '<script language="javascript">';
						echo 'alert("Sorry, your file is too large.")';
						echo '</script>';
					    $uploadOk = 0;
					}
					// Allow certain file formats
					if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
					&& $imageFileType != "gif" ) {
					    //echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
					    $uploadOk = 1;
					}
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

					$pic_dir= $dir . basename($_FILES["fileToUpload"]["name"]);

					$user_data=User::where('id',$id)->get();
		        	$profile_data=RegisterModel::where('user_id',$id)->get();
		        	

		        	return View::make('edit_profile')->with('user_data',$user_data)
		        									 ->with('profile_data',$profile_data)
		        									 ->with('id',$id)
		        									 ->with('pic_dir',$pic_dir);


		        }

		        public function profile_edited($id){
		        	

		        	$user_name=Input::get('user_name');
		        	$password=Input::get('password');

		        	
		        	$user = User::find($id);

		        	
		        	$user->password=$password;

		        	$user->save();
					

		        	$pic_link=Input::get('pic_link');
		        	$name=Input::get('name');
		        	$email=Input::get('email');
		        	$cell=Input::get('cell');
		        	$area=Input::get('area');
		        	$birth_day=Input::get('birth_day');

		        	$dept=Input::get('dept');
		        	$sem=Input::get('sem');
		        	$cgpa=Input::get('cgpa');
		        	$intr=Input::get('intr');



		        	$profile=RegisterModel::where('user_id',$id)->first();

		        	$profile->photo_link=$pic_link;
		        	$profile->name = $name;
		        	$profile->email =$email;
					$profile->phone_number= $cell;
					$profile->area=$area;
					$profile->birth_date= $birth_day;

					$profile->dept = $dept;
		        	$profile->sem =$sem;
					$profile->cgpa= $cgpa;
					$profile->intr=$intr;
					

		        	$profile->save();

		        	$log_message="your profile has been updated. To see the change you have to login again";

		        	return View::make('login')->with('log_message',$log_message);

		        	



		        }

	}