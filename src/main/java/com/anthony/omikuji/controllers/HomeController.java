package com.anthony.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@GetMapping("/omikuji")
	public String omikujiForm() {
		return "index.jsp";
	}
	@PostMapping("/omikuji/process")
	public String processForm(@RequestParam("years") Integer years, @RequestParam("city") String city, @RequestParam("name") String name, @RequestParam("hobby") String hobby, @RequestParam("animal") String animal, @RequestParam("comment") String comment, HttpSession session) {
		session.setAttribute("years", years);
		session.setAttribute("city", city);
		session.setAttribute("name", name);
		session.setAttribute("hobby", hobby);
		session.setAttribute("animal", animal);
		session.setAttribute("comment", comment);
		return "redirect:/omikuji/show";
	}
	@GetMapping("/omikuji/show")
	public String omikujiShow() {
		return "show.jsp";
	}
}
