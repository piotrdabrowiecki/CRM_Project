package pl.coderslab.controller;


import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.Priority;
import pl.coderslab.model.Project;
import pl.coderslab.model.Status;
import pl.coderslab.model.User;
import pl.coderslab.repository.*;

import javax.validation.Valid;
import javax.validation.Validator;
import java.util.List;


@Controller
@RequestMapping("/user")
public class RegistrationController {




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



    @RequestMapping(value = "/registerUser", method = RequestMethod.GET)
    public String registerUser(Model model){


        model.addAttribute("user", new User());

        return "/user/registerUser";





    }
    @RequestMapping(value = "/registerUser", method = RequestMethod.POST)
    public String registerUser(@Valid User user, BindingResult result, Model model) {

        if (result.hasErrors()) {

            return "/user/registerUser";

        }

        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));

        userRepository.save(user);

        model.addAttribute(user);

        return "redirect:/user/loginUser?id=" + user.getId();



    }












































}
