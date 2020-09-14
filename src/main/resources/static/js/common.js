
function ajax(conf){
	if(conf.method=='POST'||conf.method=='PUT'){
		$.ajax({
			type:conf.method, 
			url:conf.url,
			dataType:'json',
			contentType: "application/json;charset=UTF-8",
			data: JSON.stringify(conf.data),
			success:function(result){
				conf.callback(result);
			},
			error:function(error){
				var res = error.responseText;
				var sNum = res.indexOf("<title>") + 7;
				var lNum = res.indexOf("</title>");
				alert(res.substring(sNum,lNum));
				
			}
			})
		} else if (conf.method=='GET'){
			$.ajax({type:conf.method, url:conf.url,success:function(result){conf.callback(result);}});
		}
}