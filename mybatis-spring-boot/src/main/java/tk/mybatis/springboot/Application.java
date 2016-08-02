package tk.mybatis.springboot;

import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfig;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

import freemarker.template.utility.HtmlEscape;
import freemarker.template.utility.XmlEscape;

/**
 * @author liuzh
 * @since 2015-12-12 18:22
 */
@Controller
@EnableWebMvc
@SpringBootApplication

public class Application extends WebMvcConfigurerAdapter {
    
	/*
	  @Bean  
	    ViewResolver viewResolver() {  
	        
		  InternalResourceViewResolver resolver = new InternalResourceViewResolver();  
	        resolver.setPrefix("/WEB-INF/views/");  
	        resolver.setSuffix(".jsp");  
	        //resolver.setViewNames(viewNames);
	        resolver.setOrder(9);  
	        return resolver;  
	  }
	        @Bean  
	        ViewResolver freemarkerViewResolver(){  
	            FreeMarkerViewResolver resolver = new FreeMarkerViewResolver();  
	            resolver.setCache(true);  
	           resolver.setPrefix("/templates/");  
	            resolver.setSuffix(".ftl");  
	            //if you want to use the Spring FreeMarker macros, set this property to true  
	            //resolver.setExposeSpringMacroHelpers(true);  
	            resolver.setOrder(1);  
	            return resolver;  
	        }  
	      /*    
	        @Bean  
	        FreeMarkerConfig freemarkerConfig(){  
	            FreeMarkerConfigurer config = new FreeMarkerConfigurer();  
	            config.setTemplateLoaderPath("WEB-INF/templates/");  
	            config.setDefaultEncoding("UTF-8");  
	            Map<String,Object> variables = new HashMap<String,Object>();  
	            variables.put("xml_escape", new XmlEscape());  
	            variables.put("html_escape", new HtmlEscape());  
	            config.setFreemarkerVariables(variables);  
	            return config;  
	        }  
	
	*/

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @RequestMapping("/")
    String home() {
       return "redirect:countries";
  }
}
