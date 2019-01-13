package pl.coderslab.converter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.model.Task;
import pl.coderslab.model.User;
import pl.coderslab.repository.TaskRepository;
import pl.coderslab.repository.UserRepository;


public class TaskConverter implements Converter<String, Task> {


    @Autowired
    private TaskRepository taskRepository;


    @Override
    public Task convert(String s){


        return taskRepository.findOne(Long.parseLong(s));

    }







}