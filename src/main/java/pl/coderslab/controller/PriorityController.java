package pl.coderslab.controller;


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

import javax.validation.Valid;
import javax.validation.Validator;
import java.util.List;

@Controller
@RequestMapping("/priority")
public class PriorityController {



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



    @RequestMapping(value = "/addPriority", method = RequestMethod.GET)
    public String addPriority(Model model){

        model.addAttribute("priority", new Priority());

        return "/priority/addPriority";



    }
    @RequestMapping(value = "/addPriority", method = RequestMethod.POST)
    public String savePriority(@Valid Priority priority, BindingResult result) {

        if (result.hasErrors()) {

            return "/priority/addPriority";

        }


        priorityRepository.save(priority);

        return "redirect:/priority/priorities";



    }


    @RequestMapping(value = "/priorities", produces = "text/html; charset=utf-8")
    public String viewPriorities(Model model) {

        List<Priority> priorities = priorityRepository.findAll();

        model.addAttribute("priorities", priorities);

        return "/priority/priorities";



    }

    @RequestMapping("/deletePriority")
    public String deletePriority(@RequestParam long id){


        Priority deletePriority = priorityRepository.findOne(id);

        priorityRepository.delete(deletePriority);


        return "redirect:/priority/priorities";



    }

























}
