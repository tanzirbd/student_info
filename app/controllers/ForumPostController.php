<?php

class ForumPostController extends BaseController {

	public function forum_post(){

		//$result = json_decode(json_encode($_POST['forum_post'], true);

        // $a=Input::get('forum_post');

        // echo $a;

		$forum= new Forum;

		$forum->user_id=Session::get('user_id');
		$forum->post=Input::get('forum_post');

		$forum->save();

		$forum_post=DB::table('profile')
				    ->join('forum', 'profile.user_id', '=', 'forum.user_id')
				    ->select('name','forum.time_stamp','post')				    
				    ->where('forum.id', '=', $forum->id)
				    ->get();

		return $forum_post;

	}

	public function all_forum_post(){
		$all_forum_post=DB::table('profile')
				    ->join('forum', 'profile.user_id', '=', 'forum.user_id')
				    ->select('name','forum.time_stamp','post', 'forum.id')				    
				    ->get();

		return $all_forum_post;
	}

	public function post_coment(){

		$id = Input::get('id');

		$forum_comment=DB::table('profile')
				    ->join('forum_comment', 'profile.user_id', '=', 'forum_comment.user_id')
				    ->select('name','forum_comment.time_stamp','comment')				    
				    ->where('forum_comment.forum_post_id', '=', $id)
				    ->get();

	    return $forum_comment;
	}

	public function real_post_coment(){
		$forum= new ForumComment;

		$forum->user_id=Session::get('user_id');
		$forum->comment=Input::get('comment');
		$forum->forum_post_id=Input::get('id');

		$forum->save();

		$forum_submit=DB::table('profile')
				    ->join('forum_comment', 'profile.user_id', '=', 'forum_comment.user_id')
				    ->select('name','forum_comment.time_stamp','comment')				    
				    ->where('forum_comment.id', '=', $forum->id)
				    ->get();



		return $forum_submit;
	}
	
}