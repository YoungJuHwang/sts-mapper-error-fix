package com.tob.global;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class GlobalController {
private static final Logger logger = LoggerFactory.getLogger(GlobalController.class);
	
	
@RequestMapping("/") //get방식
	public String main(){
		return "global/main.tiles";
	}


}
