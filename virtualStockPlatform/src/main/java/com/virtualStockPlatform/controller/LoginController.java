package com.virtualStockPlatform.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.virtualStockPlatform.entity.User;

@Controller
public class LoginController {
	@GetMapping("/login")
	public String showLogin(Model theModel) {
		// TODO Put theMode for store user info
		return "log-in";
	}
}
