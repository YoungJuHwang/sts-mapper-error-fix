package com.tob.event;

import java.util.List;

import com.tob.global.Command;
 
public interface EventService {
	public int join(EventVO o);
	public int change(EventVO o);
	public int remove(String evtName);
	public int count();
	public List<EventVO> getList(Command command);
}