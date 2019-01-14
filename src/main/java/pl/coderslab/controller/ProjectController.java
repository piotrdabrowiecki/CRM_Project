package pl.coderslab.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.Project;
import pl.coderslab.model.Task;
import pl.coderslab.model.User;
import pl.coderslab.repository.*;

import javax.validation.Valid;
import javax.validation.Validator;
import java.util.List;

@Controller
@RequestMapping("/project")
public class ProjectController {




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

    @ModelAttribute("projects")
    public List<Task> getTasksByProjectId(Long id){


        return taskRepository.findByProjectId(id);

    }






    @RequestMapping(value = "/addProject", method = RequestMethod.GET)
    public String addProject(Model model){

        model.addAttribute("project", new Project());

        return "/project/addProject";



    }
    @RequestMapping(value = "/addProject", method = RequestMethod.POST)
    public String saveProject(@Valid Project project, BindingResult result) {

        if (result.hasErrors()) {

            return "/project/addProject";

        }


        projectRepository.save(project);

        return "redirect:/project/projects";



    }

    @RequestMapping(value = "/projects", produces = "text/html; charset=utf-8")
    public String viewProjects(Model model) {

        List<Project> projects = projectRepository.findAll();

        model.addAttribute("projects", projects);

        return "/project/projects";



    }




















}
