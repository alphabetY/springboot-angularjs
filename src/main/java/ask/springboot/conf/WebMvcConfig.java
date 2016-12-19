/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014-2016 abel533@gmail.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package ask.springboot.conf;



import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.ResourceBundleViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfig;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerView;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;



@EnableWebMvc
@Configuration

public class WebMvcConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**").addResourceLocations("classpath:/static/");
       
        registry.addResourceHandler("/resources/**").addResourceLocations("classpath:/resources/");
        
        registry.addResourceHandler("files/**").addResourceLocations("file:D:/files/");
        
 
    }
   
   // @Override
  //  public void addViewControllers(ViewControllerRegistry registry) {
  //      registry.addViewController("/").setViewName("forward:/index.html");
  //  }

    
   // public void addInterceptors(InterceptorRegistry registry) {
    //    registry.addInterceptor(new LoginInterceptor())
   //             .addPathPatterns("/posts/create");
   // }
    public void configureViewResolvers(ViewResolverRegistry registry) {
		

    	
    	
    	
    	InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		
		viewResolver.setPrefix("/WEB-INF/jsp/");
		viewResolver.setSuffix(".jsp");
		viewResolver.setOrder(1);
		registry.viewResolver(viewResolver);
		
		
		 
		
		  FreeMarkerViewResolver resolver = new FreeMarkerViewResolver();  
	       resolver.setCache(true);  
	        resolver.setPrefix("/templates/");
	        resolver.setSuffix(".ftl");
	        resolver.setExposeRequestAttributes(true);
	        
	        resolver.setExposeSessionAttributes(true);
	        resolver.setExposeSpringMacroHelpers(true);  
	        resolver.setOrder(2);  
	        registry.viewResolver(resolver);
	        
	        
	        
	        
	        
	        
	        
	        
         	}
   
   
    
    
	/*
      @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.enableContentNegotiation(new MappingJackson2JsonView());
        registry.freeMarker().cache(false);
    }
    
    @Bean  
    ViewResolver resourceBundleViewResolver() {  
        
    	ResourceBundleViewResolver resolver = new  ResourceBundleViewResolver();  
       
        //resolver.setViewNames(viewNames);
        resolver.setOrder(0);  
        return resolver;  
  }
    */
 
  /*
    @Bean  
    ViewResolver JspviewResolver() {  
        
	  InternalResourceViewResolver resolver = new InternalResourceViewResolver();  
        resolver.setPrefix("");  
        resolver.setPrefix("/templates/");  
        resolver.setViewNames("*.jsp");
        resolver.setOrder(0);  
        return resolver;  
  }
    */
  /*
    @Bean  
    public ViewResolver freemarkerViewResolver(){  
        FreeMarkerViewResolver resolver = new FreeMarkerViewResolver();  
     
        resolver.setCache(true);  
        resolver.setPrefix("/templates/");
        resolver.setSuffix(".ftl");;
        //if you want to use the Spring FreeMarker macros, set this property to true  
        //resolver.setExposeSpringMacroHelpers(true);  
        resolver.setOrder(1);  
        return resolver;  
    }  
    
  
    @Bean
    public FreeMarkerConfigurer freeMarkerConfigurer() {
        FreeMarkerConfigurer configurer = new FreeMarkerConfigurer();
        configurer.setTemplateLoaderPath("/templates/");
       
        return configurer;
    }
    
*/
    
}
 