<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="field empRgst" style="text-align: center;">
	<label class="label">사원등록</label> <br>
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
		<input type="file" id="real-input" class="image_inputType_file"
			accept="img/*" required hidden
			onchange="setThumbnail(event);" />
	</div>
	<div class="column">

		<div class="field">
			<label class="label">사번</label>
			<div class="control has-icons-left has-icons-right">
				<input id="empCode" class="input is-success max15 max15" type="text"
					placeholder="사번" maxlength="8" minlength="8">
				<button class="button" 
					onclick="modalSearch(this)">중복확인</button>
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
				<input id="deptCode" class="input is-success max15 max15"
					type="text" placeholder="부서" disabled>
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
				<input id="position" class="input is-success max15" type="text"
					placeholder="직위" disabled>
				<button class="button modal-button" id="pstionSearch" title="직위검색"
					onclick="modalSearch(this)">검색</button>
			</div>

		</div>

		<div class="field">
			<label class="label">직책</label>
			<div class="control has-icons-left has-icons-right">
				<input id="duty" class="input is-success max15" type="text"
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
					<select class="min15">
						<option>월급제</option>
						<option>연봉제</option>
						<option>시급제</option>
					</select>
				</div>
			</div>
		</div>

		<div class="field">
			<label class="label">사원구분</label>
			<div class="control">
				<div class="select is-primary min15">
					<select class="min15">
						<option>관리사원</option>
						<option>기능사원</option>
					</select>
				</div>
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
				<td >1</td>
				<td><input type="text" class="input"></td>
				<td><input type="text" class="input"></td>
				<td><input type="text" class="input"></td>
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
				<td >1</td>
				<td><input type="text" class="input"></td>
				<td><input type="text" class="input"></td>
				<td><input type="text" class="input"></td>
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
				<td >1</td>
				<td><input type="text" class="input"></td>
				<td><input type="text" class="input"></td>
				<td><input type="text" class="input"></td>
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
				<td >1</td>
				<td><input type="text" class="input"></td>
				<td><input type="text" class="input"></td>
				<td><input type="text" class="input"></td>
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
		<div id="pagin">
		
		</div>
		<footer class="modal-card-foot">
			<button class="button is-success">적용</button>
			<button class="button mdl-close" onclick="modalClose()">취소</button>
		</footer>
	</div>
</div>

