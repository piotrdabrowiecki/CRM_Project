package pl.coderslab.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.model.Project;
import pl.coderslab.model.Task;
import pl.coderslab.model.User;
import pl.coderslab.repository.*;

import javax.validation.Valid;
import javax.validation.Validator;
import java.util.List;
import java.util.ListIterator;

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

    @ModelAttribute("projectsTasks")
    public List<Task> getTasksByProjectId(Long id){


        return taskRepository.findByProjectId(id);

    }

    @ModelAttribute("users")
    public List<User> getUsers(){


        return userRepository.findAll();

    }


    @ModelAttribute("tasks")
    public List<Task> getTasks(){


        return taskRepository.findAll();

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

    @RequestMapping("/projectDetails")
    public String projectDetails(@RequestParam long id, Model model){

        Project projectDetails = projectRepository.findOne(id);

        model.addAttribute("projectDetails", projectDetails);


        return "/project/projectDetails";



    }


    @RequestMapping("/deleteProject")
    public String deleteProject(@RequestParam long id){


        Project deleteProject = projectRepository.findOne(id);

        projectRepository.delete(deleteProject);


        return "redirect:/project/projects";



    }


    @RequestMapping(value = "/editProject", method = RequestMethod.GET)
    public String update(@RequestParam long id, Model model){


        Project editProject = projectRepository.findOne(id);

        model.addAttribute("editProject", editProject);


        return "/project/editProject";



    }
    @RequestMapping(value = "/editProject", method = RequestMethod.POST)
    public String updated(@ModelAttribute Project project, Model model){



        projectRepository.save(project);


        return "redirect:/project/projects";



    }

    @RequestMapping("/projectTasks")
    public String projectTasks(@RequestParam long id, Model model){

        Project projectTasks = projectRepository.findOne(id);

        model.addAttribute("projectTasks", projectTasks);


        return "/project/projectTasks";



    }




















}
