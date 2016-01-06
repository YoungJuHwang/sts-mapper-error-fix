<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="book"></div>

<script src="${js}/book/Book.js"></script>


<script type="text/javascript">
	$(function() {
		book.all();
		
		
		$('#book').css({
			"padding-left" : "25px",
			'margin-left' : '100px',
			'border-collapse' : 'collapse',
			'width' : '950px',
			'min-height': '500px'
		});
	});
</script>