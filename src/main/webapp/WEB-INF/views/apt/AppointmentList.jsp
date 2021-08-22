<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="field empRgst" style="text-align: center;">
	<label class="label">인사발령등록</label> <br>
</div>
<div class="table" id="aptList"></div>
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
	window.onload = getApts();
	
	function getApts() {
		var success = function(res) {
			var d = document; 
			var HTML = "";
			var header = ["No", "사번", "이름", "발령구분", "발령일자", "변경내역"] 
			var body = [];			
			for ( var idx in res) {
				body[idx] = [idx, res[idx].empCode, res[idx].empName, res[idx].appointType, res[idx].appointDate, res[idx].history];
			}  
			new gridjs.Grid({
				  columns: header,
				  pagination: true, 
				  data: body 
				   
				}).render(document.getElementById("aptList")); 
		}
		var conf = new configuration("GET", null, "/apt/appointment", success,
				null);
		ajax(conf);
	}
	
</script>
