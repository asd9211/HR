<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="field empRgst" style="text-align: center;">
	<label class="label">인사발령등록</label> <br>
</div>
<article class="message is-info">
	<div class="message-header" style="margin-bottom: 3%;">발령대상자</div>
	<div class="columns is-lefted">
		<div class="column margn-l5">
			<div class="field">
				<div class="control has-icons-left has-icons-right">
					<input id="empCode" class="input is-info max15 " type="hidden"
						placeholder="사원번호" maxlength="8" minlength="8" disabled>
				</div>
			</div>
			<div class="field">
				<label class="label">사원이름</label>
				<div class="control has-icons-left has-icons-right">
					<input id="empNameKor" class="input is-info max15 " type="text"
						placeholder="이름">
					<button class="button is-info" title="사원검색"
						onclick="modalSearch(this)">검색</button>
				</div>
			</div>
			<div class="field">
				<div class="control has-icons-left has-icons-right">
					<input id="appointType" class="input is-info max15 " type="hidden"
						placeholder="발령코드" disabled>
				</div>
			</div>
			<div class="field">
				<label class="label">발령구분</label>
				<div class="control has-icons-left has-icons-right">
					<input id="appointName" class="input is-info max15 " type="text"
						placeholder="발령명">
					<button class="button is-info" title="발령구분검색"
						onclick="modalSearch(this)">검색</button>
				</div>
			</div>
		</div>
		<div class="column">
			<div class="field">
				<label class="label">변경전 부서</label>
				<div class="control has-icons-left has-icons-right">
					<input id="beforeDept" class="input is-info max15 " type="text"
						placeholder="사원번호" maxlength="8" minlength="8" disabled>
					에서
				</div>
			</div>
			<div class="field">
				<label class="label">변경전 직위</label>
				<div class="control has-icons-left has-icons-right">
					<input id="beforePosition" class="input is-info max15 " type="text"
						placeholder="사원번호" maxlength="8" minlength="8" disabled>
					에서
				</div>
			</div>
			<div class="field">
				<label class="label">변경전 직책</label>
				<div class="control has-icons-left has-icons-right">
					<input id="beforeDuty" class="input is-info max15 " type="text"
						placeholder="사원번호" maxlength="8" minlength="8" disabled>
					에서
				</div>
			</div>
		</div>
		<div class="column">
			<div class="field">
				<label class="label">변경후 부서</label>
				<div class="control has-icons-left has-icons-right">
					<input id="deptName" class="input is-info max15 " type="text"
						placeholder="변경 후 부서" maxlength="8" minlength="8"> <input
						id="afterDept" class="input is-info max15 " type="hidden"
						placeholder="변경 후 부서" maxlength="8" minlength="8">
					<button class="button is-info" title="부서검색"
						onclick="modalSearch(this)">검색</button>
					로
				</div>
			</div>
			<div class="field">
				<label class="label">변경후 직위</label>
				<div class="control has-icons-left has-icons-right">
					<input id="afterPosition" class="input is-info max15 "
						type="hidden" placeholder="사원번호" maxlength="8"> 
					<input id="positionName" class="input is-info max15 " type="text">
					<button class="button is-info" title="직위검색"
						onclick="modalSearch(this)">검색</button>
					로
				</div>
			</div>
			<div class="field">
				<label class="label">변경후 직책</label>
				<div class="control has-icons-left has-icons-right">
					<input id="afterDuty" class="input is-info max15 " type="hidden"
						maxlength="8"> <input id="dutyName"
						class="input is-info max15 " type="text" placeholder="사원번호">
					<button class="button is-info" title="직책검색"
						onclick="modalSearch(this)">검색</button>
					로
				</div>
			</div>
			<div class="field is-grouped mrgn-top5">
				<div class="control">
					<button class="button is-link" onclick="send()">등록</button>
				</div>
				<div class="control">
					<button class="button is-link is-light">취소</button>
				</div>
			</div>
		</div>
	</div>
