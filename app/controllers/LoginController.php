<?php 
	/**
	* 
	*/
	class LoginController extends BaseController
	{
		public function login(){
			$user = User::whereUserName(Input::get("username"))->wherePassword(Input::get("password"))->first();
			//return 'dhukse';
			//Session::flush();
			
			if($user){

				if($user->user_name=='admin' && $user->password=='admin1234'){

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
				}



				else{

						$profile = RegisterModel::whereUserId($user->id)->first();

						$data = [
							'login' => 'yes',
							'username' => $user->username,
							'user_id'=>$user->id,
							'name'=>$profile->name 
						];
						Session::put($data);
						

						$product_post=Product::whereUserId(Session::get('user_id'))->get();

						$name=Session::get('name');

						if($product_post){
							$id=Session::get('user_id');
							return View::make('profile')->withProfile($profile)
														->with('product_post',$product_post)
														->with('name',$name)
														->with('id',$id);
						}

						else{
						//$product_post="";
						$name=Session::get('name');
						//$product_post = ['welcome to justExchangeAnything.com'];
						$id=Session::get('user_id');
							return View::make('profile')->withProfile($profile)
							                            //->with('product_post',$product_post)
														->with('name',$name)
														->with('id',$id);
						
					    }
					}
			}
			else 
			{
				 
				return Redirect::to('/login?e=1');
			}

		}

			public function login_check(){

				if(Session::get('login')=='yes'){

					$profile = RegisterModel::whereUserId(Session::get('user_id'))->first();



							$product_post=Product::whereUserId(Session::get('user_id'))->get();

							$name=Session::get('name');

							if($product_post){
								$id=Session::get('user_id');
								return View::make('profile')->withProfile($profile)
															->with('product_post',$product_post)
															->with('name',$name)
															->with('id',$id);
							}

							else{
							
							$name="";
							$id=Session::get('user_id');
								return View::make('profile')->withProfile($profile)
															
															->with('name',$name)
															->with('id',$id);
							
						}


				}

				else{

					$log_message="";
				   return View::make('login')->with('log_message',$log_message);

			}

			

		}

	}