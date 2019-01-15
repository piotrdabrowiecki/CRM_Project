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
@RequestMapping("/task")
public class TaskController {



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


    @RequestMapping(value = "/tasks", produces = "text/html; charset=utf-8")
    public String viewTasks(Model model) {

        List<Task> tasks = taskRepository.findAll();

        model.addAttribute("tasks", tasks);

        return "/task/tasks";



    }


    @RequestMapping(value = "/addTask", method = RequestMethod.GET)
    public String addTask(Model model){

        model.addAttribute("task", new Task());

        return "/task/addTask";



    }
    @RequestMapping(value = "/addTask", method = RequestMethod.POST)
    public String saveTask(@Valid Task task, BindingResult result) {

        if (result.hasErrors()) {

            return "/task/addTask";

        }


        taskRepository.save(task);

        return "redirect:/task/tasks";



    }


    @RequestMapping(value = "/editTask", method = RequestMethod.GET)
    public String update(@RequestParam long id, Model model){


        Task editTask = taskRepository.findOne(id);

        model.addAttribute("editTask", editTask);


        return "/task/editTask";



    }
    @RequestMapping(value = "/editTask", method = RequestMethod.POST)
    public String updated(@ModelAttribute Task task, Model model){


        taskRepository.save(task);


        return "redirect:/task/tasks";



    }


    @RequestMapping("/taskDetails")
    public String taskDetails(@RequestParam long id, Model model){

        Task taskDetails = taskRepository.findOne(id);

        model.addAttribute("taskDetails", taskDetails);


        return "/task/taskDetails";



    }

    @RequestMapping("/deleteTask")
    public String deleteTask(@RequestParam long id){


        Task deleteTask = taskRepository.findOne(id);

        taskRepository.delete(deleteTask);


        return "redirect:/task/tasks";



    }

































}
