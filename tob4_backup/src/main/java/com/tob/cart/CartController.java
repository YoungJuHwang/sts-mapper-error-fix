package com.tob.cart;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/cart")
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	@Autowired CartVO cart;
	@Autowired CartServiceImpl service;
	
	@RequestMapping("/Cart")
	public String main(){
		logger.info("카트 컨트롤러 - main() 진입");
		return "cart/Cart.jsp";
	}
	
}
