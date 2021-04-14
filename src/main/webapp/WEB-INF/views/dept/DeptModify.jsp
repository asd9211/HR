<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="field empRgst" style="text-align: center;">
	<label class="label">부서변경</label> <br>
</div>
<div class="columns is-lefted">
	<div class="column">
		<div class="field">
			<label class="label">부서번호</label>
			<div class="control has-icons-left has-icons-right">
				<input id="deptCode" class="input is-success max15 max15"
					type="text" placeholder="부서코드" maxlength="8" minlength="8" disabled>
			</div>
		</div>

		<div class="field">
			<label class="label">부서명</label>
			<div class="control has-icons-left has-icons-right">
				<input id="deptName" class="input is-success max15 max15"
					type="text" placeholder="이름">
					<button class="button modal-button" id="deptSearch" title="부서검색"
					onclick="modalSearch(this)">검색</button>
			</div>
		</div>
		<div class="field">
			<label class="label">비고란</label>
			<div class="control has-icons-left has-icons-right">
				<textarea class="textarea is-info"></textarea>
			</div>
		</div>
	</div>
	<div class="column">
		<div class="field">
			<label class="label">상위부서</label>
			<div class="control has-icons-left has-icons-right">
				<input id="parentDeptName" class="input is-success max15 max15"
					type="text" placeholder="부서" disabled> 
					<input id="parentDept"
					class="input is-success max15 max15" type="hidden" placeholder="부서"
					disabled>
				<button class="button modal-button" id="deptSearch" title="상위부서검색"
					onclick="modalSearch(this)">검색</button>
			</div>
		</div>

		<div class="field">
			<label class="label">부서생성일</label>
			<div class="control has-icons-left has-icons-right">
				<input id="appointDate" class="input is-success max15" type="date"
					placeholder="입사일">
			</div>
		</div>
		<div class="field">
			<label class="label">부서종료일</label>
			<div class="control has-icons-left has-icons-right">
				<input id="endDate" class="input is-success max15" type="date"
					placeholder="입사일">
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
	function doubleCheck() {
		var deptCode = document.querySelector('#deptCode').value
		var doubleCheck = document.querySelector('#doubleCheck');
		if(deptCode.trim() === ''){
			alert("코드를 입력해주세요!");
			return;
		}
		
		var success = function(res) {
			console.log(res);
			if (!res) {
				alert('이미 존재하는 부서코드입니다.');
				doubleCheck.classList.add("double-false");
			} else {
				alert('사용 가능한 부서코드입니다.');
				console.log(doubleCheck.classList);
				doubleCheck.classList.remove("double-false");
			}
		}

		var conf = new configuration('GET', null, "/dept/doubleCheck?deptCode="
				+ deptCode, success);
		ajax(conf);
	}

	/*
	 empRegist 등록 function
	 */

	function send() {
		var data = {};
		var d = document;
		
		var checkList = [ 'deptCode', 'deptName', 'parentDept', 'appointDate' ];

		var checkListName = [ '부서코드', '부서명', '상위부서', '생성일',];

		//if(validation(checkList, checkListName)==false) return;

		for ( var idx in checkList) {
			var target = d.querySelector("#" + checkList[idx]);
			if(target.value.trim() == ''){
				alert(checkListName[idx]+ '를 입력해주세요');
				return;
			}
			data[checkList[idx]] = target.value.trim(); 
		}
		data.appointDate = data.appointDate.replaceAll('-', '');
		function success(res) { 
			if (res) {
				alert('부서등록에 성공하였습니다.');
				//location.href = "/main";
			} else {
				alert('부서등록에 실패했습니다.');
			}
		}

		var conf = new configuration('POST', JSON.stringify(data), "/dept/deptRegist", success, null, 'json');
		ajax(conf);

	}
</script>
