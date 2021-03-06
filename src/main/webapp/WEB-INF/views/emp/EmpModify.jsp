<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%
	HttpServletRequest req = request;
	String empCode = req.getParameter("empCode");
	%>
	
<div class="field empRgst" style="text-align: center;">
	<label class="label">사원수정</label> <br>
</div>
<div class="columns is-lefted">
	<div class="column margn-l5">
		<div class="field">
			<label class="label">Profile</label>
			<div class="control has-icons-left has-icons-right"></div>
		</div>
		<div class="pic-rayout" onclick="fileInput()">
			<p>사진</p>
		</div>
		<form id="uploadForm" enctype="multipart/form-data">
			<input type="file" id="real-input" class="image_inputType_file"
				accept="img/*" required hidden
				onchange="setThumbnail(event);" />
		</form>
	</div>
	<div class="column">

		<div class="field">
			<label class="label">사번</label>
			<div class="control has-icons-left has-icons-right">
				<input id="empCode" class="input is-success max15 max15" type="text"
					placeholder="사번" maxlength="8" minlength="8" disabled>
				<button class="button"  class="dobule-false" id="doubleCheck"
					onclick="doubleCheck()">중복확인</button>
			</div>
		</div>

		<div class="field">
			<label class="label">이름(한글)</label>
			<div class="control has-icons-left has-icons-right">
				<input id="empNameKor" class="input is-success max15 max15" type="text"
					placeholder="이름" >
			</div>
		</div>
		<div class="field">
			<label class="label">이름(영어)</label>
			<div class="control has-icons-left has-icons-right">
				<input id="empNameEng" class="input is-success max15 " type="text"
					placeholder="이름">
			</div>
		</div>

		<div class="field">
			<label class="label">이름(한자)</label>
			<div class="control has-icons-left has-icons-right">
				<input id="empNameChi" class="input is-success max15 max15" type="text"
					placeholder="이름">
			</div>
		</div>

		<div class="field">
			<label class="label">휴대폰번호</label>
			<div class="control has-icons-left has-icons-right">
				<input id="phoneNumber" class="input is-success max15 max15" type="text"
					placeholder="phone" maxlength="11">
			</div>
		</div>

		<div class="field">
			<label class="label">부서</label>
			<div class="control has-icons-left has-icons-right">
				<input id="deptName" class="input is-success max15 max15"
					type="text" placeholder="부서" disabled>
				<input id="deptCode" class="input is-success max15 max15"
					type="hidden" placeholder="부서" disabled>
				<button class="button modal-button" id="deptSearch" title="부서검색"
					onclick="modalSearch(this)">검색</button>
			</div>
		</div>

		<div class="field">
			<label class="label">이메일</label>
			<div class="control has-icons-left has-icons-right">
				<input id="email" class="input is-success max15" type="email"
					placeholder="e-mail">
			</div>
		</div>
	</div>
	<div class="column">
		<div class="field">
			<label class="label">직위</label>
			<div class="control has-icons-left has-icons-right">
				<input id="position" class="input is-success max15" type="hidden"
					placeholder="직위" disabled>
				<input id="positionName" class="input is-success max15" type="text"
					placeholder="직위" disabled>
				<button class="button modal-button" id="pstionSearch" title="직위검색"
					onclick="modalSearch(this)">검색</button>
			</div>

		</div>

		<div class="field">
			<label class="label">직책</label>
			<div class="control has-icons-left has-icons-right">
				<input id="duty" class="input is-success max15" type="hidden"
					placeholder="직책" disabled>
					<input id="dutyName" class="input is-success max15" type="text"
					placeholder="직책" disabled>
				<button class="button modal-button" id="dutySearch" title="직책검색"
					onclick="modalSearch(this)">검색</button>
			</div>
		</div>
		<div class="field">
			<label class="label">재직상태</label>
			<div class="control">
				<div class="select is-primary">
					<select class="min15" id= "empStatus">
						<option value = "NORM">재직</option>
						<option value = "REST">휴직</option>
						<option value = "RETR">퇴사</option>
					</select>
				</div>
			</div>
		</div>

		<div class="field">
			<label class="label">입사일</label>
			<div class="control has-icons-left has-icons-right">
				<input id="startDate" class="input is-success max15" type="date"
					placeholder="입사일">
			</div>
		</div>

		<div class="field">
			<label class="label">급여구분</label>
			<div class="control">
				<div class="select is-primary min15">
					<select class="min15" id="payGubun">
						<option value="001">연봉제</option>
						<option value="002">월급제</option>
						<option value="003">시급제</option>
					</select>
				</div>
			</div>
		</div>

		<div class="field">
			<label class="label">사원구분</label>
			<div class="control">
				<div class="select is-primary min15">
					<select class="min15" id = "empType">
						<option value="001">사무직</option>
						<option value="002">생산직</option>
					</select>
				</div>
			</div>
		</div>
		<div class="field is-grouped mrgn-top5">
			<div class="control">
				<button class="button is-link" onclick="send()">수정</button>
			</div>
			<div class="control">
				<button class="button is-link is-light">취소</button>
			</div>
		</div>
	</div>
