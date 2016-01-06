var book = {
		/*책 전체목록*/
		all : function() {
			$('#book').html('<div class="wrap auto"><div class="mainn"></div><div class="alpha"><font color="red"><strong>국내도서</strong></font><br /><p><p>'
					+'<a href="#" id="social"><font>소설</font></a><br /><p><a href=""><font>자기계발</font></a><br /><p><a href=""><font>컴퓨터</font></a><br /><p>'
					+'<font>베스트셀러</font><br /><p><font>이달의 책</font><br /><p><font>키위밍</font><br /><p><font>월페이퍼</font><br /><p><font>이벤트</font><br />'
					+'<p><font>예약판매</font><br /><p></div>'
					+'<div class="alpha"><font color="red"><strong>외국도서</strong></font><br /><p><p><a href=""><font>인문</font></a><br /><p><a href=""><font>과학</font></a><br />'
					+'<p><a href=""><font>생활</font></a><br /><p><font>베스트셀러</font><br /><p><font>이달의 책</font><br /><p><font>월페이퍼</font><br /><p><font>일본신간잡지'
					+'</font>'
					+'<br /><p><font>일본정지구독잡지</font><br /><p></div><div class="alpha"><font color="red"><strong>eBook</strong></font><br /><p><p><a href=""><font>베스트'
					+'</font></a><br /><p><a href=""><font>신간</font></a><br /><p><a href=""><font>추천</font></a><br /><p><font>무료</font><br /><p><font>이벤트</font><br /><p>'
					+'<font>연재</font><br /><p><font>논문</font><br /><p></div><div class="alpha"><font color="red"><strong>sam</strong></font><br /><p><p><a href=""><font>오늘의'
					+'sam</font></a><br /><p><a href=""><font>신간</font></a><br /><p><a href=""><font>추천</font></a><br /><p><font>베스트셀러</font><br /><p><font>이달의 책</font>'
					+'<br /><p><font>월페이퍼</font><br /><p></div><div class="alpha"><font color="red"><strong>북모닝CEO</strong></font><br /><p><p><font>회원가입안내</font><br />'
					+'<p><font>과학</font><br /><p><font>생활</font><br /><p><font>베스트셀러</font><br /><p><font>이달의 책</font><br /><p><font>월페이퍼</font><br /><p><font>경영학'
					+'원</font><br /><p><font>무료zone</font><br /><p></div><div class="alpha"><font color="red"><strong>음반</strong></font><br /><p><p><a href=""><font>베스트음반'
					+'</font></a><br /><p><a href=""><font>새로나온 음반</font></a><br /><p><a href=""><font>예약음반</font></a><br /><p></div><div class="alpha"><font color="red">'
					+'<strong>문화서비스</strong></font><br /><p><p><font>교보인문학석간</font><br /><p><font>낭독공감</font><br /><p><font>북모닝ceo특강</font><br /><p><font>길 위의 '
					+'인문학</font><br /><p><font>공모전</font><br /><p><font>공지사항</font><br /><p></div><div class="alpha"><font color="red"><strong>북뉴스</strong></font><br />'
					+'<p><p><font>오늘뉴스</font><br /><p><font>스페셜+</font><br /><p><font>인터뷰</font><br /><p><font>연재</font><br /><p><font>북tv</font><br /><p></div><div '
					+'class="alpha"><font color="red"><strong>북로그</strong></font><br /><p><p><font>리뷰</font><br /><p><font>연재</font><br /><p><font>리뷰릴레이</font><br /><p>'
					+'</div><div class="alpha"><font color="red"><strong>마이룸</strong></font><br /><p><p><font>마이리뷰</font><br /><p><font>마이리스트</font><br /><p><font>나의 보'
					+'관함</font><br /><p><font>스토리</font><br /><p></div><div class="alpha"><font color="red"><strong>기프트</strong></font><br /><p><p><font>오늘의 핫 딜</font>'
					+'<br /><p><font>베스트</font><br /><p><font>이벤트</font><br /><p></div><div class="alpha"><font color="red"><strong>주문&배송관리</strong></font><br /><p><p>'
					+'<font>주문/배송내역</font><br /><p><font>나의 문의내역</font><br /><p><font>이벤트 응모내역</font><br /><p><font>회원정보관리</font><br /><p></div><div '
					+'class="alpha"><font color="red"><strong>BLU-RAY/DVD</strong></font><br /><p><p><font>베스트 블루레이</font><br /><p><font>새로나온 블루레이</font><br /><p>'
					+'<font>공지사항</font><br /><p></div></div>'
					);
			$('#social').click(function() {
			book.bookEmpty();
			book.bookSimplePage();
				
			});
		},
		
		bookSimplePage : function() {
			$('#book').html('<div>심플페이지로 넘어가기</div><input type="button" value="다음페이지" id="button">'
					)
					$('#button').click(function() {
						book.bookEmpty();
						book.mainPage();
					});
		},
		
		
	mainPage : function() {
			$('#book').html('<div>ㅠㅜ소눈ㄹ훈ㅇㄹ후ㅡㅜㄴ스ㅜ쇼    상세페이지<div>')
		},
		
		
			
		
		
		
		
		
		
		
		
		/*비우기*/
		bookEmpty : function() {
			$('').appendTo($('#book').empty());
		},
		
		/*실험용 알러트*/
		bookSampleAlert : function() {
			alert('따당')
		}
		
		
}