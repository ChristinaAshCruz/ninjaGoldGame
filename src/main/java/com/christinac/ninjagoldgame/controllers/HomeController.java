package com.christinac.ninjagoldgame.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@SuppressWarnings("unchecked")
	@GetMapping("/")
	public String index(HttpSession session) {
		// setting the default gold amount
		int goldAmount = 0;
		ArrayList<String> actionList = new ArrayList<String>();
		
		// creating default to 0 gold and no activities set
		if (session.getAttribute("goldAmount") == null) {
			session.setAttribute("goldAmount", goldAmount);
			session.setAttribute("actionList", actionList);
		} else {
			goldAmount = (int) session.getAttribute("goldAmount");
			actionList = (ArrayList<String>) session.getAttribute("actionList");
		}
		return "index.jsp";
	}
	
	@SuppressWarnings("unchecked")
	@PostMapping("/find-gold")
	public String findGold(HttpSession session, @RequestParam(value="farm", required=false) String farm, @RequestParam(value="house", required=false) String house, @RequestParam(value="cave", required=false) String cave, @RequestParam(value="quest", required=false) String quest) {
		
		// testing out how much to give each time
		ArrayList<String> actionList = (ArrayList<String>) session.getAttribute("actionList");
		if(farm != null) {
			int goldAmount = (int) session.getAttribute("goldAmount");
			int newGoldAmount = 10;
			session.setAttribute("goldAmount", (goldAmount + newGoldAmount));
			
			actionList.add("Found " + newGoldAmount + " gold in the Farm !");		
			session.setAttribute("actionList", actionList);
		}
		if(house != null) {
			int goldAmount = (int) session.getAttribute("goldAmount");
			int newGoldAmount = 5;
			session.setAttribute("goldAmount", (goldAmount + newGoldAmount));
			
			actionList.add("Found " + newGoldAmount + " gold in the House !");		
			session.setAttribute("actionList", actionList);
		}
		if(cave != null) {
			int goldAmount = (int) session.getAttribute("goldAmount");
			int newGoldAmount = 2;
			session.setAttribute("goldAmount", (goldAmount + newGoldAmount));
			
			actionList.add("Found " + newGoldAmount + " gold in the Cave !");		
			session.setAttribute("actionList", actionList);
		}
		if(quest != null) {
			int goldAmount = (int) session.getAttribute("goldAmount");
			int newGoldAmount = -10;
			session.setAttribute("goldAmount", (goldAmount + newGoldAmount));
			if (newGoldAmount < 0) {
				actionList.add("You lost" + newGoldAmount + " gold during the quest!");		
				session.setAttribute("actionList", actionList);
			} else {
				actionList.add("Found " + newGoldAmount + " gold during the quest!");		
				session.setAttribute("actionList", actionList);
			}
			
		}
		
		return "redirect:/";
	}
	
	// RESET GAME + CLEAR SESSION
	@GetMapping("/reset-game")
	public String resetGame(HttpSession session) {
		session.getAttribute("goldAmount");
		session.setAttribute("goldAmount", 0);
		
		session.getAttribute("actionList");
		ArrayList<String> actionList = new ArrayList<String>();
		session.setAttribute("actionList", actionList);
		return "index.jsp";
	}
}




