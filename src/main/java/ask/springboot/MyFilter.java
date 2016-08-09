package ask.springboot;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter(filterName="myFilter",urlPatterns="/*")
public class MyFilter implements Filter {

    @Override
    public void destroy() {
        System.out.println("过滤器销毁");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        System.out.println("执行过滤操作");
        
        HttpServletRequest requ = (HttpServletRequest) request;  
        HttpSession s = requ.getSession();  
        if (s.getAttribute("logged_in") != null) {//如果用户已经登录则直接放行  
            System.err.println("用户已经登录，没有必须要再做自动登录。。。。");  
        } else {  
            Cookie[] cookies = requ.getCookies();  
            if (cookies != null) {  
                for (Cookie ck : cookies) {  
                    if (ck.getName().equals("login")) {// 是否是自动登录。。。。  
                        System.err.println("自动登录成功。。。。。");  
                        String val = ck.getValue();  
                        String[] vals = val.split("@");  
                        s.setAttribute("username", vals[0]); 
                        s.setAttribute("password", vals[1]); 
                    }  
                }  
            }  
        }  
           
        chain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig config) throws ServletException {
        System.out.println("过滤器初始化");
    }

}