package com.tob.book;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/book")
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	
	
	@RequestMapping("/Book")
	public String book(){
		logger.info("BookController:Book()");
		return "book/main.tiles";
				
	}
	
	
	
	
	
	
}
