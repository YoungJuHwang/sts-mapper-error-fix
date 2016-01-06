<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>회원등록 페이지</h1>
<form name="regMember" id="regMemberForm">
<table border="1" style="width:500px;">
	<tr>
		<th>사용자 ID</th>
		<td><input type="text" name="userid" id="userid" value="" /> <input type="button" value="중복체크" id="dup_member_btn" /></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="password" id="password" value="" /></td>
	</tr>
	<tr>
		<th>사용자 이름</th>
		<td><input type="text" name="name" id="name" value="" /></td>
	</tr>
	<tr>
		<th>생일</th>
		<td><input type="text" name="birth" id="birth" value="" /></td>
	</tr>
	<tr>
		<th>성별</th>
		<td><input type="text" name="gender" id="gender" value="" /></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="text" name="email" id="email" value="" /></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td><input type="text" name="phone" id="phone" value="" /></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="addr" id="addr" value="" /></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center;"><input type="button" id="reg_member_btn" value="확인" /><input type="button" value="취소" onclick="form.reset();" /></td>
	</tr>
</table>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
$(function() {
	$("#reg_member_btn").click(function() {
		if($("#userid").val() == "") {
			alert("사용자 아이디를 입력하세요s.");
			$("#userid").focus();
			return false;
		}
		if($("#password").val() == "") {
			alert("비밀번호를 입력하세요.");
			$("#password").focus();
			return false;
		}
		if($("#name").val() == "") {
			alert("사용자 이름을 입력하세요.");
			$("#name").focus();
			return false;
		}
		if($("#gender").val() == "") {
			alert("성별을 입력하세요.");
			$("gender").focus();
			return false;
		}
		if($("#email").val() == "") {
			alert("이메일을 입력하세요.");
			$("email").focus();
			return false;
		}
		if($("#phone").val() == "") {
			alert("핸드폰 번호를 입력하세요.");
			$("phone").focus();
			return false;
		}
		if($("#addr").val() == "") {
			alert("주소를 입력하세요.");
			$("addr").focus();
			return false;
		}

		
		$.ajax({
			type:"post",
			data:$("#regMemberForm").serialize(),
			dataType:"json",
			url:"${context}/admin/member_reg",
			success: function(data) {
				if(data.result == "success") { 
					alert(data.name+"님 회원가입이 완료 되었습니다.");
					
				} else if(data.result == "chk") { 
					alert("이미 가입된 ID 입니다.");
					return false;
				} else { 
					alert("회원가입 중 오류가 발생했습니다.");
					return false;
				}
			},
			error: function(e) {
				alert(e);
			}
		});
		
	});	
	
	
	$("#dup_member_btn").click(function() {
		if($("#userid").val() == "") {
			alert("아이디를 입력하세요.");
			$("#userid").focus();
			return false;
		}	
		
		$.ajax({
			type:"post",
			data:{userid:$("#userid").val()},
			dataType:"json",
			url:"${context}/admin/member_reg_chk",
			success: function(data) {
				if(data.result == "fail") { 
					alert("이미 가입된 아이디입니다.");
					return false;
				} else {
					alert("회원가입 가능한 ID입니다.");
					$("#name").focus();
				}
			},
			error: function(e) {
				alert(e);
			}
		});
		
		
	});
});

</script>



