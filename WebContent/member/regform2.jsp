<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <h2>ȸ�����Ծ��</h2>
<i>(*)�׸��� �ʼ� ���� �׸��Դϴ�.</i>
<hr/>
	<div align="center">
	
		<hr color="green" width="250">
		<h1> ȸ �� �� ��</h1>
		<hr color="green" width="250">
	
		<form action="/member/regproc2.jsp">
	
		<table border="1">
			<tr>
				<th width="100">�̸�(*)</th>
				<td align="center">
					<input type="text" name="name" placeholder="�̸�" required="required" />
				</td>
			</tr>
			<tr>
				<th width="100">���̵�(*)</th>
				<td align="center" >
					<input type="text" name="id" placeholder="���̵�" required="required"/>
				</td>
			</tr>
			<tr>
				<th width="100">��й�ȣ(*)</th>
				<td align="center">
					<input type="password" name="pw" placeholder="��й�ȣ" required="required"/>
				</td>
			</tr>
			<tr>
				<th width="100">����(*)</th>
				<td align="center">
					<select name="gender" required="required">
						<option value="����"> ���� </option>
						<option value="����"> ���� </option>
					</select>
				</td>
			</tr>
			<tr>
				<th width="100">�������(*)</th>
				<td align="center">
					<input type="text" name="birth" placeholder="������� YY/MM/DD" required="required"/>
				</td>
			</tr>
			<tr>
				<th width="100">����ó</th>
				<td align="center">
					<input type="tel" name="tel" placeholder="����ó"/>
				</td>
			</tr>
			<tr>
				<th width="100">�̸���</th>
				<td align="center">
					<input type="email" name="email" placeholder="�̸���"/><br/>
				</td>
			</tr>			
			<tr>
				<th colspan="2">
					<input type="submit" value="����">
					<input type="button" value="���">
					</th>
					</tr>
		</table>
		</form>
		
	
	</div>