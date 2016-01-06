var Purchase = {
		main : function(link) {
			$(".mainView").load(link+"/purchase/Purchase");
		},
		list : function(context) {
			var arr = [];
			$.getJSON(context+'/purchase/list', function(data) {
				alert('list의 겟제이슨 들어옴');
				var table = '<h1> 전체주문 목록</h1>'
					+'<table id="pur_list"><tr><th>주문번호</th><th>합계</th><th>어카운트 넘버</th><th>주문한 아이디</th></tr>';
				$.each(data, function(i, val) {
					table +='<tr><td><a href="#" id="'+this.purNum+'">'+this.purNum+'</a></td>'
					+'<td id = "s'+i+'">'+this.sum+'</td>'
					+'<td id = "a'+i+'">'+this.accountNum+'</td>'
					+'<td id = "u'+i+'">'+this.userid+'</td>';
					arr.push(this.purNum);
				});
				$(table).appendTo($('#pur_wrap').empty());
				
			});
		},
		remove : function() {
			
		}
};