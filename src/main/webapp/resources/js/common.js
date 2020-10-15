/*
		ajax configuration function 나중에 common.js로 옮겨서 공통으로 사용할 것
	*/
	function configuration(method, data, path, suc, err, header){
		this.method = method;
		this.data = data;
		this.path = path;
		this.suc = suc;
		this.err = err;
		this.header = header;
	}
	
	/*
		ajax function 마찬가지고 나중에 common.js로 옮겨야 함.
	*/
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
						alert('알 수 없는 에러가 발생했습니다.');
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
			console.log(value);
			document.querySelector("#" + key).value = value;
		}
	}
