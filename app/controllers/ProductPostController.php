<?php 
	/**
	* 
	*/
	class ProductPostController extends BaseController
	{


		public function upload_post(){


					
    			
    		

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
					
					return View::make('product_post')->with('pic_dir',$pic_dir);
		}





		public function Product_Post(){
			$product_post=new Product;

			$product_post->photo_link=Input::get('pic_link');
			$product_post->title=Input::get('title');
			$product_post->detail=Input::get('detail');
			$product_post->offer=Input::get('offer');
			$product_post->user_id=Session::get('user_id');

			$product_post->save();

			$name=Session::get('name');

			$id=$product_post->id;

			$posted_by=DB::table('profile')
				    ->join('product', 'profile.user_id', '=', 'product.user_id')
				    ->select('name','phone_number','email','area','product.photo_link','title','product.time_stamp','detail','offer', 'profile.user_id')				    
				    ->where('product.id', '=', $id)
				    ->get();

			$product=Product::where('id',$id)->get();

			$product_all=DB::table('profile')
				    ->join('comment', 'profile.user_id', '=', 'comment.user_id')
				    ->select('name','comment.time_stamp','comment', 'profile.user_id')
				    ->where('comment.product_id','=',$id)				    
				    ->get();


			return View::make('single_post')->with('product',$product)
											->with('posted_by',$posted_by)
											->with('product_all',$product_all)
											->with('id',$id);
			

		}

		

		public function single_post($id){

			$product=Product::where('id',$id)->get();


			$posted_by=DB::table('profile')
				    ->join('product', 'profile.user_id', '=', 'product.user_id')
				    ->select('name','phone_number','email','area','product.photo_link','title','product.time_stamp','detail','offer', 'profile.user_id')				    
				    ->where('product.id', '=', $id)
				    ->get();

		    $product_all=DB::table('profile')
				    ->join('comment', 'profile.user_id', '=', 'comment.user_id')
				    ->select('name','comment.time_stamp','comment', 'profile.user_id')
				    ->where('comment.product_id','=',$id)				    
				    ->get();

			return View::make('single_post')->with('product',$product)
											->with('posted_by',$posted_by)
											->with('product_all',$product_all)
											->with('id',$id);

		}

		public function public_to_single($id){

			$product=Product::where('id',$id)->get();


			$posted_by=DB::table('profile')
				    ->join('product', 'profile.user_id', '=', 'product.user_id')
				    ->select('name','phone_number','email','area','product.photo_link','title','product.time_stamp','detail','offer','profile.user_id')				    
				    ->where('product.id', '=', $id)
				    ->get();

		    $product_all=DB::table('profile')
				    ->join('comment', 'profile.user_id', '=', 'comment.user_id')
				    ->select('name','comment.time_stamp','comment', 'profile.user_id')
				    ->where('comment.product_id','=',$id)				    
				    ->get();

            

			return View::make('single_post')->with('product',$product)
											->with('posted_by',$posted_by)
											->with('product_all',$product_all)
											->with('id',$id);

		}

		public function profile_for_public($id){
			if(Session::get('user_id')==$id){
				return Redirect::to('/login_check');
			}
			else{
					$profile = RegisterModel::whereUserId($id)->first();

					$product_post=Product::whereUserId($id)->get();

					$name= RegisterModel::whereUserId($id)->get(['name']);


							if($product_post){
								
								return View::make('profile_for_public')->withProfile($profile)
															->with('product_post',$product_post)
															->with('name',$name)
															->with('id',$id);
							}

							else{
							
							
							
								return View::make('profile_for_public')->withProfile($profile)
															
															->with('name',$name)
															->with('id',$id);
							
						}

			}
		}


		public function ready_product_post(){

			$product_all=DB::table('profile')
				    ->join('comment', 'profile.user_id', '=', 'comment.user_id')
				    ->select('name','comment.time_stamp','comment', 'profile.user_id')
				    ->where('comment.product_id','=',Input::get('product_id'))				    
				    ->get();

            return $product_all;

				    // $a=Input::get('product_id');

				    // return $a;
		}

		public function comment_area(){



			 
    
				    $id = Session::get('user_id');				   
				    $comment = Input::get('comment');
				    $postId = Input::get('product_id');

				    $comment_new = new Comment;

				     $comment_new->comment=$comment;
				     $comment_new->user_id=$id;
				     $comment_new->product_id=$postId;

				     $comment_new->save();


        //         $product_all=DB::table('profile')
				    // ->join('comment', 'profile.user_id', '=', 'comment.user_id')
				    // ->select('name','comment.time_stamp','comment', 'profile.user_id')
				    // ->where('comment.product_id','=',$comment_new->id)				    
				    // ->get();

                return $postId;
				    

				    //return $comment;

				  

		}

	}