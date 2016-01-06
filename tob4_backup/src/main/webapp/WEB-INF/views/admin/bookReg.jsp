<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>책 등록 페이지</h1>
<form name="regBook" id="regBookForm">
<table border="1" style="width:500px;">
	<tr>
		<th>책ID</th>
		<td><input type="text" name="bookId" id="bookId" value="" /> <input type="button" value="중복체크" id="dup_book_btn" /></td>
	</tr>
	<tr>
		<th>책 이름</th>
		<td><input type="text" name="bookName" id="bookName" value="" /></td>
	</tr>
	<tr>
		<th>가격</th>
		<td><input type="text" name="bookPrice" id="bookPrice" value="" /></td>
	</tr>
	<tr>
		<th>작가</th>
		<td><input type="text" name="writer" id="writer" value="" /></td>
	</tr>
	<tr>
		<th>등급</th>
		<td><input type="text" name="grade" id="grade" value="" /></td>
	</tr>
	<tr>
		<th>재고량</th>
		<td><input type="text" name="bookseq" id="bookseq" value="" /></td>
	</tr>
	<tr>
		<th>옵션</th>
		<td><input type="text" name="optionBook" id="optionBook" value="" /></td>
	</tr>
	<tr>
		<th>장르</th>
		<td><input type="text" name="genreId" id="genreId" value="" /></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center;"><input type="button" id="reg_book_btn" value="확인" /><input type="button" value="취소" onclick="form.reset();" /></td>
	</tr>
</table>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
$(function() {
	$("#reg_book_btn").click(function() {
		if($("#bookId").val() == "") {
			alert("책 아이디를 입력하세요s.");
			$("#bookId").focus();
			return false;
		}
		if($("#bookName").val() == "") {
			alert("책이름을 입력하세요.");
			$("#bookName").focus();
			return false;
		}
		if($("#bookPrice").val() == "") {
			alert("가격을 입력하세요.");
			$("#bookPrice").focus();
			return false;
		}
		if($("#writer").val() == "") {
			alert("작가를 입력하세요.");
			$("writer").focus();
			return false;
		}
		if($("#grade").val() == "") {
			alert("등급을 입력하세요.");
			$("grade").focus();
			return false;
		}
		if($("#bookseq").val() == "") {
			alert("재고량을 입력하세요.");
			$("bookseq").focus();
			return false;
		}
		if($("#optionBook").val() == "") {
			alert("옵션를 입력하세요.");
			$("optionBook").focus();
			return false;
		}
		if($("#genreId").val() == "") {
			alert("장르를 입력하세요.");
			$("genreId").focus();
			return false;
		}

		
		$.ajax({
			type:"post",
			data:$("#regBookForm").serialize(),
			dataType:"json",
			url:"${context}/admin/book_reg",
			success: function(data) {
				if(data.result == "success") { 
					alert(data.bookName+"책 등록이 완료 되었습니다.");
					
				} else if(data.result == "chk") { 
					alert("이미 가입된 책ID 입니다.");
					return false;
				} else { 
					alert("책 등록 중 오류가 발생했습니다.");
					return false;
				}
			},
			error: function(e) {
				alert(e);
			}
		});
		
	});	
	
	
	$("#dup_book_btn").click(function() {
		if($("#bookId").val() == "") {
			alert("책 아이디를 입력하세요.");
			$("#bookId").focus();
			return false;
		}	
		
		$.ajax({
			type:"post",
			data:{bookId:$("#bookId").val()},
			dataType:"json",
			url:"${context}/admin/book_reg_chk",
			success: function(data) {
				if(data.result == "fail") { 
					alert("이미 등록된 책 아이디입니다.");
					return false;
				} else {
					alert("등록 가능한 책입니다.");
					$("#bookName").focus();
				}
			},
			error: function(e) {
				alert(e);
			}
		});
		
		
	});
});

</script>
