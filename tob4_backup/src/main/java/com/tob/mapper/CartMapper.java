package com.tob.mapper;

import java.util.List;

import com.tob.cart.CartVO;

public interface CartMapper {
	// C
		public int regist(CartVO o);
		
		//R
		public List<CartVO> getList();
		
		//U
		public int changeCount(int count);
		
		//D
		public int remove(String bookid);
}
