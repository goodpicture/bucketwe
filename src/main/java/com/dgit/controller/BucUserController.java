package com.dgit.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dgit.domain.BoardVO;
import com.dgit.domain.UserVO;
import com.dgit.persistence.UserDAO;
import com.dgit.service.UserService;

@Controller
@RequestMapping("/user")
public class BucUserController {

	@Inject
	private UserService service;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void getLogin(){
		
		System.out.println("login.get");
	}
	@RequestMapping(value="loginPost", method=RequestMethod.POST)
	public void postLogin(UserVO user, Model model) throws Exception{
		System.out.println("=======================");
		System.out.println(user.getId());
		System.out.println(user.getPw());
		System.out.println("=======================");
		UserVO vo = service.login(user.getId(), user.getPw());
		
		if(vo == null){
			return;
		}
		model.addAttribute("loginVO", vo);
		System.out.println("login.post");
		
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute("login");
		session.invalidate();
		System.out.println("logout");
		return "redirect:/board/listPage";
	}
	@RequestMapping(value="registerUser", method=RequestMethod.GET)
	public String registerUserGet() throws Exception{
		System.out.println("registerUserGet");
		return "user/registerUser";
	}
	
	@RequestMapping(value="registerUser", method=RequestMethod.POST)
	public String registerUserPost(UserVO vo) throws Exception{
		service.createUser(vo);
		System.out.println("register post");
		return "redirect:login";
	}
	@RequestMapping(value="userProfile", method=RequestMethod.GET)
	public String userProfile(@ModelAttribute("id")String id, Model model) throws Exception{
		System.out.println("id+++++++++++"+id);
		
		
		UserVO vo = service.selectUser(id);
		System.out.println(vo);
		model.addAttribute("vo", vo);
		System.out.println(vo);
		return "user/userProfile";
	}
}
