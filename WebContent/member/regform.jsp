<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<h2>ȸ�����Ծ��</h2>
<i>(*)�׸��� �ʼ� ���� �׸��Դϴ�.</i>
<hr/>
<div align="justify">
<form action="/member/regproc.jsp" >
	<ul style="line-height: 2;">
		<li>���̵� <input type="text" name="id" required="required" /></li>
		<li>��й�ȣ <input type="password" name="pass"
			required="required" /></li>
		<li>��й�ȣ��Ȯ�� <input type="password" name="repass"
			required="required" /></li>
		<li>�̸� <input type="text" name="name" required="required" /></li>
		<li>���� <input type="radio" name="gender" value="��"
			required="required" />�� <input type="radio" name="gender" value="��"
			required="required" />��</li>
		<li>���� <select name="birth">
				<%
				for(int i = 1950; i!=2017; i++){
				%>
				<option value="<%=i %>"><%=i %>��</option>
				<%
				}
				%>
				
		</select></li>
	</ul>
	<input type="submit" value="���" />
</form>
</div>

