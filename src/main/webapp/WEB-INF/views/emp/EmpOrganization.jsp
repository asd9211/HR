<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="field empRgst" style="text-align: center;">
	<label class="label">조직도</label> <br>
</div>
<div class="columns is-lefted" style="margin-top: 3%;">
	<div id="tree" style="width: 25%;"></div>
	<div class="column margn-l5">
		<div class="field">
			<label class="label">Profile</label>
			<div class="control has-icons-left has-icons-right"></div>
		</div>
		<div class="pic-rayout">
			<p>사진</p>
		</div>
	</div>
	<div class="column">
		<div class="field">
			<label class="label">사번</label>
			<div class="control has-icons-left has-icons-right">
				<input id="empCode" class="input is-success max15 max15" type="text"
					placeholder="사번" maxlength="8" minlength="8">
			</div>
		</div>

		<div class="field">
			<label class="label">이름(한글)</label>
			<div class="control has-icons-left has-icons-right">
				<input id="empNameKor" class="input is-success max15 max15"
					type="text" placeholder="이름">
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
				<input id="empNameChi" class="input is-success max15 max15"
					type="text" placeholder="이름">
			</div>
		</div>

		<div class="field">
			<label class="label">휴대폰번호</label>
			<div class="control has-icons-left has-icons-right">
				<input id="phoneNumber" class="input is-success max15 max15"
					type="text" placeholder="phone" maxlength="11">
			</div>
		</div>

		<div class="field">
			<label class="label">부서</label>
			<div class="control has-icons-left has-icons-right">
				<input id="deptName" class="input is-success max15 max15"
					type="text" placeholder="부서" disabled> <input id="deptCode"
					class="input is-success max15 max15" type="hidden" placeholder="부서"
					disabled>
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
					placeholder="직위" disabled> <input id="positionName"
					class="input is-success max15" type="text" placeholder="직위"
					disabled>
			</div>
		</div>

		<div class="field">
			<label class="label">직책</label>
			<div class="control has-icons-left has-icons-right">
				<input id="duty" class="input is-success max15" type="hidden"
					placeholder="직책" disabled> <input id="dutyName"
					class="input is-success max15" type="text" placeholder="직책"
					disabled>
			</div>
		</div>
		<div class="field">
			<label class="label">재직상태</label>
			<div class="control">
				<div class="select is-primary">
					<select class="min15" id="empStatus">
						<option value="NORM">재직</option>
						<option value="REST">휴직</option>
						<option value="RETR">퇴사</option>
					</select>
				</div>
			</div>
		</div>

		<div class="field">
			<label class="label">입사일</label>
			<div class="control has-icons-left has-icons-right">
				<input id="startDate" class="input is-success max15" type="text"
					disabled placeholder="입사일">
			</div>
		</div>

		<div class="field">
			<label class="label">급여구분</label>
			<div class="control">
				<div class="select is-primary min15">
					<select class="min15" id="payGubun" disabled>
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
					<select class="min15" id="empType" disabled>
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
				<button class="button is-link is-light">뒤로</button>
			</div>
		</div>
	</div>