</div>


<!-- familly -->
<table class="table add-on">
	<tr>
		<td id="family" onclick="showInfo(this)">+ 가족사항</td>
		<td id="school" onclick="showInfo(this)">+ 학력</td>
		<td id="license" onclick="showInfo(this)">+ 자격증</td>
		<td id="career" onclick="showInfo(this)">+ 경력사항</td>
	</tr>
</table>

<div class="columns is-lefted family">
	<table class="table is-hoverable is-fullwidth">
		<thead>
			<tr>
				<th></th>
				<th>순번</th>
				<th>이름</th>
				<th>나이</th>
				<th>관계</th>
			</tr>
		</thead>
		<tbody class="f-body">
			<tr>
				<td><button id="f-low-add" name="f-low-1" class="button" onclick = "addLow(this)">추가</button></td>
				<td  id= "f-idx1">1</td>
				<td><input type="text" class="input" id="f-name1"></td>
				<td><input type="text" class="input" id="f-birth1"></td>
				<td><input type="text" class="input" id="f-rel1"></td>
			</tr>
		</tbody>
	</table>
</div>

<!-- school -->
<div class="columns is-lefted school">
	<table class="table is-hoverable is-fullwidth">
		<thead>
			<tr>
				<th></th>
				<th>순번</th>
				<th>학교</th>
				<th>학과</th>
				<th>재학기간</th>
			</tr>
		</thead>
		<tbody class="s-body">
			<tr>			
				<td><button id="s-low-add" name="s-low-1" class="button" onclick = "addLow(this)">추가</button></td>
				<td id= "s-idx1">1</td>
				<td><input type="text" class="input" id="s-name1"></td>
				<td><input type="text" class="input" id="s-major1"></td>
				<td><input type="text" class="input" id="s-period1"></td>
			</tr>
		</tbody>
	</table>
</div>
<!-- license -->
<div class="columns is-lefted license">
	<table class="table is-hoverable is-fullwidth">
		<thead>
			<tr>
				<th></th>
				<th>순번</th>
				<th>자격증명</th>
				<th>취득일</th>
				<th>발급기관</th>
			</tr>
		</thead>
		<tbody class="l-body">
			<tr>
				<td><button id="l-low-add" name="l-low-1" class="button" onclick = "addLow(this)">추가</button></td>
				<td  id="l-idx1" >1</td>
				<td><input type="text" class="input" id="l-name1"></td>
				<td><input type="text" class="input" id="l-issueDate1"></td>
				<td><input type="text" class="input" id="l-agency1"></td>
			</tr>
		</tbody>
	</table>
</div>


