package com.heidi.controller;

import com.heidi.controller.action.Action;
import com.heidi.controller.action.MainAction;
import com.heidi.controller.action.ResultMainAction;
import com.heidi.controller.action.ContentQuizAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	public ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		if (command.equals("main")) {
			action = new MainAction();
		} else if (command.equals("content_quiz")) {
			action = new ContentQuizAction();
		} else if (command.equals("result_main")) {
			action = new ResultMainAction();
		}
		return action;
	}

}