</article>
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
	var copyList = [];
	
	function searchContent(target){
		var content = document.querySelector('#searchContent').value;
		var url;
		
		if(target == 'emp') {
			url = "/emp/employee?emp-name=";
		}else if (target == 'dept'){
			url = "/dept/department?dept-name=";			
		}else if (target == 'duty'){
			url = "/base/code-info?group-type=duty&name=";
		}else if (target == 'position'){
			url = "/base/code-info?group-type=position&name=";
		}else if (target == 'appoint'){
			url = "/base/code-info?group-type=appoint&name=";
		}
		var suc = function(rs){
			copyList = rs;
			pagination();
		}
		var conf = new configuration("GET", null, url + content, suc, null);
		ajax(conf);

	}
	

	function modalSearch(ele) {
		var title = ele.title;
		var html = document.querySelector("html");
		var modal = document.querySelector(".modal");
		var titleTarget = document.querySelector(".modal-card-title");

		var deptSearchUrl = "/dept/departments";
		var empSearchUrl = "/emp/employees";
		var dutySearchUrl = "/base/code-info?group-type=duty&name=";
		var positionSearchUrl = "/base/code-info?group-type=position&name=";
		var appointSearchUrl = "/base/code-info?group-type=appoint&name=";

		titleTarget.innerText = title;

		html.classList.add("is-clipped");
		modal.classList.add("is-active");

		if (title == '부서검색') {
			var suc = function(rs) {
				modal.setAttribute("target", "dept");
				copyList = rs;
				pagination();
			};
			var conf = new configuration("GET", null, deptSearchUrl, suc, null);

		} else if (title == '사원검색') {
			var suc = function(rs) {
				modal.setAttribute("target", "emp");
				copyList = rs;
				pagination();
			}
			var conf = new configuration("GET", null, empSearchUrl, suc, null);

		} else if (title == '직책검색') {
			var suc = function(rs) {
				modal.setAttribute("target", "duty");
				copyList = rs;
				pagination();
			}
			var conf = new configuration("GET", null, dutySearchUrl, suc, null);

		} else if (title == '직위검색') {
			var suc = function(rs) {
				modal.setAttribute("target", "position");
				copyList = rs;
				pagination();
			}
			var conf = new configuration("GET", null, positionSearchUrl, suc,
					null);

		} else if (title == '발령구분검색') {
			var suc = function(rs) {
				modal.setAttribute("target", "apt");
				copyList = rs;
				pagination();
			}
			var conf = new configuration("GET", null, appointSearchUrl, suc,
					null);
		}

		ajax(conf);
	}

	function modalClose() {
		$("html").removeClass("is-clipped");
		$(".modal").removeClass("is-active");
	}

	function pagination(nowNum) {
		var nNum = !nowNum || nowNum <= 1 ? 1 : nowNum;
		var lNum = nNum * 10;
		var sNum = lNum - 9;
		var len = copyList.length;
		var realEnd = len / 10;
		if (lNum >= len)
			lNum = len;
		var lbtn = Math.ceil(len / 10);
		var sbtn = Math.floor((nNum - 1) / 10) * 10 + 1;
		drawList(sNum, lNum, nNum, sbtn, lbtn);
	}

	/*
		Modal List출력 공통 function
	 */
	 
	function drawList(sNum, lNum, nNum, sbtn, lbtn) {
		var target = document.querySelector(".modal").getAttribute("target");
		var d = document;

		if (target == 'dept') {

			var columns = new lowColumn("부서코드", "부서명", "상위부서", "부서생성일");
			var colList = new lowColumn("deptCode", "deptName", "parentDept", "appointDate");

		} else if (target == 'emp') {

			var columns = new lowColumn("사번", "사원명", "부서", "직책", "직무");
			var colList = new lowColumn("empCode", "empNameKor", "deptName", "positionName", "dutyName");

		} else if (target == 'duty') {

			var columns = new lowColumn("그룹타입", "직책코드", "직책명");
			var colList = new lowColumn("groupType", "code", "codeName");

		} else if (target == 'position') {

			var columns = new lowColumn("그룹타입", "직위코드", "직위명");
			var colList = new lowColumn("groupType", "code", "codeName");

		} else if (target = 'apt') {

			var columns = new lowColumn("그룹타입", "발령코드", "발령명");
			var colList = new lowColumn("groupType", "code", "codeName");
		}

		var pHTML = "";
		var HTML = "<input type='text' class='input max15' id= 'searchContent'><button class='button' onclick = 'searchContent(\"" + target + "\")'>검색</button>";
		HTML = HTML	+ "<table class='table is-hoverable is-fullwidth' id= 'modalDataTable'>";
		HTML = HTML + "<tr>";
		HTML = HTML + "<th>" + columns.clm1 + "</th>";
		HTML = HTML + "<th>" + columns.clm2 + "</th>";
		HTML = HTML + "<th>" + columns.clm3 + "</th>";
		if (colList.clm4) {
			HTML = HTML + "<th>" + columns.clm4 + "</th>";
		}
		if (colList.clm5) {
			HTML = HTML + "<th>" + columns.clm5 + "</th>";
		}
		HTML = HTML + "</tr>";

		for (var i = sNum - 1; i < lNum; i++) {  

			HTML = HTML + "<tr onclick = \"apply('" + target + "', this)\">";
			HTML = HTML + "<td>" + copyList[i][colList.clm1] + "</td>";
			HTML = HTML + "<td>" + copyList[i][colList.clm2] + "</td>";
			HTML = HTML + "<td>" + copyList[i][colList.clm3] + "</td>";
			if (colList.clm4) {
				HTML = HTML + "<td>" + copyList[i][colList.clm4] + "</td>";
			}
			if (colList.clm5) {
				HTML = HTML + "<td>" + copyList[i][colList.clm5] + "</td>";
			}
			HTML = HTML + "</tr>";
		}
		HTML = HTML + "</table>";

		if (sbtn > 10) {
			pHTML += "<a onclick = 'pagination(" + (sbtn - 1)
					+ ")' class='pagination-previous'>prev</a>";
		}
		
		pHTML += "<ul class='pagination-list'>";
		for (var i = sbtn; i <= lbtn; i++) {
			if (i % 10 == 0) {
				pHTML += "<li><a class= 'pagination-link' onclick = 'pagination("
						+ i + ")'>" + i + "</a></li>";
				pHTML += "<a onclick = 'pagination(" + (i + 1)
						+ ")' class='pagination-next'>next</a>";
				break;
			}
			pHTML += "<li><a class= 'pagination-link' onclick = 'pagination("
					+ i + ")'>" + i + "</a></li>";
		}

		var pagin = document.querySelector("#pagin");
		var body = document.querySelector(".modal-card-body");

		body.innerHTML = HTML;
		pagin.innerHTML = pHTML;
	}

	function apply(target, ele) {
		var d = document;
		
		if (target == 'dept') {
			d.querySelector('#afterDept').value = ele.children[0].innerText;
			d.querySelector("#deptName").value = ele.children[1].innerText;

		} else if (target == 'duty') {
			d.querySelector('#afterDuty').value = ele.children[1].innerText;
			d.querySelector('#dutyName').value = ele.children[2].innerText;

		} else if (target == 'emp') {
			d.querySelector("#empCode").value = ele.children[0].innerText;
			d.querySelector("#empNameKor").value = ele.children[1].innerText;
			d.querySelector("#beforeDept").value = ele.children[2].innerText;
			d.querySelector("#beforeDuty").value = ele.children[3].innerText;
			d.querySelector("#beforePosition").value = ele.children[4].innerText;

		} else if (target == 'apt') {
			d.querySelector('#appointType').value = ele.children[1].innerText;
			d.querySelector('#appointName').value = ele.children[2].innerText;

		} else if (target == 'position') {
			
			d.querySelector('#afterPosition').value = ele.children[1].innerText;
			d.querySelector('#positionName').value = ele.children[2].innerText;

		}

		modalClose();
	}
	
	function send(){
		var d = document;
		var data = {};
		var checkList = 
			['empCode'
			/*,'appointDate'*/
			,'appointType'
			,'beforeDept'
			,'beforeDuty'
			,'beforePosition'
			,'afterDept'
			,'afterDuty'
			,'afterPosition'
			//,'bigo'
			];
	
		for(var idx in checkList){
			var target = d.querySelector("#"+checkList[idx]);
			data[checkList[idx]] = target.value.trim();
		
		}
		var success = function(res){
			console.log(res);
		}
		 
		var conf = new configuration('POST', JSON.stringify(data), "/apt/appointment", success, null,'json');
		ajax(conf);
	}
</script>