<!-- career -->
<div class="columns is-lefted career">
	<table class="table is-hoverable is-fullwidth">
		<thead>
			<tr>
				<th></th>
				<th>순번</th>
				<th>회사명</th>
				<th>업무</th>
				<th>재직기간</th>
			</tr>
		</thead>
		<tbody class="c-body">
			<tr>
				<td><button id="c-low-add" name="c-low-1" class="button" onclick = "addLow(this)">추가</button></td>
				<td id="c-idx1">1</td>
				<td><input type="text" class="input" id="c-name1"></td>
				<td><input type="text" class="input" id="c-work1"></td>
				<td><input type="text" class="input" id="c-period1"></td>
			</tr>
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
		<nav id="pagin" class="pagination is-centered" role="navigation" aria-label="pagination">
		
		</nav>
		<footer class="modal-card-foot">
			<button class="button mdl-close" onclick="modalClose()">취소</button>
		</footer>
	</div>
</div>
<script>
	
	window.onload = init();
	
	var copyList = [] ;
	
	function init(){
		addonInfoHide();
		getAllInfo();
	}
	
	function addonInfoHide(){
		$(".family").hide();
		$(".school").hide();
		$(".license").hide();
		$(".career").hide();
	}
	
	function getAllInfo(){
		var getEmpInfo = function(empInfo){
			var checkList = 
				['empCode'
				,'empNameKor'
				,'empNameEng'
				,'empNameChi'
				,'deptCode'
				,'deptName'
				,'phoneNumber'
				,'position'
				,'positionName'
				,'duty'
				,'dutyName'
				,'startDate'
				,'email'
				, 'empStatus'
				, 'payGubun'
				, 'empType'];
			var d = document;
			
			for(idx in checkList){
				d.querySelector('#'+checkList[idx]).value = empInfo[checkList[idx]];		
			}
			if(empInfo.changedFileName){
				getProfile(empInfo.changedFileName);
			}
		}
		
		var getProfile = function(changedFileName){
			var layout = document.querySelector('.pic-rayout');
			var img = document.createElement("img");
			var cutIdx = changedFileName.lastIndexOf("\\") + 1 ;
			var fileName = changedFileName.substring(cutIdx, changedFileName.length);
			var filePath = "\\resources\\img\\";
			var file = filePath + fileName;
			img.setAttribute("src", file);
			layout.innerHTML = '';
			layout.appendChild(img);
		}
		
		var getFamInfo = function(famInfo){
			var d = document;
			var colName = new lowColumn("no", "name", "birth", "relation");
			var targetTable = new lowColumn("f-idx", "f-name", "f-birth", "f-rel");
			var len = famInfo.length;
			for(var i = 1; i <= len; i++){
				d.querySelector("#" + targetTable.clm2 + i).value = famInfo[i-1][colName.clm2];
				d.querySelector("#" + targetTable.clm3 + i).value = famInfo[i-1][colName.clm3];
				d.querySelector("#" + targetTable.clm4 + i).value = famInfo[i-1][colName.clm4];
				if(i != len)
				d.querySelector("#f-low-add").click();
			}
		}
		
		var getSchInfo = function(schInfo){
			var d = document;
			var colName = new lowColumn("no", "name", "major", "period");
			var targetTable = new lowColumn("s-idx", "s-name", "s-major", "s-period");
			var len = schInfo.length;
			for(var i = 1; i <= len; i++){
				d.querySelector("#" + targetTable.clm2 + i).value = schInfo[i-1][colName.clm2];
				d.querySelector("#" + targetTable.clm3 + i).value = schInfo[i-1][colName.clm3];
				d.querySelector("#" + targetTable.clm4 + i).value = schInfo[i-1][colName.clm4];
				if(i != len)
				d.querySelector("#s-low-add").click();
			}
		}
		
		var getLicInfo = function(licInfo){
			var d = document;
			var colName = new lowColumn("no", "name", "issueDate", "agency");
			var targetTable = new lowColumn("l-idx", "l-name", "l-issueDate", "l-agency");
			var len = licInfo.length;
			for(var i = 1; i <= len; i++){
				d.querySelector("#" + targetTable.clm2 + i).value = licInfo[i-1][colName.clm2];
				d.querySelector("#" + targetTable.clm3 + i).value = licInfo[i-1][colName.clm3];
				d.querySelector("#" + targetTable.clm4 + i).value = licInfo[i-1][colName.clm4];
				if(i != len)
				d.querySelector("#l-low-add").click();
			}
		}
		
		var getCarInfo = function(carInfo){
			var d = document;
			var colName = new lowColumn("no", "name", "work", "period");
			var targetTable = new lowColumn("c-idx", "c-name", "c-work", "c-period");
			var len = carInfo.length;
			for(var i = 1; i <= len; i++){
				d.querySelector("#" + targetTable.clm2 + i).value = carInfo[i-1][colName.clm2];
				d.querySelector("#" + targetTable.clm3 + i).value = carInfo[i-1][colName.clm3];
				d.querySelector("#" + targetTable.clm4 + i).value = carInfo[i-1][colName.clm4];
				if(i != len)
				d.querySelector("#c-low-add").click();
			}
		}
		
		var success = function(res){
			getEmpInfo(res.empInfo);
			getFamInfo(res.famInfo);
			getSchInfo(res.schInfo);
			getLicInfo(res.licInfo);
			getCarInfo(res.carInfo);
		}

		var url = "emp/employee";
		var param = "?empCode=" + <%=empCode%>;
		var url = url + param;
		var conf = new configuration("GET", null, url , success, null);
		ajax(conf);
	}
	
	/******************************* Modal 관련 functions****************************/
	
	/*
		Modal 공통 ajax방식 List조회 function 
	*/
	function modalSearch(ele) {
		var title = ele.title;
		var html = document.querySelector("html");
		var modal = document.querySelector(".modal");
		var titleTarget = document.querySelector(".modal-card-title");
		var searchDeptUrl = "/dept/getDepts";
		var searchDutyUrl = "/base/getCodeInfoList?groupType=POSITION";
		var searchPositiontUrl = "/base/getCodeInfoList?groupType=DUTY";
		
		titleTarget.innerText = title;
		
		html.classList.add("is-clipped");
		modal.classList.add("is-active");
		
		if(title == '부서검색'){
			var suc = function(rs){
				modal.setAttribute("target", "dept");
				copyList = rs;
				pagination();
			};
			var conf = new configuration("GET", null, searchDeptUrl, suc);
		
		}else if(title == '직위검색'){
			var suc = function(rs){
				modal.setAttribute("target", "position");
				copyList = rs;
				pagination();
			}
			var conf = new configuration("GET", null, searchDutyUrl, suc);
		
		}else if(title = '직책검색'){
			var suc = function(rs){
				modal.setAttribute("target", "duty");
				copyList = rs;
				pagination();
			}
			var conf = new configuration("GET", null, searchPositiontUrl, suc);
		}
		
		ajax(conf);
	}

	function modalClose() {
		$("html").removeClass("is-clipped");
		$(".modal").removeClass("is-active");
	}
	
	/*
		Modal에서 코드 선택시 해당 코드 input box에 적용시키는 function
	*/
	
	function apply(target, ele){ 
		var d = document;
		
		if(target == 'dept'){
			d.querySelector('#deptCode').value = ele.children[0].innerText;
			d.querySelector("#deptName").value = ele.children[1].innerText;
		}else if (target == 'duty'){
			d.querySelector('#dutyName').value = ele.children[2].innerText;
			d.querySelector('#duty').value = ele.children[1].innerText;
		}else if (target == 'position'){
			d.querySelector("#positionName").value = ele.children[2].innerText;
			d.querySelector("#position").value = ele.children[1].innerText;
		}
		modalClose();
	}
	
	function searchDept(){
		var target = document.querySelector('#targetDept').value;
		
		var suc = function(rs){
			copyList = rs;
			pagination();
		}
		var conf = new configuration("GET", null, "/dept/getDept?deptName=" + target, suc, null);
		ajax(conf);
	}
	
	/*
		Modal List pagination 공통 function
	*/
	function pagination(nowNum){
		var nNum = !nowNum||nowNum<=1?1:nowNum;
		var lNum = nNum*10; 
		var sNum = lNum-9; 
		var len = copyList.length;
		var realEnd = len/10; 
		if(lNum >= len) lNum = len;
		var lbtn = len/10; 
		var sbtn = Math.floor((nNum-1)/10) * 10 + 1;
		drawList(sNum, lNum, nNum, sbtn, lbtn);
	}
		
	/*
		Modal List출력 공통 function
	*/
	function drawList(sNum, lNum, nNum, sbtn, lbtn){
		var target = document.querySelector(".modal").getAttribute("target");
		var d = document;
		
		if(target == 'dept'){
		
			var columns = new lowColumn("부서코드", "부서명", "상위부서", "부서생성일");
			var colList = new lowColumn("deptCode", "deptName", "parentDept", "appointDate");
		
		}else if(target == 'position'){
			
			var columns = new lowColumn("그룹타입", "직위코드", "직위명");
			var colList = new lowColumn("groupType", "code", "codeName");
		
		}else if(target == 'duty'){
			
			var columns = new lowColumn("그룹타입", "직책코드", "직책명");
			var colList = new lowColumn("groupType", "code", "codeName");
		}
		
		var pHTML = "";
		var HTML = "<input type='text' class='input max15' id= 'targetDept'><button class='button' onclick = 'searchDept()'>검색</button>";
		HTML = HTML + "<table class='table is-hoverable is-fullwidth' id= 'modalDataTable'>";
		HTML = HTML + 	"<tr>";
		HTML = HTML + 		"<th>"+columns.clm1+"</th>";
		HTML = HTML + 		"<th>"+columns.clm2+"</th>";
		HTML = HTML + 		"<th>"+columns.clm3+"</th>";
		if(colList.clm4){
			HTML = HTML + 	"<th>"+columns.clm4+"</th>";
		}
		HTML = HTML + 	"</tr>";
		
		for(var i = sNum-1; i < lNum ; i++){
			
			HTML = HTML + 	"<tr onclick = \"apply('"+target+"', this)\">";
			HTML = HTML + 		"<td>"+copyList[i][colList.clm1]+"</td>";
			HTML = HTML + 		"<td>"+copyList[i][colList.clm2]+"</td>";
			HTML = HTML + 		"<td>"+copyList[i][colList.clm3]+"</td>";
			if(colList.clm4){
				HTML = HTML + 	"<td>"+copyList[i][colList.clm4]+"</td>";
			}
			HTML = HTML + 	"</tr>";
		}
		HTML = HTML + "</table>";
		
		if(sbtn >10){
			pHTML += "<a onclick = 'pagination("+ (sbtn-1) +")' class='pagination-previous'>prev</a>";
		}
		
		pHTML += "<ul class='pagination-list'>";
		for(var i = sbtn; i <= lbtn; i++){
			if(i%10==0) {
				pHTML += "<li><a class= 'pagination-link' onclick = 'pagination("+i+")'>" + i + "</a></li>";	
				pHTML += "<a onclick = 'pagination("+(i+1)+")' class='pagination-next'>next</a>";	
				break;
			}
			pHTML += "<li><a class= 'pagination-link' onclick = 'pagination("+i+")'>" + i + "</a></li>";	
		}

		var pagin = document.querySelector("#pagin");
		var body = document.querySelector(".modal-card-body");
		
		body.innerHTML = HTML;
		pagin.innerHTML = pHTML;
	}
	
	/******************************* Profile 사전 관련 functions****************************/
	
	
	function fileInput() {
		document.querySelector('#real-input').click();
	}

	function setThumbnail(event) {
		var reader = new FileReader();
		var file = event.target.files[0];
		reader.onload = function(event) {
			if (!event.target.result.startsWith("data:image")) {
				alert('이미지파일이 아닙니다.');
				return;
			}
			
			var imgDate = event.target.result;
			var layout = document.querySelector('.pic-rayout');
			var img = document.createElement("img");
			
			img.setAttribute("src", event.target.result);
			layout.innerHTML = '';
			layout.appendChild(img);
		};
		reader.readAsDataURL(file);
	}
	
	/******************************* validatin function****************************/
	
	
		function validation(checkList, checkListName){
		var doubleCheck = document.querySelector('#doubleCheck');
		var doubleChkCls = doubleCheck.className.split(" ");
		
		for(var cls in doubleChkCls){
			
			if(doubleChkCls[cls] == 'double-false'){
				alert('사번 중복확인을 먼저 해주세요.');
				return false;
			}
		}
		
		
		for(var chk in checkList){
			var chkName = "#"+checkList[chk];
			var target = document.querySelector(chkName); 
			var value = target.value.trim();
			var minlength = target.getAttribute("minlength");
			
			if(value == ''){
				alert(checkListName[chk] + '의 값을 입력해주세요.');
				return false;
			}
			
			if(value.length < minlength){
				alert(checkList[chk] + '의 최소 길이는 ' + minlength + '자리 입니다');
				return false;
			}
		}
		
	}
	
	function doubleCheck(){
		var empCode = document.querySelector('#empCode').value
		var doubleCheck = document.querySelector('#doubleCheck');
		
		var success = function(res){
			if(!res){
				alert('이미 존재하는 사번입니다.');
				doubleCheck.classList.add("double-false");
				console.log(doubleCheck.classList);
			}else{
				alert('사용 가능한 사번입니다.');
				console.log(doubleCheck.classList);
				doubleCheck.classList.remove("double-false");
			}
		}
		
		var conf = new configuration('GET', null, "/emp/doubleCheck?empCode=" + empCode, success);
		ajax(conf);
	}
	
	
	
	/*
		하단 add on  정보들을 show & hide 시켜주는 function
	*/
	
	function showInfo(ele){
		var target = $("."+ele.id);
		var classList = target.attr("class").split(/\s+/);
		var chk;
		var element = $("#"+ele.id);
		
		for(var cls in classList){
			if(classList[cls] == "show"){
				chk = true;
			}
		}
		
		if(chk){
			target.hide();
			target.removeClass("show");
			element.removeClass("bold");
		}else{
			target.show();
			target.addClass("show");
			element.addClass("bold")
		}
	}
	
	
	/*
		하단 add on 정보 줄 추가 function
	*/
	
	function addLow(ele){
		var d = document;
		var columns;
		var target = ele.name.slice(0,1);
		var targetCls = "." + target + "-body";
		var targetId = "#" + target + "-low-add";
		var setName;
		
		if(target == 'f') { //fam
			columns = new lowColumn("f-idx", "f-name", "f-birth", "f-rel");
		}else if(target == 's'){ //school
			columns = new lowColumn("s-idx", "s-name", "s-major", "s-period");
		}else if(target == 'l'){ //license
			columns = new lowColumn("l-idx", "l-name", "l-issueDate", "l-agency");
		}else if(target == 'c'){ //career
			columns = new lowColumn("c-idx", "c-name", "c-work", "c-period");
		}
		
		var lowIdx = ele.name.slice(-1);
		
		if(lowIdx >= 5){
			alert('최대 5줄까지 작성 가능합니다.');
			return;
		}
		
		var tbody = d.querySelector(targetCls);
		var nextIdx = Number(lowIdx) + 1 ;
		var newTr = d.createElement("tr");
		var newTd1 = d.createElement("td");
		var newTd2 = d.createElement("td");
		
		newTd2.setAttribute("id", columns.clm1 + nextIdx);
		newTd2.innerText = nextIdx;
		
		newTr.appendChild(newTd1);
		newTr.appendChild(newTd2);
		
		for(var i = 2 ; i <= 4 ; i ++){
			var newTd = d.createElement("td");
			var newInput = d.createElement("input");
			
			newInput.setAttribute("class", "input");
			newInput.setAttribute("id", columns["clm"+i] + nextIdx);
			
			newTd.appendChild(newInput);
			newTr.appendChild(newTd);
		}
		
		tbody.appendChild(newTr);
		
		setName = target + "-low-" + nextIdx;
		d.querySelector(targetId).setAttribute("name", setName);
	}
	
	/*
		empRegist 등록 function
	*/
	function send(){
		var data = {};
		var empList = [];
		var empInfo = {};
		var d = document;
		var formData = new FormData();
		
		var checkList = 
			['empCode'
			,'empNameKor'
			,'empNameEng'
			,'empNameChi'
			,'deptCode'
			,'phoneNumber'
			,'position'
			,'duty'
			,'startDate'
			,'email'
			, 'empStatus'
			, 'payGubun'
			, 'empType'];
		
		var checkListName = 
			['사번'
			,'이름(한글)'
			,'이름(영어)'
			,'이름(한자)'
			,'부서'
			,'휴대폰번호'
			,'직위'
			,'직책'
			,'입사일'
			,'이메일'
			, '재직상태'
			, '급여구분'
			, '사원구분'];
		
		//if(validation(checkList, checkListName)==false) return;
		
		for(var chk in checkList){
				var target = d.querySelector("#"+checkList[chk]);
				empInfo[checkList[chk]] = target.value.trim();
			}
		empInfo.startDate = empInfo.startDate.replaceAll('-','');
		empList.push(empInfo);
		formData.append("empInfo", JSON.stringify(empList));
		
		/*
		add on info 담기
		*/
		
		var targetList = ['familly', 'school', 'license', 'career'];
			
		for(var num in targetList){
				var objList = [];
				var target = targetList[num];
				
				if(target== 'familly'){
					var colName = new lowColumn("no", "name", "birth", "relation");
					var targetTable = new lowColumn("f-idx", "f-name", "f-birth", "f-rel");
					var len = d.querySelector(".f-body").children.length;
					var objName = 'famInfo';
				}else if(target == 'school'){
					var colName = new lowColumn("no", "name", "major", "period");
					var targetTable = new lowColumn("s-idx", "s-name", "s-major", "s-period");
					var len = d.querySelector(".s-body").children.length;
					var objName = 'schInfo';
				}else if(target == 'license'){
					var colName = new lowColumn("no", "name", "issueDate", "agency");
					var targetTable = new lowColumn("l-idx", "l-name", "l-issueDate", "l-agency");
					var len = d.querySelector(".l-body").children.length;
					var objName = 'licInfo';
				}else if(target == 'career'){
					var colName = new lowColumn("no", "name", "work", "period");
					var targetTable = new lowColumn("c-idx", "c-name", "c-work", "c-period");
					var len = d.querySelector(".c-body").children.length;
					var objName = 'carInfo';
				}
				for(var i = 1 ; i <= len; i ++){
					var objInfo = {};
					objInfo["empCode"] = empInfo.empCode;
					objInfo[colName.clm1] = d.querySelector("#"+targetTable.clm1+i).innerText;
					objInfo[colName.clm2] = d.querySelector("#"+targetTable.clm2+i).value;
					objInfo[colName.clm3] = d.querySelector("#"+targetTable.clm3+i).value;
					objInfo[colName.clm4] = d.querySelector("#"+targetTable.clm4+i).value;
					if(objInfo[colName.clm2] == '' && objInfo[colName.clm3] == '' && objInfo[colName.clm4] == ''){
						continue;
					}
					objList[i-1] = objInfo; 
				}
				formData.append(objName, JSON.stringify(objList));
		}

		var file = document.querySelector("#uploadForm")[0].files[0];
		if(file){
			formData.append("file", file);
		}
		data = formData;
		
		function success(res){
			console.log(res);
			if(res){
				alert('사원등록에 성공하였습니다.');
				//location.href = "/main";
			}else{
				alert('사원등록에 실패했습니다.');
			}
		}
		function err(res){
			alert(res);
		}
		var conf = new configuration('PUT', data, "/emp/employee", success, err);
		ajax(conf); 
			
	}
	
	
	
	function lowColumn(clm1, clm2, clm3, clm4){
		this.clm1 = clm1;
		this.clm2 = clm2;
		this.clm3 = clm3;
		this.clm4 = clm4;
	}
	
	
</script>