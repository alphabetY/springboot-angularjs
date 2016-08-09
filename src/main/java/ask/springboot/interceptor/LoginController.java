package ask.springboot.interceptor;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.apache.log4j.spi.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


/*
@Controller
@RequestMapping("/login")
public class LoginController {

    public static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String loginPage(@RequestParam("next") Optional<String> next) {
        logger.info("next = {}", next);
        return "login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String login(@RequestParam("next") Optional<String> next, HttpSession session) {
        logger.info("next = {}", next);
        session.setAttribute(Constants.USER_SESSION_ATTR, "username");
        return "redirect:".concat(next.orElse("/"));
    }

}

*/