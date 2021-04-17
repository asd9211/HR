<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="field empRgst" style="text-align: center;">
	<label class="label">부서리스트</label> <br>
</div>
<div class="columns is-lefted">
	<table class="table">
		<thead>
			<tr>
				<th>No</th>
				<th>부서코드</th>
				<th>부서명</th>
				<th>부서생성일</th>
				<th>부서만료일</th>
				<th>상위부서</th>
			</tr>
		</thead>

		<tbody id="deptListBody" class="deptList">

		</tbody>
	</table>
</div>
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
	document.querySelector("#deptListBody").onscroll = function() {
        var $window = $(this);
        var scrollTop = $("#deptListBody").scrollTop();
        var documentHeight = $("#deptListBody").height();
        
        console.log("documentHeight:" + documentHeight + " | scrollTop:" + scrollTop );
		if(scrollTop%(1199 * page) == 0){
			page ++;
			getDepts();			
		}
	}
	function getDepts() {
		var success = function(res) {
			console.log(res);
			var d = document;
			var HTML = "";
			for ( var idx in res) {
				HTML = HTML + "<tr>";
				HTML = HTML + "<td>" + res[idx].rowNum+ "</td>";
				HTML = HTML + "<td>" + res[idx].deptCode + "</td>";
				HTML = HTML + "<td>" + res[idx].deptName + "</td>";
				HTML = HTML + "<td>" + res[idx].appointDate + "</td>";
				HTML = HTML + "<td>" + res[idx].endDate + "</td>";
				HTML = HTML + "<td>" + res[idx].parentDeptName + "</td>";
				HTML = HTML + "</tr>";
			}
			d.querySelector("#deptListBody").innerHTML += HTML;
		}
		var conf = new configuration("GET", null, "/dept/departmentsByPage?page="+page, success,
				null);
		ajax(conf);
	}
</script>
