package pl.coderslab.converter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.model.Project;
import pl.coderslab.model.User;
import pl.coderslab.repository.ProjectRepository;
import pl.coderslab.repository.UserRepository;


public class ProjectConverter implements Converter<String, Project> {


    @Autowired
    private ProjectRepository projectRepository;


    @Override
    public Project convert(String s){


        return projectRepository.findOne(Long.parseLong(s));


    }





}