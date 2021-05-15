package journaldev.api.controller;

import journaldev.business.UserService;
import journaldev.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String viewHomePage() {
        return "index";
    }

    @RequestMapping(value="/list" , method = RequestMethod.GET)
    public String list(Model model) {

        List<User> userList = userService.listAll();
        model.addAttribute("userList", userList);

        return "list_page";
    }

    @RequestMapping(value= "/new", method = RequestMethod.GET)
    public String showNewUserPage(Model model) {
        User user = new User();
        model.addAttribute("user", user);

        return "user_page";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String  create(@ModelAttribute("user") User user) {
        userService.createUser(user);

        return "redirect:/";
    }
}

