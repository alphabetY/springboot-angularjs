// Copyright (c) 2014 KMS Technology, Inc.
package ask.springboot.security;

import org.springframework.context.annotation.Bean;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * @author trungnguyen
 */
@Order(Ordered.LOWEST_PRECEDENCE - 8)
public class Security extends WebSecurityConfigurerAdapter {
    
	
	
	
	    @Override
	    @Bean
	    public UserDetailsService userDetailsService() {
	        return new UserDetailsService();
	    }

	    @Override  
	    protected void configure(AuthenticationManagerBuilder auth)  
	            throws Exception {  
	        auth.userDetailsService(userDetailsService());  
	    }  
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
        http.httpBasic().and()
            .csrf().disable()
            .authorizeRequests()
            .antMatchers(HttpMethod.GET, "/rest/contacts*/**").permitAll()
            .antMatchers(HttpMethod.GET, "/rest/photos*/**").permitAll()
            .antMatchers("/rest/**").authenticated()
            .anyRequest().permitAll();
    }
}
