<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/bulma/css/bulma.css" rel="stylesheet"></link>
<link href="/resources/web.css" rel="stylesheet"></link>

<!--  common -->
<script src="/resources/js/common.js"></script>

<!-- jquery & dynatree -->
<script src='/resources/js/jquery/jquery.js' type='text/javascript'></script>
<script src='/resources/js/jquery/jquery-ui.custom.js'
	type='text/javascript'></script>
<script src='/resources/js/jquery/jquery.cookie.js'
	type='text/javascript'></script>
<link rel='stylesheet' type='text/css'
	href='/resources/dynatree/ui.dynatree.css'>
<script src='/resources/js/jquery/jquery.dynatree.js'
	type='text/javascript'></script>

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
						<div class="navbar-item has-dropdown is-hoverable">
							<a class="navbar-link" href="/documentation/overview/start/">사원관리
							</a>
							<div class="navbar-dropdown is-boxed">
								<li class="navbar-item" href="javascript:void(0)"
									id="emp/empRegistView" onclick="goPage(this)">사원등록</li>
								<li class="navbar-item" href="javascript:void(0)"
									onclick="goPage(this)" id="emp/employeeView">사원조회</li>
								<li class="navbar-item" id="emp/empOrganView"
									href="javascript:void(0)" onclick="goPage(this)">조직도</li>
							</div>
						</div>
						<div class="navbar-item has-dropdown is-hoverable">
							<a class="navbar-link" href="/documentation/overview/start/">부서관리
							</a>
							<div class="navbar-dropdown is-boxed">
								<li class="navbar-item" href="#" id="dept/deptRegist"
									onclick="goPage(this)">부서등록</li>
								<li class="navbar-item" href="#" 
									onclick="goPage(this)" id="dept/deptModify">부서변경</li>
							</div>
						</div>
						<div class="navbar-item has-dropdown is-hoverable">
							<a class="navbar-link" href="/documentation/overview/start/">인사발령
							</a>
							<div class="navbar-dropdown is-boxed">
								<li class="navbar-item" href="#" onclick="goPage(this)"
									id="apt/aptRegistView">인사발령등록</li>
								<li class="navbar-item" href="javascript:void(0)"
									onclick="goPage(this)" id="infood/foodInfo">인사발령수정</li> 
									<a class="navbar-item" id = "apt/aptListView" href="#" onclick="goPage(this)">발령이력조회</a>
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
										onclick="goPage(this)" id="goLogin"> <span> 로그인 </span>
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
	
</script>
</html>
