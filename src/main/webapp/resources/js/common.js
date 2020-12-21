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
