package com.tob.event;
 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/event")
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	@Autowired EventServiceImpl service;
	@Autowired EventVO movie;
	
	@RequestMapping("/Event")
	public String event(){
		logger.info("EventController :Event()");
		return "event/Event.tiles";
	}
	@RequestMapping("/join_event1")
	public String joinEvent1(String evtId, String evtName, String fromDt, String toDt){
		logger.info("입력된 이벤트 아이디 "+ evtId);
		logger.info("입력된 이벤트 이름");
		return "event/join_event1";
	}
	@RequestMapping("/event_form")
	public String eventForm(){
		return "event/event_form";
	}
	@RequestMapping("/event_remove")
	public String eventRemove(){
		return "event/event_remove";
	}
	@RequestMapping("/event_update")
	public String eventUpdate(){
		return "event/event_update";
	}
	
	 
	
}
