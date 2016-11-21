<?php

class AdminController extends BaseController {

	

	    public function delete_user(){
	    	$delete=User::where('id',Input::get('id'))->delete();

	    	return 'ok';
	    }

	    public function delete_forum_post(){
	    	$delete=Forum::where('id',Input::get('id'))->delete();
	    	return 'ok';
	    }

	    public function delete_post(){
	    	$delete=Product::where('id',Input::get('id'))->delete();
	    	return 'ok';
	    }

	    public function download(){



	    	$file=Files::where('id',Input::get('id'))->get();
	    	//$abc=Input::get('id');

	    	//return $file;

	       //file_put_contents("$file->file_name", fopen("$file->file_link", 'r'));
	       //return $file->file_name;

	    	foreach ($file as $key) {
               $filename = $key->file_name;
		       return $filename;
	        }


	    }

}