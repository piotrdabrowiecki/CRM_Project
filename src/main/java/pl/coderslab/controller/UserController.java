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

import javax.validation.Valid;
import javax.validation.Validator;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {




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



    @ModelAttribute("tasks")
    public List<Task> getTasks(Long id){


        return taskRepository.findByUserId(id);

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







    @RequestMapping(value = "/users", produces = "text/html; charset=utf-8")
    public String viewBooks(Model model) {

        List<User> users = userRepository.findAll();

        model.addAttribute("users", users);

        return "/user/users";



    }



    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String addUser(Model model){

        model.addAttribute("user", new User());

        return "/user/addUser";



    }
    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String saveUser(@Valid User user, BindingResult result) {

        if (result.hasErrors()) {

            return "/user/addUser";

        }

        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));

        userRepository.save(user);




        return "redirect:/user/addUserTasks?id=" + user.getId();


    }

    @RequestMapping(value = "/addUserTasks", method = RequestMethod.GET)
    public String addUserTasks(Model model, @RequestParam long id){

        User user = userRepository.findOne(id);

        model.addAttribute("user", user);






        return "/user/addUserTasks";



    }

    @RequestMapping(value = "/addUserTasks", method = RequestMethod.POST)
    public String saveUserTasks(User user , BindingResult result) {

        User fromDatabase = userRepository.findOne(user.getId());
        for (Task task : user.getTasks()) {
            task.setUser(fromDatabase);
            taskRepository.save(task);
        }
        fromDatabase.setTasks(user.getTasks());

        return "redirect:/user/users";


    }



    @RequestMapping(value = "/editUser", method = RequestMethod.GET)
    public String updateUser(@RequestParam long id, Model model){


        User editUser = userRepository.findOne(id);

        model.addAttribute("editUser", editUser);


        return "/user/editUser";



    }
    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String updatedUser(@ModelAttribute User user, Model model){


        userRepository.save(user);


        return "redirect:/user/users";



    }

    @RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam long id){


        User deleteUser = userRepository.findOne(id);

        userRepository.delete(deleteUser);


        return "redirect:/user/users";



    }

















}
