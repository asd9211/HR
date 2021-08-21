<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="field empRgst" style="text-align: center;">
	<label class="label">부서리스트</label> <br>
</div>
<div class="table" id="deptList"></div>


<!-- modal -->
<div class="modal">
	<div class="modal-background"></div>
	<div class="modal-card">
		<header class="modal-card-head">
			<p class="modal-card-title"></p>
		</header>
		<section class="modal-card-body">
			<!-- Content ... -->
		</section>
		<nav id="pagin" class="pagination is-centered" role="navigation"
			aria-label="pagination"></nav>
		<footer class="modal-card-foot">
			<button class="button mdl-close" onclick="modalClose()">취소</button>
		</footer>
	</div>
</div>
<script>
	var page = 1 ;
	window.onload = getDepts();
	/*
	document.querySelector("#deptListBody").onscroll = function() {
        var $window = $(this);
        var scrollTop = $("#deptListBody").scrollTop();
        var documentHeight = $("#deptListBody").height();
        
        console.log("documentHeight:" + documentHeight + " | scrollTop:" + scrollTop );
		if(scrollTop%(1199 * page) == 0){
			page ++;
			getDepts();		
		}
	}*/
	function getDepts() {
		var success = function(res) {
			var d = document; 
			var HTML = "";
			var header = ["No", "부서코드", "부서명", "생성일", "종료일", "상위부서명"] 
			var body = [];			
			for ( var idx in res) {
				body[idx] = [res[idx].rowNum, res[idx].deptCode, res[idx].deptName, res[idx].appointDate, res[idx].endDate, res[idx].parentDeptName];
			}  
			new gridjs.Grid({
				  columns: header,
				  pagination: true,
				  data: body 
				   
				}).render(document.getElementById("deptList")); 
		}
		var conf = new configuration("GET", null, "/dept/departments", success,
				null);
		ajax(conf);
	}
	
</script>