</div>
<div class="empInfoAddOn">
	<div style="width: 25%; height: 25%; float: left;"></div>
	<table class="table add-on">
		<tr>
			<td id="family" onclick="showInfo(this)">+ 가족사항</td>
			<td id="school" onclick="showInfo(this)">+ 학력</td>
			<td id="license" onclick="showInfo(this)">+ 자격증</td>
			<td id="career" onclick="showInfo(this)">+ 경력사항</td>
		</tr>
	</table>

	<div>
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
						<td><button id="f-low-add" name="f-low-1" class="button"
								onclick="addLow(this)">추가</button></td>
						<td id="f-idx1">1</td>
						<td><input type="text" class="input" id="f-name1" disabled></td>
						<td><input type="text" class="input" id="f-birth1" disabled></td>
						<td><input type="text" class="input" id="f-rel1" disabled></td>
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
						<td><button id="s-low-add" name="s-low-1" class="button"
								onclick="addLow(this)">추가</button></td>
						<td id="s-idx1">1</td>
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
						<td><button id="l-low-add" name="l-low-1" class="button"
								onclick="addLow(this)">추가</button></td>
						<td id="l-idx1">1</td>
						<td><input type="text" class="input" id="l-name1"></td>
						<td><input type="text" class="input" id="l-issueDate1"></td>
						<td><input type="text" class="input" id="l-agency1"></td>
					</tr>
				</tbody>
			</table>
		</div>
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
					<td><button id="c-low-add" name="c-low-1" class="button"
							onclick="addLow(this)">추가</button></td>
					<td id="c-idx1">1</td>
					<td><input type="text" class="input" id="c-name1"></td>
					<td><input type="text" class="input" id="c-work1"></td>
					<td><input type="text" class="input" id="c-period1"></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<script type='text/javascript'>
	
	window.onload = init();
	
	function init(){
		getEmployees();
		$(".family").hide();
		$(".school").hide();
		$(".license").hide();
		$(".career").hide();
		$(".column").hide();
		$(".empInfoAddOn").hide();
	}
	
	function loadOrganization(data) {
		// Attach the dynatree widget to an existing <div id="tree"> element
		// and pass the tree options as an argument to the dynatree() function:
		$("#tree").dynatree({
			onActivate : function(dtnode) {
				if(dtnode.data.empCode){
					getAllInfo(dtnode.data.empCode); 
					$(".column").show();
					$(".empInfoAddOn").show();
				}
			},
			persist : true, 
			children : [ // Pass an array of nodes.
			{
				title : "조직도",
				isFolder : true,
				children : data
			}]
		});
	};

	function getEmployees(){
		var success = function(res){
			getOrganization(res);
		}
		var conf = new configuration("GET", null, "/emp/employees", success, null);
		ajax(conf);
	}
	
	function getOrganization(emps) {
		var success = function(res) {
			var dept = [];
			var emp = [];
			
			for( var idx in emps){
				emp[idx] = {};
				emp[idx]['title'] = emps[idx].empNameKor;
				emp[idx]['empCode'] = emps[idx].empCode;
				emp[idx]['deptCode'] = emps[idx].deptCode;
				
			}
			
			for ( var d in res) {
				dept[d] = {};
				dept[d]['title'] = res[d].deptName;
				dept[d]['deptCode'] = res[d].deptCode;
				dept[d]['parentDept'] = res[d].parentDept;
				dept[d]['level'] = res[d].level;
			};

			dept.sort(function(a, b) {
				return b.level - a.level;
			});
			
			dept.map( (d) => {
				emp.map ( (e) => {
					if(d.deptCode == e.deptCode){
						if (!d['children']) {
							d['children'] = [];
						}
						d['children'].push(e);
					}
				})
			})
			
			var len = dept.length;
			for (var i = 0; i < len; i++) {
				for (var j = 0; j < len; j++) {
					if (i == j)
						continue;
					if (dept[i].deptCode == dept[j].parentDept) {
						dept[i]['isFolder'] = true;
						dept[j]['isFolder'] = true;
						if (!dept[i]['children']) {
							dept[i]['children'] = [];
						}
						dept[i]['children'].push(dept[j]);
						dept.splice(j,1);
						j--;
						i--;
						len--;
					}
				}
			}
			
			loadOrganization(dept);
		}
		var conf = new configuration("GET", null, "/dept/getDeptByLevel", success, null);
		ajax(conf);
	}
	
	/*
	* 개별 사원정보 불러오는 function
	*/
	function getAllInfo(empCode){
		
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
			
			for(chk in checkList){
				d.querySelector('#'+checkList[chk]).value = empInfo[checkList[chk]];		
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
		
		var conf = new configuration("GET", null, "/emp/employee?empCode=" + empCode, success, null);
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
	
	function lowColumn(clm1, clm2, clm3, clm4){
		this.clm1 = clm1;
		this.clm2 = clm2;
		this.clm3 = clm3;
		this.clm4 = clm4;
	}
</script>