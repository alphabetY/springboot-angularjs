package ask.springboot.controller;

/*所有的mvc控制器都在这个类里
 * 
 */


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MainController {
	
	@RequestMapping("toClient")
	public String toClient(){
		return "client" ;
	}
	
	@RequestMapping("register")
	public String gtRegister() {
		return "register";
	}
	
	@RequestMapping("login")
	public String gtLogin() {
		return "login";
	}
	
	//@RequestMapping("demo")
	//public String gtdemo() {
	//	return "demo";
	//}
	
	@RequestMapping("loginServer")
	public ModelAndView login(@RequestParam("username") String username,
			@RequestParam("password") String password) {
		
		ModelAndView modelAndView = new ModelAndView();  
		

		if (username.equals("admin") && password.equals("admin123")) {
			 modelAndView.addObject("name", username);  
			 modelAndView.setViewName("chat");  
		} else {
			modelAndView.setViewName("login");  
			
		}
		return modelAndView;  
	}
	/*
	@RequestMapping(value = "registerServer", method = RequestMethod.POST)
	public ModelAndView gtRegister(@RequestParam("username") String username,
			@RequestParam("password") String password) {
		
		boolean r = ss.register(username, password);
		if (r) {
			 modelAndView.addObject("name", username);  
			 modelAndView.setViewName("chat");  
		} else {
			modelAndView.setViewName("login");  
		}
		return modelAndView;
	}
*/
}
