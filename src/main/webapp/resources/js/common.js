	function configuration(method, data, path, suc, err, header){
		this.method = method;
		this.data = data;
		this.path = path;
		this.suc = suc;
		this.err = err;
		this.header = header;
	}
	
	function lowColumn(clm1, clm2, clm3, clm4, clm5){
		this.clm1 = clm1;
		this.clm2 = clm2;
		this.clm3 = clm3;
		this.clm4 = clm4;
		this.clm5 = clm5;
	}
	
	function ajax(conf){
		var xhr = new XMLHttpRequest();
		xhr.open(conf.method, conf.path);
		if(conf.header == 'json'){
			xhr.setRequestHeader('content-type', 'application/json');
		}
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					var res = JSON.parse(xhr.response);
					conf.suc(res);
				}else{
					if(conf.err){
						conf.err(xhr.response);
					}else{
						alert(xhr.response);
					}
				}
				
			}
		}
		xhr.send(conf.data);
	}
	
	
	
	function goPage(ele, param){
		$("#jb-content").load(ele.id);
		
		if(param){
			var key = param.key;
			var value = param.value;
			document.querySelector("#" + key).value = value;
		}
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
		
		var deptSearchUrl = "/dept/departments";
		var positionSearchUrl = "/base/code-info?group-type=position";
		var dutySearchUrl = "/base/code-info?group-type=duty";
		
		titleTarget.innerText = title;
		
		html.classList.add("is-clipped");
		modal.classList.add("is-active");
		
		if(title == '부서검색'){
			var suc = function(rs){
				modal.setAttribute("target", "dept");
				copyList = rs;
				pagination();
			};
			var conf = new configuration("GET", null, deptSearchUrl, suc, null);
		}else if (title == '상위부서검색'){
			var suc = function(rs){
				modal.setAttribute("target", "parentDept");
				copyList = rs;
				pagination();
			};
			var conf = new configuration("GET", null, deptSearchUrl, suc, null);
		}else if(title == '직위검색'){
			var suc = function(rs){
				modal.setAttribute("target", "position");
				copyList = rs;
				pagination();
			}
			var conf = new configuration("GET", null, positionSearchUrl, suc, null);
		
		}else if(title = '직책검색'){
			var suc = function(rs){
				modal.setAttribute("target", "duty");
				copyList = rs;
				pagination();
			}
			var conf = new configuration("GET", null, dutySearchUrl, suc, null);
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
			if(d.querySelector("#parentDept")) d.querySelector("#parentDept").value = ele.children[2].innerText
			if(d.querySelector("#parentDeptName")) d.querySelector("#parentDeptName").value = ele.children[3].innerText
			if(d.querySelector("#appointDate")) d.querySelector("#appointDate").value = ele.children[4].innerText
		}else if (target == 'parentDept'){
			d.querySelector('#parentDept').value = ele.children[0].innerText;
			d.querySelector("#parentDeptName").value = ele.children[1].innerText;
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
		var conf = new configuration("GET", null, "/dept/department?deptName=" + target, suc, null);
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
		
			var columns = new lowColumn("부서코드", "부서명", "상위부서코드", "상위부서명", "부서생성일");
			var colList = new lowColumn("deptCode", "deptName", "parentDept", "parentDeptName", "appointDate");
		}else if (target == 'parentDept'){
			
			var columns = new lowColumn("부서코드", "부서명", "상위부서", "부서생성일");
			var colList = new lowColumn("deptCode", "deptName", "parentDept", "appointDate");
		}else if(target == 'position'){
			
			var columns = new lowColumn("그룹타입", "직위코드", "직위명");
			var colList = new lowColumn("groupType", "code", "codeName");
		
		}else if(target == 'duty'){
			
			var columns = new lowColumn("그룹타입", "직책코드", "직책명");
			var colList = new lowColumn("groupType", "code", "codeName");
		}
		
		var pHTML = ""; // 검색버튼 공통으로 바꿔야됨.
		var HTML = "<input type='text' class='input max15' id= 'targetDept'><button class='button' onclick = 'searchDept()'>검색</button>";
		HTML = HTML + "<table class='table is-hoverable is-fullwidth' id= 'modalDataTable'>";
		HTML = HTML + 	"<tr>";
		HTML = HTML + 		"<th>"+columns.clm1+"</th>";
		HTML = HTML + 		"<th>"+columns.clm2+"</th>";
		HTML = HTML + 		"<th>"+columns.clm3+"</th>";
		if(colList.clm4){
			HTML = HTML + 	"<th>"+columns.clm4+"</th>";
		}
		if(colList.clm5){
			HTML = HTML + 	"<th>"+columns.clm5+"</th>";
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
			if(colList.clm5){
				HTML = HTML + 	"<td>"+copyList[i][colList.clm5]+"</td>";
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