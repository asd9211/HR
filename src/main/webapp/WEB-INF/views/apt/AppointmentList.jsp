<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="field empRgst" style="text-align: center;">
	<label class="label">인사발령등록</label> <br>
</div>
<article class="message is-info">
	<div class="message-header" style="margin-bottom: 3%;">발령이력조회</div>
	<table class="table">
		<thead>
			<tr>
				<th>No</th>
				<th>사번</th>
				<th>발령구분</th>
				<th>발령일자</th>
				<th>변경내역</th>
			</tr>
		</thead>

	</table>
</article>
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