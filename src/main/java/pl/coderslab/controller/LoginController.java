package pl.coderslab.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.model.*;
import pl.coderslab.repository.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;
import javax.validation.Valid;
import javax.validation.Validator;
import java.util.Enumeration;
import java.util.List;


@Controller
@RequestMapping("/user")
public class LoginController {




    @Autowired
    Validator validator;


    @Autowired
    private PriorityRepository priorityRepository;


    @Autowired
    private ProjectRepository projectRepository;


    @Autowired
    private StatusRepository statusRepository;


    @Autowired
    private TaskRepository taskRepository;


    @Autowired
    private UserRepository userRepository;





    @ModelAttribute("projects")
    public List<Project> getProjects(){


        return projectRepository.findAll();

    }



    @ModelAttribute("users")
    public List<User> getUsers(){


        return userRepository.findAll();


    }



    @ModelAttribute("statuses")
    public List<Status> getStatuses(){


        return statusRepository.findAll();

    }

    @ModelAttribute("priorities")
    public List<Priority> getPriorities(){


        return priorityRepository.findAll();

    }



    @RequestMapping(value = "/loginUser", method = RequestMethod.GET)
    public String loginUser(Model model, User user){



        model.addAttribute("user", user);

        return "/user/loginUser";





    }
    @RequestMapping(value = "/loginUser", method = RequestMethod.POST)
    public String loginUser(Model model, User user, HttpSession session) {


        String password = user.getPassword();
        String login = user.getLogin();

        User loginUser = userRepository.findByLogin(login);


        String databasePassword = userRepository.findOne(loginUser.getId()).getPassword();

        boolean passwordCheck = BCrypt.checkpw(password, databasePassword);




        if (loginUser != null && passwordCheck && !login.equals("admin")) {

            session.setAttribute("login", user.getLogin());
            session.setAttribute("password", user.getPassword());
            session.setAttribute("user", user);

            return "redirect:/user/loggedUserView?id=" + loginUser.getId();

        }
        else if(login.equals("admin")){


            return "redirect:/admin/admin";

        }
        else{

            model.addAttribute("error", "Błędny login lub hasło");
            return "/user/loginUser";


        }







    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/home/home";





    }
    @RequestMapping("/loggedUserView")
    public String loggedUser(@RequestParam long id, Model model){


        User loggedUser = userRepository.findOne(id);

        model.addAttribute(loggedUser);


        return "/user/loggedUserView";



    }
    @RequestMapping("/userProjects")
    public String userProjects(@RequestParam long id, Model model){


        User loggedUser = userRepository.findOne(id);

        model.addAttribute(loggedUser);


        return "/user/userProjects";



    }

































}
