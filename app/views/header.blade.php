    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>

                            <li>
                                <a href="{{URL::to('login_check')}}"><i class="fa fa-user"></i> My Account 
                                    @if(Session::get('login')=='yes')
                                        ({{Session::get('name')}})
                                    @endif    
                                </a>
                            </li>
                                @if(Session::get('login')=='yes')
                            <li><a href="{{URL::to('logout')}}"><i class="fa fa-user"></i> Logout</a></li>
                                @else
                            <li><a href="{{URL::to('login')}}"><i class="fa fa-user"></i> Login</a></li>
                                @endif


                        </ul>
                    </div>
                </div>
                
                
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    
                    <img src="img/logo.png" alt="user image"/>
                </div>               
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area" style="">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse" >
                    <ul class="nav navbar-nav" style="">
                        <li><a href="{{URL::to('/')}}">Home</a></li>
                        <li><a href="{{URL::to('login_check')}}">Students Profile</a></li>
                        <li><a href="{{URL::to('forum')}}">Students Forum</a></li>
                        <li><a href="{{URL::to('file_transfer')}}">Academic Documents Sharing</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div>