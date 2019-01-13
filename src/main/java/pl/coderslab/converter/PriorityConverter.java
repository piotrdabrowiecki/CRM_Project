package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.model.Priority;
import pl.coderslab.model.Project;
import pl.coderslab.model.User;
import pl.coderslab.repository.PriorityRepository;
import pl.coderslab.repository.ProjectRepository;
import pl.coderslab.repository.UserRepository;


public class PriorityConverter implements Converter<String, Priority> {


    @Autowired
    private PriorityRepository priorityRepository;


    @Override
    public Priority convert(String s){


        return priorityRepository.findOne(Long.parseLong(s));


    }






}