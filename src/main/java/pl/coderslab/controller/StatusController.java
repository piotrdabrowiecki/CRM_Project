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

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.validation.Validator;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/status")
public class StatusController {



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




    @RequestMapping(value = "/addStatus", method = RequestMethod.GET)
    public String addStatus(Model model){

        model.addAttribute("status", new Status());

        return "/status/addStatus";



    }
    @RequestMapping(value = "/addStatus", method = RequestMethod.POST)
    public String saveStatus(@Valid Status status, BindingResult result) {

        if (result.hasErrors()) {

            return "/status/addStatus";

        }


        statusRepository.save(status);

        return "redirect:/status/statuses";



    }

    @RequestMapping(value = "/editStatus", method = RequestMethod.GET)
    public String update(Model model){


        List<Status> statuses = statusRepository.findAll();

        model.addAttribute("statuses", statuses);


        return "/status/editStatus";



    }
    @RequestMapping(value = "/editStatus", method = RequestMethod.POST)
    public String updated(@RequestParam Map<String, String> parameters, Model model){


        for (String param : parameters.keySet()) {
            if (param.startsWith("status")) {
                String id = param.split("-")[1];
                Status status = statusRepository.findOne(Long.valueOf(id));
                String value = parameters.get(param);
                status.setActivity(Boolean.parseBoolean(value));
                statusRepository.save(status);

            }
        }



        return "redirect:/status/statuses";



    }




    @RequestMapping(value = "/statuses", produces = "text/html; charset=utf-8")
    public String viewStatuses(Model model) {

        List<Status> statuses = statusRepository.findAll();

        model.addAttribute("statuses", statuses);

        return "/status/statuses";



    }


    @RequestMapping("/deleteStatus")
    public String deleteStatus(@RequestParam long id){


        Status deleteStatus = statusRepository.findOne(id);

        statusRepository.delete(deleteStatus);


        return "redirect:/status/statuses";



    }
































}
