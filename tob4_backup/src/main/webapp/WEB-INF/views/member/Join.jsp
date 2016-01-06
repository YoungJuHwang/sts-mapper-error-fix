<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <div class="login">
 <span class="label label-default" style=width:100px; >로그인</span>
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label class="control-label col-sm-2" for="id">아이디:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="userid" placeholder="아이디를 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">비밀먼호:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력해주세요">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> 로그인 상태유지</label>
        </div>
      </div>
    </div>
    <div class="container">
	  <button type="button" class="btn btn-info">로그인</button>   
	</div>
  </form>
</div>
 
 
 <div class="회원가입">
  <span class="label label-default">회원가입</span>
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">아이디:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="아이디를 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">비밀먼호:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">비밀번호 확인:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 재입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">이름:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="이름을 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">생년월일:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="생년월일을 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">성별:</label>
      <div class="col-sm-10">          
        <label class="radio-inline">
      <input type="radio" name="optradio">남
    	</label>
    <label class="radio-inline">
      <input type="radio" name="optradio">여
    	</label>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">이메일:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="이메일을 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">전화번호:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="전화번호를 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">주소:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="주소를 입력해주세요">
      </div>
    </div>
   	<div class="container">
	  <button type="button" class="btn btn-info">회원가입완료</button>   
	  <button type="button" class="btn btn-info">회원가입취소</button>   
	</div>
  </form>
</div>
 
 
 <div class="회원정보수정">
  <span class="label label-default">회원정보수정</span>
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">아이디:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="아이디를 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">비밀먼호:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">비밀번호 확인:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 재입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">이름:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="이름을 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">생년월일:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="생년월일을 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">성별:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="성별 체크버튼">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">이메일:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="이메일을 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd" >전화번호:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="전화번호를 입력해주세요">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">주소:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="주소를 입력해주세요">
      </div>
    </div>
   	<div class="container">
	  <button type="button" class="btn btn-info">정보수정완료</button>   
	  <button type="button" class="btn btn-info">정보수정취소</button>   
	</div>
  </form>
</div>
