<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div  class="field" style="text-align: center;">
<label class="label">로그인</label>  
</div> 
<div class="columns is-centered">
	<div class="column is-half">
		<div class="field">     
  			<label class="label">사진</label> 
  			<div class="control has-icons-left has-icons-right" >
   			
   			</div>
		</div>
		<div class="field">     
  			<label class="label">이름</label> 
  			<div class="control has-icons-left has-icons-right" >
   			 <input style= "max-width: 300px;" id="id" class="input is-success" type="text" placeholder="ID를 입력해주세요"> 
  			</div>
		</div>

		<div class="field">     
  			<label class="label">사번</label> 
  			<div class="control has-icons-left has-icons-right" >
   			 <input style= "max-width: 300px;" id="id" class="input is-success" type="text" placeholder="ID를 입력해주세요"> 
  			</div>
		</div>
		<div class="field"> 
  			<label class="label">부서</label>
  			<div class="control has-icons-left has-icons-right">
    		<input style= "max-width: 300px;" id="password" class="input is-success" type="password" placeholder="Password를 입력해주세요"> 
  			</div>
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