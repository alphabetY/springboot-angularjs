package ask.springboot;
import javax.servlet.http.Cookie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.boot.web.servlet.ServletComponentScan;
//import org.springframework.boot.web.support.SpringBootServletInitializer;
//import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfig;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;



import freemarker.template.utility.HtmlEscape;
import freemarker.template.utility.XmlEscape;


import javax.servlet.http.HttpSession;



@Controller
@EnableWebMvc
@SpringBootApplication
@EnableAutoConfiguration
@ServletComponentScan


public class Application extends SpringBootServletInitializer {
	//final  String LOGGED_IN = "logged_in";
	
	  @Override
	    protected SpringApplicationBuilder configure(
	            SpringApplicationBuilder application) {
	        return application.sources(Application.class);
	    }
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

  //  @RequestMapping("/")
///  String home() {
//      return "redirect:countries";
// }
    
    /*
    @RequestMapping("/login")
  String login(HttpServletResponse resp,HttpServletRequest req) {
    	
    	req.getSession().setAttribute(LOGGED_IN, true);
    	 // session.setAttribute(LOGGED_IN, true);
    	req.setAttribute("asj", "asj");
    	req.getSession().setAttribute("ask", "ask");
    	String   username  =  req.getParameter("username");
    	String   password =  req.getParameter("password");
    	  Cookie cookie = new Cookie("login",username+"@"+password);  
          cookie.setPath("/");                //如果路径为/则为整个tomcat目录有用  
         // cookie.setDomain(".aaa.com");    //设置对所有*.aaa.com为后缀的域名效  
      
           int time = 1*60*10;    //1秒*60=1分*60分=1小时*24=1天*7=7天  
           cookie.setMaxAge(time);  
         
           resp.addCookie(cookie); 
          
            return "login";
 }
    
    @RequestMapping( "/logout")
    public String logout(HttpServletRequest req, HttpServletResponse resp) {
    	req.getSession().setAttribute(LOGGED_IN, true);
    	//session.removeAttribute(LOGGED_IN);
     
        Cookie cookie = new Cookie("login","");//必须声明一个完全相同名称的Cookie  
        cookie.setPath("/");//路径也要完全相同  
       // cookie.setDomain(".aaa.com");//域也要完全相同  
        cookie.setMaxAge(0);//设置时间为0,以直接删除Cookie  
        resp.addCookie(cookie);  
        
        
        return "redirect:/";
    }

    */
    @RequestMapping("jsp")
    public String welcome(Map<String, Object> model) {
    	

    	 model.put("time", new Date());
    	return "index";
    	
    	
    }

    

}
