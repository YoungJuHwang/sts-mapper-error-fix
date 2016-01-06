<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<title>Hanbit - words</title>

<!-- Header -->
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="navbar navbar-inverse" id="bs-example-navbar-collapse" >
<div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll"  href="#">
                    <i class="fa fa-play-circle"></i>  <span class="light"><b>TOB</b></span>||Hanbit
                </a>
            </div>
            </div>
	<div class="nav navbar-nav" style="width: 100%">
	<ul class="nav navbar-nav"	style="padding-bottom: 5px; margin: 0 auto; width: 100%">
		<li style="padding-right: 100px;"><a
			href="${context}/main/Home"><b>HOME</b></a></li>
		<li style="padding-right: 100px;"><a
			href="${context}/book/Book"><b>BOOK</b></a></li>    
		<li style="padding-right: 100px;">
		<a href="${context}/event/Event"><b>EVENT</b></a></li>
		<li style="padding-right: 100px;"><a href="${context}/purchase/Purchase"><b>Purchase</b></a></li>
		<li style="padding-right: 100px;"><button id="btn_pur"> 이게 구매버튼 </button></li>
		<li style="float: right"><a href="${context}/admin/main"><span class="glyphicon glyphicon-user"></span>관리자</a></li>
		<li style="float: right"><a href="${context}/member/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		<li style="float: right"><a href="${context}/member/Join">Join</a></li>
	
	</ul>
	</div>
</div>
<script type="text/javascript">
	$(function() {
		$('#btn_pur').click(function() {
			alert('구매버튼 클릭');
			Purchase.main(context);
		});
	});
</script>
