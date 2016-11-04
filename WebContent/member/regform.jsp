<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<h2>회원가입양식</h2>
<i>(*)항목은 필수 기입 항목입니다.</i>
<hr/>
<div align="justify">
<form action="/member/regproc.jsp" >
	<ul style="line-height: 2;">
		<li>아이디 <input type="text" name="id" required="required" /></li>
		<li>비밀번호 <input type="password" name="pass"
			required="required" /></li>
		<li>비밀번호재확인 <input type="password" name="repass"
			required="required" /></li>
		<li>이름 <input type="text" name="name" required="required" /></li>
		<li>성별 <input type="radio" name="gender" value="남"
			required="required" />남 <input type="radio" name="gender" value="여"
			required="required" />여</li>
		<li>생년 <select name="birth">
				<%
				for(int i = 1950; i!=2017; i++){
				%>
				<option value="<%=i %>"><%=i %>년</option>
				<%
				}
				%>
				
		</select></li>
	</ul>
	<input type="submit" value="등록" />
</form>
</div>

