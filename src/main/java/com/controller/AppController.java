package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.table.Complain;
import com.table.Signup;
import jakarta.validation.Valid;

@Controller
public class AppController {
@Autowired
DAO dao;
@GetMapping("/Sinup")
public String add(Model m) {
	Signup si=new Signup();
	m.addAttribute("sin", si);
	return "Sinup";
}
@GetMapping("index.jsp")
public String index() {
	return "redirect:/index.jsp";
}
@PostMapping("/addsave")
public String addsave(@Valid @ModelAttribute("sin") Signup s,BindingResult result,Model model){
	if (result.hasErrors()) {
        // If there are validation errors, return the user back to the form with the errors
  
        return "Sinup";
    }
	dao.sinup(s);
	return "redirect:/index.jsp";
}
@GetMapping("/Login")
public String login(Model m) {
	Signup si=new Signup();
	m.addAttribute("sin", si);
	return "Login";
}
@PostMapping("/Login")
public String valid(@ModelAttribute("sin") Signup s,Model m) {
Signup user =dao.getUserByAdno(s.getAdno());
	 if (user != null && user.getPassword().equals(s.getPassword()) ){
		 m.addAttribute("Myprofile", user);
         return "MyProfile";
     } else {
         // Invalid credentials, return to login page with an error message
         m.addAttribute("error", "Invalid Aadhar number or password");
         return "Login";
     }
}
@GetMapping("/complain/{id}")
public String  complain(@PathVariable("id") long id ,Model m) {
	Complain cm =new Complain();
	Signup user =dao.getUserByAdno(id);
	m.addAttribute("sin", user);
	m.addAttribute("com", cm);
	return "complain";
}
@PostMapping("/Complain")
public String comsave(@Valid @ModelAttribute("com") Complain c) {
	c.setStatus("submit");
dao.fedback(c);
return "redirect:/index.jsp";
}
 
}