<script>
	var copyList= [] ;
	
	function pagination(nowNum){
		var lNum = (!nowNum?1:nowNum)*10;
		var lbtn = (Math.ceil(!nowNum?1:nowNum/10))*10;
		var sNum = lNum-9;
		var realEnd = copyList.length/10;
		var pHTML;
		
		var HTML = "<input type='text' class='input max15' id= 'targetDept'><button class='button' onclick = 'searchDept()'>검색</button>";
		HTML = HTML + "<table class='table is-hoverable is-fullwidth'>";
		HTML = HTML + 	"<tr>";
		HTML = HTML + 		"<th>부서코드</th>";
		HTML = HTML + 		"<th>부서명</th>";
		HTML = HTML + 		"<th>상위부서</th>";
		HTML = HTML + 		"<th>부서생성일</th>";
		HTML = HTML + 	"</tr>";
		
		if(lNum >= copyList.length) lNum = copyList.length;
		
		for(var i = sNum; i < lNum ; i++){
			console.log(copyList[i]);
			HTML = HTML + 	"<tr onclick = 'applyDept(this)'>";
			HTML = HTML + 		"<td>"+copyList[i].deptCode+"</td>";
			HTML = HTML + 		"<td>"+copyList[i].deptName+"</td>";
			HTML = HTML + 		"<td>"+copyList[i].parentDept+"</td>";
			HTML = HTML + 		"<td>"+copyList[i].appointDate+"</td>";
			HTML = HTML + 	"</tr>";
		}

		HTML = HTML + "</table>";
		var body = document.querySelector(".modal-card-body");
		body.innerHTML = HTML;
		
		for(var i = 1; i <= lbtn; i++){
			pHTML += "<button onclick = 'pagination("+i+")'>" + i + "</button>";	
		}
		
		var pagin = document.querySelector("#pagin");
		pagin.innerHTML = pHTML;
		
	}
	function modalSearch(ele) {
		var title = ele.title;
		var target = document.querySelector(".modal");
		var html = document.querySelector("html");
		var titleTarget = document.querySelector(".modal-card-title");
		var body = document.querySelector(".modal-card-body");
		titleTarget.innerText = title;
		html.classList.add("is-clipped");
		target.classList.add("is-active");
		if(title == '부서검색'){
			var suc = function(rs){
				copyList = rs;
				pagination();
			}

			var conf = new configuration("GET", null, "/dept/getDepts", suc, null);
			ajax(conf);
		}else if(title == '직위검색'){
			
		}else if(title = '직책검색'){
			
		}
	}

	function modalClose() {
		$("html").removeClass("is-clipped");
		$(".modal").removeClass("is-active");
	}

	function fileInput() {
		document.querySelector('#real-input').click();
	}

	function setThumbnail(event) {
		var reader = new FileReader();
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
		reader.readAsDataURL(event.target.files[0]);
	}
	
	function validation(checkList, checkListName){
		var chkName;
		var target;
		var value;
		var minlength;
		
		for(var chk in checkList){
			chkName = "#"+checkList[chk];
			target = document.querySelector(chkName); 
			value = target.value.trim();
			minlength = target.getAttribute("minlength");
			
			if(value == ''){
				alert(checkListName[chk] + '의 값을 입력해주세요.');
				return;
			}
			
			if(value.length < minlength){
				alert(checkList[chk] + '의 최소 길이는 ' + minlength + '자리 입니다');
				return;
			}
		}
		
	}
	
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
	
	function lowColumn(clm1, clm2, clm3, clm4){
		this.clm1 = clm1;
		this.clm2 = clm2;
		this.clm3 = clm3;
		this.clm4 = clm4;
	}
	
	function addLow(ele){
		var d = document;
		var columns;
		var target = ele.name.slice(0,1);
		var targetCls = "." + target + "-body";
		var targetId = "#" + target + "-low-add";
		var setName;
		
		if(target == 'f') {
			columns = new lowColumn("f-idx", "f-name", "f-age", "f-rel");
		}else if(target == 's'){
			columns = new lowColumn("s-idx", "s-name", "s-sDate", "s-eDate");
		}else if(target == 'l'){
			columns = new lowColumn("l-idx", "l-name", "l-date", "l-agency");
		}else if(target == 'c'){
			columns = new lowColumn("c-idx", "c-name", "c-sDate", "c-eDate");
		}
		var lowIdx = ele.name.slice(-1);
		
		if(lowIdx >= 5){
			alert('최대 5줄까지 작성 가능합니다.');
			return;
		}
		
		var tbody = d.querySelector(targetCls);
		var nextIdx = Number(lowIdx) + 1 ;
		
		var HTML = 		"<tr>";
		HTML = HTML +		"<td></td>"
		HTML = HTML +		"<td id = "+ columns.clm1 + nextIdx +">"+ nextIdx +"</td>"
		HTML = HTML +		"<td><input type='text' class='input' id = "+ columns.clm2 + nextIdx +"></td>"
		HTML = HTML +		"<td><input type='text' class='input' id = "+ columns.clm3 + nextIdx +"></td>"
		HTML = HTML +		"<td><input type='text' class='input' id = "+ columns.clm4 + nextIdx +"></td>"
		HTML = HTML +	"</tr>"
		
		tbody.innerHTML += HTML;
		
		setName = target + "-low-" + nextIdx;
		
		d.querySelector(targetId).setAttribute("name", setName);
	}
	
	function send(){
		var values = {};
		var d = document;
		
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
			,'email'	];
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
			,'이메일'	];
		
		//validation(checkList, checkListName);
		
		for(var chk in checkList){
				var target = d.querySelector("#"+checkList[chk]);
				values[checkList[chk]] = target.value.trim();
			}
		function success(res){
			console.log(res);
		}
		values.empStatus = 'NORM';
		values.duty = '001';
		values.position = '001';
		values.deptCode = 'D10001';
		values.empType = '001';
		values.payGubun = '001';
		values.startDate = values.startDate.replaceAll('-','');
		var conf = new configuration('POST', values, "/emp/empRegist", success );
		ajax(conf); 
			
	}
	
	function configuration(method, data, path, suc, err){
		this.method = method;
		this.data = JSON.stringify(data);
		this.path = path;
		this.suc = suc;
		this.err = err;
	}
	
	function ajax(conf){
		var xhr = new XMLHttpRequest();
		xhr.open(conf.method, conf.path);
		if(conf.method != 'GET'){
			xhr.setRequestHeader('content-type', 'application/json');
		}
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4 && xhr.status ==200){
				var res = JSON.parse(xhr.response);
				conf.suc(res);
			}
		}
		xhr.send(conf.data);
	}
	
	function applyDept(ele){
		document.querySelector('#deptCode').value = ele.children[0].innerText;
		modalClose();
	}
	function searchDept(){
		var target = document.querySelector('#targetDept').value;
		var body = document.querySelector(".modal-card-body");
		
		var suc = function(rs){
			var HTML = "<input type='text' class='input max15' id= 'targetDept'><button class='button' onclick = 'searchDept()'>검색</button>";
				HTML = HTML + "<table class='table is-hoverable is-fullwidth'>";
				HTML = HTML + 	"<tr>";
				HTML = HTML + 		"<th>부서코드</th>";
				HTML = HTML + 		"<th>부서명</th>";
				HTML = HTML + 		"<th>상위부서</th>";
				HTML = HTML + 		"<th>부서생성일</th>";
				HTML = HTML + 	"</tr>";
				for(var r in rs){
					HTML = HTML + 	"<tr onclick = 'applyDept(this)'>";
					HTML = HTML + 		"<td>"+rs[r].deptCode+"</td>";
					HTML = HTML + 		"<td>"+rs[r].deptName+"</td>";
					HTML = HTML + 		"<td>"+rs[r].parentDept+"</td>";
					HTML = HTML + 		"<td>"+rs[r].appointDate+"</td>";
					HTML = HTML + 	"</tr>";
				}
				HTML = HTML + "</table>";
				body.innerHTML = HTML;
		}
		var conf = new configuration("GET", null, "/dept/getDept?deptName=" + target, suc, null);
		ajax(conf);
	}
	window.onload = function(){
		$(".family").hide();
		$(".school").hide();
		$(".license").hide();
		$(".career").hide();
	}
	
	
</script>