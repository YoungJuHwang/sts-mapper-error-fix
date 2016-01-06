<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>이벤트 등록 페이지</h1>
<form name="regEvent" id="regEventForm">
<table border="1" style="width:500px;">
	<tr>
		<th>이벤트ID</th>
		<td><input type="text" name="evtId" id="evtId" value="" /> <input type="button" value="중복체크" id="dup_event_Btn" /></td>
	</tr>
	<tr>
		<th>이벤트 이름</th>
		<td><input type="text" name="evtName" id="evtName" value="" /></td>
	</tr>
	<tr>
		<th>시작 날짜</th>
		<td><input type="text" name="fromDt" id="fromDt" value="" /></td>
	</tr>
	<tr>
		<th>종료 날짜</th>
		<td><input type="text" name="toDt" id="toDt" value="" /></td>
	</tr>
	
	<tr>
		<td colspan="2" style="text-align:center;"><input type="button" id="reg_event_btn" value="확인" /><input type="button" value="취소" onclick="form.reset();" /></td>
	</tr>
</table>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
$(function() {
	$("#reg_event_btn").click(function() {
		if($("#evtId").val() == "") {
			alert("이벤트 아이디를 입력하세요s.");
			$("#evtId").focus();
			return false;
		}
		if($("#evtName").val() == "") {
			alert("이벤트 이름을 입력하세요.");
			$("#evtName").focus();
			return false;
		}
		if($("#fromDt").val() == "") {
			alert("시작 날짜를 입력하세요.");
			$("#fromDt").focus();
			return false;
		}
		if($("#toDt").val() == "") {
			alert("종료날짜를 입력하세요.");
			$("toDt").focus();
			return false;
		}

		
		$.ajax({
			type:"post",
			data:$("#regEventForm").serialize(),
			dataType:"json",
			url:"${context}/admin/event_reg",
			success: function(data) {
				if(data.result == "success") { 
					alert(data.evtName+"이벤트 등록이 완료 되었습니다.");
					
				} else if(data.result == "chk") { 
					alert("이미 가입된 이벤트ID 입니다.");
					return false;
				} else { 
					alert("이벤트 등록 중 오류가 발생했습니다.");
					return false;
				}
			},
			error: function(e) {
				alert(e);
			}
		});
		
	});	
	
	
	$("#dup_event_Btn").click(function() {
		if($("#evtId").val() == "") {
			alert("이벤트 아이디를 입력하세요.");
			$("#evtId").focus();
			return false;
		}	
		
		$.ajax({
			type:"post",
			data:{evtId:$("#evtId").val()},
			dataType:"json",
			url:"${context}/admin/event_reg_chk",
			success: function(data) {
				if(data.result == "fail") { 
					alert("이미 등록된 이벤트 아이디입니다.");
					return false;
				} else {
					alert("등록 가능한 책입니다.");
					$("#evtName").focus();
				}
			},
			error: function(e) {
				alert(e);
			}
		});
		
		
	});
});

</script>



