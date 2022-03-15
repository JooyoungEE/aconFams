<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>main</title>
<%@ include file="/WEB-INF/views/include/common.jsp" %>

<script type="text/javascript">
$(function(){
	//���̵� �Է°� �����
	$('#userId').on('change', function(){
		//�ߺ�üũ �� �Է°��� ����Ǹ� �ٽ� üũ
		if($('#btn_chkId').prop('disabled')){
			$('#btn_chkId').prop('disabled', false);
		}
	});
});

//���̵� �ߺ� üũ
function idCheck(){
	if(Common.isNull($('#userId'))){
		alert('���̵� �Է����ּ���.');
	}else{
		var params = {
				userId : $('#userId').val()
		}
		Common.ajax('/idCheck', 
				params,
				function(data){
					if(data){
						alert('������� ���̵��Դϴ�.\n�ٸ� ���̵� ������ּ���.');
						$('#userId').focus();
					}else{
						alert('��� ������ ���̵��Դϴ�.');
						$('#btn_chkId').prop('disabled', true);
					}
				});
	}
}
</script>
</head>
<body>
<form id="frm" method="post">
	<div>
		<div>
			<ul>
				<li>���̵�: <input type="text" id="userId" placeholder="���̵� �Է����ּ���." /><button type="button" id="btn_chkId" onclick="javascript:idCheck();">�ߺ�Ȯ��</button></li>
				<li>��й�ȣ: <input type="text" id="userPw" placeholder="��й�ȣ�� �Է����ּ���." /></li>
				<li>��й�ȣȮ��: <input type="text" id="userPw_confirm" placeholder="��й�ȣ�� Ȯ�����ּ���." /></li>
			</ul>
		</div>
	</div>
</form>
</body>
</html>