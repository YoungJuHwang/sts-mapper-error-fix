<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>전체 회원 목록 페이지</h1>
<script type="text/javascript">
$(function() {
	alert("멤버리스트 ready");
	Admin.memberList('1');
});

var Admin = {
		 memberList : function(pageNo) {
			 
				$.getJSON(context+'/admin/member_list/'+pageNo ,function(data) {
					alert("겟 제이슨 들어갔네");
					var count = data.count;
					var pageNo = data.pageNo; 
					var startPage = data.startPage;
					var groupSize = data.groupSize;
					var lastPage = data.lastPage;
					var totPage = data.totPage;
					var table = "<div id='boardList'><h1 align=center style='color:white;margin-bottom:30px'>회원목록</h1>"
					+"<TABLE id='tab_boardList'>"
					+"<TR ALIGN=CENTER><TD WIDTH=10%><B>번호</B></TD>"
					+"<TD WIDTH=20%><B>아이디</B></TD>"
					+"<TD WIDTH=20%><B>회원명</B></TD>"
					+"<TD WIDTH=30%><B>전화번호</B></TD>"
					+"<TD WIDTH=18%><B>주소</B></TD></TR>";
				   
					$.each(data.list, function(index, value) {
				 table +="<TR><TD WIDTH=10% ALIGN=CENTER>"+(index+1)+"</TD>"
						+"<TD WIDTH=20% ALIGN=CENTER>"+this.id+"</TD>"
						+"<TD WIDTH=20% ALIGN=CENTER><A HREF='BoardContent.jsp'>"+this.name+"</A></TD>"
						+"<TD WIDTH=30% ALIGN=LEFT>"+this.phone+"</TD>"
						+"<TD WIDTH=18% ALIGN=CENTER>"+this.addr+"</TD></TR>"
					});
					
					table += '</TABLE></div>';
					
					var pagination ='<TABLE id="pagination">'
					+'<TR>'
					+'<TD ALIGN=LEFT WIDTH=100>'
					+'<IMG SRC="${img}/btn_new.gif" onClick=""; STYLE=CURSOR:HAND>'
					+'</TD>'
					+'<TD WIDTH=320 ALIGN=CENTER>';
					if (startPage != 1) {
						pagination += '<a href="#" onclick="return Admin2.memberList(1)">'
						+'<IMG SRC="'+img+'/btn_bf_block.gif">&nbsp;'
						+'</a>'
					}
					if ((startPage - groupSize) > 0 ) {
						pagination += '<a href="#" onclick="return Admin2.memberList('+(startPage- groupSize)+')">'
						+'<IMG SRC="'+img+'/btn_bf_page.gif">&nbsp;'
						+'</a>'
					}

					for (var i = startPage; i < lastPage; i++) {
						if (i == pageNo) {
							pagination += '<font style="color: red; font-size: 20px">'
							+i
							+"</font>"
						} else {
							pagination += '<a href="#" onclick="return Admin2.memberList('+i+')">'
							+'<font>'
							+i
							+'</font>'
							+'</a>'
						}	
					}
					
					if ((startPage + groupSize) <= totPage) {
						pagination += '<a href="#" onclick="return Admin2.memberList('+(startPage+groupSize)+')">'
						+'<IMG SRC="'+img+'/btn_nxt_page.gif">&nbsp;'
						+'</a>'	
					}
					pagination +='</TD>';
					
					
					pagination += '<TD WIDTH=200 ALIGN=RIGHT>'
					+'<FORM NAME="memberSearch" action="'+context+'/event/memberSearch/1" style="color: black">'
					+'<SELECT NAME="column" SIZE=1>'
					+'<OPTION VALUE="" SELECTED>선택'
					+'</OPTION>'
					+'<OPTION VALUE="id">ID'
					+'</OPTION>'
					+'<OPTION VALUE="name">이름'
					+'</OPTION>'
					+'<OPTION VALUE="gender">성별'
					+'</OPTION>'
					+'</SELECT>'
					+'<INPUT TYPE=TEXT NAME="keyword" SIZE=10 MAXLENGTH=20>'
					+'<INPUT TYPE=submit value="검색">'
					+'</FORM>'
					+'</TD>'
					+'</TR>'
					+'</TABLE>';
					
					table += pagination;
					$('#content').html(table);
					
				});

		},
		
		 
	memberNotExist : function() {
		var table ='<h1>회원목록</h1><table id="tab_member"><tr><th>아이디</th>';
			table += '<th>이름</th><th>성별</th><th>생년원일</th><th>전화번호</th><th>이메일</th></tr>';
			table += '<tr><td colspan="6"><h2>회원목록이 없습니다.</h2></td></tr></table>';
			$(table).appendTo($('#main_right').empty());
	}
 };
 
</script>


