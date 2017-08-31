<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="navbar" class="navbar navbar-default">
	<script type="text/javascript">
		try{ace.settings.check('navbar' , 'fixed')}catch(e){}
	</script>

	<div class="navbar-container" id="navbar-container">
		<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
			<span class="sr-only">Toggle sidebar</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>

		<div class="navbar-header pull-left">
			<a href="/" class="navbar-brand"><i class="ace-icon fa fa-cloud-upload bigger-100"></i>
				<small>版本发布平台</small>
			</a>
		</div>

		<div class="navbar-buttons navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">
				<li class="light-blue">
					<a data-toggle="dropdown" href="#" class="dropdown-toggle">
						<img class="nav-user-photo" src="assets/avatars/avatar{{.loginUserSex}}.png" />
						<span class="user-info">
							<small>Welcome,</small>
							{{.loginUserName}}
						</span>
						<i class="ace-icon fa fa-caret-down"></i>
					</a>

					<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
						<li>
							<a href="{{urlfor "MainController.Profile"}}">
								<i class="ace-icon fa fa-user"></i>
								个人信息
							</a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="{{urlfor "MainController.Logout"}}">
								<i class="ace-icon fa fa-power-off"></i>
								退出登录
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div><!-- /.navbar-container -->
</div>