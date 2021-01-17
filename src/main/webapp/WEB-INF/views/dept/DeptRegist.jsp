<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="field empRgst" style="text-align: center;">
	<label class="label">부서등록</label> <br>
</div>
<div class="columns is-lefted">
	<div class="column">
		<div class="field">
			<label class="label">부서번호</label>
			<div class="control has-icons-left has-icons-right">
				<input id="deptCode" class="input is-success max15 max15" type="text"
					placeholder="부서코드" maxlength="8" minlength="8">
				<button class="button" class="dobule-false" id="doubleCheck"
					onclick="doubleCheck()">중복확인</button>
			</div>
		</div>

		<div class="field">
			<label class="label">부서명</label>
			<div class="control has-icons-left has-icons-right">
				<input id="empNameKor" class="input is-success max15 max15"
					type="text" placeholder="이름">
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
				<input id="deptName" class="input is-success max15 max15"
					type="text" placeholder="부서" disabled> <input id="deptCode"
					class="input is-success max15 max15" type="hidden" placeholder="부서"
					disabled>
				<button class="button modal-button" id="deptSearch" title="부서검색"
					onclick="modalSearch(this)">검색</button>
			</div>
		</div>

		<div class="field">
			<label class="label">부서생성일</label>
			<div class="control has-icons-left has-icons-right">
				<input id="startDate" class="input is-success max15" type="date"
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

<script>
function doubleCheck(){
	var empCode = document.querySelector('#deptCode').value
	var doubleCheck = document.querySelector('#doubleCheck');
	
	var success = function(res){
		if(!res){
			alert('이미 존재하는 부서코드입니다.');
			doubleCheck.classList.add("double-false");
		}else{
			alert('사용 가능한 부서코드입니다.');
			console.log(doubleCheck.classList);
			doubleCheck.classList.remove("double-false");
		}
	}
	
	var conf = new configuration('GET', null, "/emp/doubleCheck?empCode=" + empCode, success);
	ajax(conf);
}

</script>
