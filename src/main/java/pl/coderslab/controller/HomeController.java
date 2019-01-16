package pl.coderslab.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.*;
import pl.coderslab.repository.*;

import javax.validation.Validator;
import java.util.List;

@Controller
@RequestMapping("/home")
public class HomeController {


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




    @ModelAttribute("tasks")
    public List<Task> getTasks(){


        return taskRepository.findAll();

    }


    @ModelAttribute("statuses")
    public List<Status> getStatuses(){


        return statusRepository.findAll();

    }

    @ModelAttribute("priorities")
    public List<Priority> getPriorities(){


        return priorityRepository.findAll();

    }




    @ModelAttribute("projects")
    public List<Project> getProjects(){


        return projectRepository.findAll();

    }

    @ModelAttribute("users")
    public List<User> getUsers(){


        return userRepository.findAll();

    }


    @RequestMapping(value = "/home", produces = "text/html; charset=utf-8")
    public String viewHome(Model model) {


        List<Project> projects = projectRepository.findFirst5ByOrderByCreatedDesc();

        model.addAttribute("projects", projects);

        return "/home/home";



    }















}
