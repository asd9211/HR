<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/bulma/css/bulma.css" rel="stylesheet"></link>
<link href="/web.css" rel="stylesheet"></link>

<!-- jquery  -->
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<!--  common -->
<script src="/js/common.js"></script>

</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
			<nav class="navbar is-transparent">
				<div class="navbar-brand">
					<a class="navbar-item" href="https://versions.bulma.io/0.7.0">
						<img src="https://versions.bulma.io/0.7.0/images/bulma-logo.png"
						alt="Bulma: a modern CSS framework based on Flexbox" width="112"
						height="28">
					</a>
					<div class="navbar-burger burger"
						onclick="document.querySelector('.navbar-menu').classList.toggle('is-active');"
						data-target="navbarExampleTransparentExample">
						<span></span> <span></span> <span></span>
					</div>
				</div>

				<div id="navbarExampleTransparentExample" class="navbar-menu">
					<div class="navbar-start">
						<a class="navbar-item" href="https://versions.bulma.io/0.7.0/">
							Home </a>
						<div class="navbar-item has-dropdown is-hoverable">
							<a class="navbar-link" href="/documentation/overview/start/">인사관리
							</a>
							<div class="navbar-dropdown is-boxed">
								<li class="navbar-item" href="#">In Body</li>
								<li class="navbar-item" href="javascript:void(0)"
									onclick="goPage(this)" id="infood/foodInfo">In Food</li> <a
									class="navbar-item" href="#">In Day </a>
							</div>
						</div>

						<div class="navbar-item has-dropdown is-hoverable">
							<a class="navbar-link" href="/documentation/overview/start/">인사발령
							</a>
							<div class="navbar-dropdown is-boxed">
								<li class="navbar-item" href="#">In Body</li>
								<li class="navbar-item" href="javascript:void(0)"
									onclick="goPage(this)" id="infood/foodInfo">In Food</li> <a
									class="navbar-item" href="#">In Day </a>
							</div>
						</div>

						<div class="navbar-item has-dropdown is-hoverable">
							<a class="navbar-link" href="/documentation/overview/start/">근태관리
							</a>
							<div class="navbar-dropdown is-boxed">
								<li class="navbar-item" href="#">In Body</li>
								<li class="navbar-item" href="javascript:void(0)"
									onclick="goPage(this)" id="infood/foodInfo">In Food</li> <a
									class="navbar-item" href="#">In Day </a>
							</div>
						</div>

						<div class="navbar-item has-dropdown is-hoverable">
							<a class="navbar-link" href="/documentation/overview/start/">휴가관리
							</a>
							<div class="navbar-dropdown is-boxed">
								<li class="navbar-item" href="#">In Body</li>
								<li class="navbar-item" href="javascript:void(0)"
									onclick="goPage(this)" id="infood/foodInfo">In Food</li> <a
									class="navbar-item" href="#">In Day </a>
							</div>
						</div>

						<div class="navbar-item has-dropdown is-hoverable">
							<a class="navbar-link" href="/documentation/overview/start/">기준정보
							</a>
							<div class="navbar-dropdown is-boxed">
								<li class="navbar-item" href="#">In Body</li>
								<li class="navbar-item" href="javascript:void(0)"
									onclick="goPage(this)" id="infood/foodInfo">In Food</li> <a
									class="navbar-item" href="#">In Day </a>
							</div>
						</div>
					</div>

					<div class="navbar-end">
						<div class="navbar-item">
							<div class="field is-grouped">
								<p class="control">
									<a class="bd-tw-button button" href="javascript:void(0)"
										onclick="goPage(this)" id="user/join"> <span> 회원가입
									</span>
									</a>
								</p>
								<p class="control">
									<a class="button is-primary"
										href="https://github.com/jgthms/bulma/releases/download/0.6.2/bulma-0.6.2.zip">
										<span class="icon"> <i class="fas fa-download"></i>
									</span> <span>Download</span>
									</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
		<div id="jb-content">
			<jsp:include page="/WEB-INF/views/emp/EmpRegist.jsp"></jsp:include>
		</div>
		<div id="jb-footer">
			<p>Copyright</p> 
		</div>
	</div>
</body> 
<script>
	function test() {
		$('#content-page').attr('src', '/main');
	}
</script>
</html>
