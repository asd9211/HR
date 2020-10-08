<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div  class="field" style="text-align: center;">
<label class="label">로그인</label>  
</div> 
<div class="columns is-centered">
	<div class="column is-half max30" >
		<div class="field">     
  			<label class="label">ID</label> 
  			<div class="control has-icons-left has-icons-right" >
   			 <input id="id" class="input is-success" type="text" placeholder="ID를 입력해주세요"> 
  			</div>
		</div>
		<div class="field">  
  			<label class="label">Password</label>
  			<input id="password" class="input is-success" type="password" placeholder="Password를 입력해주세요"> 
  			
		</div> 
		<div class="field is-grouped">
  			<div class="control">
    		<button class="button is-link" onclick="login()">Login</button>
  			</div>
  			<div class="control">
    		<button class="button is-link is-light">Cancel</button> 
  			</div>
		</div>
	</div>
</div>
<script>

function login(){
	
}
</script>