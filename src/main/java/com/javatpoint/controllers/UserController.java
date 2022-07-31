package com.javatpoint.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.javatpoint.beans.User;
import com.javatpoint.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String userlist(Model model) {
		model.addAttribute("list", userService.getAllRecords());
		return "admin";
	}
	
	@RequestMapping("/login")  
    public String login(Model m){  
    	return "login"; 
    }
	
	@RequestMapping("/home")  
    public String home(Model m){  
    	return "home"; 
    }
	
	@RequestMapping(value="/loginCheck", method=RequestMethod.POST)  
    public String loginCheck(HttpSession session, @ModelAttribute("user") User u){  
		String returnURL="";
		
		if (session.getAttribute("login")!=null) {
			session.removeAttribute("login");
		}
		
		User loginvo = userService.getUser(u);
		
		if (loginvo != null){
			System.out.println("login success!");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/login-success";
		}
		else {
			System.out.println("login failed!");
			returnURL = "redirect:/login";
		}
		return returnURL; 
    }
	
	@RequestMapping(value="/login-success")  
    public String login_success(Model m){
    	return "login-success"; 
    }
	
	@RequestMapping(value="/mypage")  
    public String mypage(HttpSession session, Model m){
		User loginvo = (User) session.getAttribute("login");
		String id = loginvo.getId();
		User u=userService.getUserById(id);  
        m.addAttribute("command", u);
        return "mypage";  
    }
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	@RequestMapping("/userform")  
    public String showform(Model m){  
    	m.addAttribute("command", new User());
    	return "userform"; 
    }  
	
	@RequestMapping(value="/adduser", method=RequestMethod.POST)
	public String adduser(@ModelAttribute("user") User user) {
		userService.insertUser(user);
		return "redirect:/login";
	}
	
	@RequestMapping(value="/editform/{id}")  
    public String edit(@PathVariable String id, Model m){  
        User u=userService.getUserById(id);  
        m.addAttribute("command", u);
        return "editform";  
    }  

	@RequestMapping(value="/editusersave",method = RequestMethod.POST)  
    public String editusersave(@ModelAttribute("user") User user){  
        userService.updateUser(user);  
        return "redirect:/mypage";  
    }
	
	@RequestMapping(value="/editadminsave",method = RequestMethod.POST)  
    public String editadminsave(@ModelAttribute("user") User user){  
        userService.updateUser(user);  
        return "redirect:/admin";  
    }

    @RequestMapping(value="/deleteuser/{id}",method = RequestMethod.GET)  
    public String delete(@PathVariable String id){  
        userService.deleteUser(id);  
        return "login"; 
    }   
    
    @RequestMapping(value="/admindelete/{id}",method = RequestMethod.GET)  
    public String admindelete(@PathVariable String id){  
        userService.deleteUser(id);  
        return "redirect:/admin"; 
    }
}
