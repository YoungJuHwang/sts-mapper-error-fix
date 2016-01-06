package com.tob.cart;

import org.springframework.stereotype.Component;
  
@Component
public class CartVO {
	private String bookId;
	private String purNum;
	private String userid;
	private int count;
	public String getBookId() {
		return bookId;
	}
	public String getPurNum() {
		return purNum;
	}
	public String getUserid() {
		return userid;
	}
	public int getCount() {
		return count;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public void setPurNum(String purNum) {
		this.purNum = purNum;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
}
