<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <h2>회원가입양식</h2>
<i>(*)항목은 필수 기입 항목입니다.</i>
<hr/>
	<div align="center">
	
		<hr color="green" width="250">
		<h1> 회 원 가 입</h1>
		<hr color="green" width="250">
	
		<form action="/member/regproc2.jsp">
	
		<table border="1">
			<tr>
				<th width="100">이름(*)</th>
				<td align="center">
					<input type="text" name="name" placeholder="이름" required="required" />
				</td>
			</tr>
			<tr>
				<th width="100">아이디(*)</th>
				<td align="center" >
					<input type="text" name="id" placeholder="아이디" required="required"/>
				</td>
			</tr>
			<tr>
				<th width="100">비밀번호(*)</th>
				<td align="center">
					<input type="password" name="pw" placeholder="비밀번호" required="required"/>
				</td>
			</tr>
			<tr>
				<th width="100">성별(*)</th>
				<td align="center">
					<select name="gender" required="required">
						<option value="남자"> 남자 </option>
						<option value="여자"> 여자 </option>
					</select>
				</td>
			</tr>
			<tr>
				<th width="100">생년월일(*)</th>
				<td align="center">
					<input type="text" name="birth" placeholder="생년월일 YY/MM/DD" required="required"/>
				</td>
			</tr>
			<tr>
				<th width="100">연락처</th>
				<td align="center">
					<input type="tel" name="tel" placeholder="연락처"/>
				</td>
			</tr>
			<tr>
				<th width="100">이메일</th>
				<td align="center">
					<input type="email" name="email" placeholder="이메일"/><br/>
				</td>
			</tr>			
			<tr>
				<th colspan="2">
					<input type="submit" value="가입">
					<input type="button" value="취소">
					</th>
					</tr>
		</table>
		</form>
		
	
	</div>