<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>ȸ����ȣ : ${DATA.mno}</div>
		<div>ȸ���̸� : ${DATA.name}</div>
		<div>�� �� �� : ${DATA.id}</div>
		<div>ȸ������ : ${DATA.mail}</div>
		<div>ȸ������ : 
			<span>
				<c:if test="${DATA.gen == 'M'}">�� ��</c:if>
				<c:if test="${DATA.gen eq 'F'}">�� ��</c:if>
			</span>
		</div>
		<div>�� �� �� : ${DATA.sdate}</div>
	</div>
</body>
</html>